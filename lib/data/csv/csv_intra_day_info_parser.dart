import 'package:csv/csv.dart';
import 'package:us_stock_app/data/csv/csv_parser.dart';
import 'package:us_stock_app/data/source/mapper/intra_day_mapper.dart';
import 'package:us_stock_app/data/source/remote/dto/intra_day_info_dto.dart';
import 'package:us_stock_app/domain/model/intra_day_info.dart';

class CsvIntraDayInfoParser implements CsvParser<IntraDayInfo> {
  @override
  List<IntraDayInfo> parseFromCsv(String csv) {
    final parsed = const CsvToListConverter().convert(csv);
    parsed.removeAt(0);

    final converted = parsed.map((e) {
      final timeStamp = e[0]!;
      final close = e[4]!;

      return IntraDayInfoDto(
        timestamp: timeStamp,
        close: close,
      ).toIntraDayInfo();
    }).toList();

    return converted;
  }
}

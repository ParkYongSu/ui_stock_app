import 'package:intl/intl.dart';
import 'package:us_stock_app/data/source/remote/dto/intra_day_info_dto.dart';
import 'package:us_stock_app/domain/model/intra_day_info.dart';

extension ToIntraDayInfo on IntraDayInfoDto {
  IntraDayInfo toIntraDayInfo() {
    final formatter = DateFormat("yyyy-MM-DD HH:mm:ss");
    return IntraDayInfo(
      date: formatter.parse(timestamp),
      close: close,
    );
  }
}

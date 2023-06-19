import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:us_stock_app/domain/model/company_info.dart';
import 'package:us_stock_app/domain/model/intra_day_info.dart';

part 'company_info_state.freezed.dart';

part 'company_info_state.g.dart';

@freezed
class CompanyInfoState with _$CompanyInfoState {
  factory CompanyInfoState({
    CompanyInfo? companyInfo,
    @Default([]) List<IntraDayInfo> stockInfos,
    @Default(false) bool isLoading,
    @Default(null) String? errorMessage,
  }) = _CompanyInfoState;

  factory CompanyInfoState.fromJson(Map<String, dynamic> json) =>
      _$CompanyInfoStateFromJson(json);
}

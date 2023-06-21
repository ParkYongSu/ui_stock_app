import 'package:flutter/material.dart';
import 'package:us_stock_app/domain/repository/stock_repository.dart';
import 'package:us_stock_app/presentation/company_info/company_info_state.dart';

class CompanyInfoViewModel extends ChangeNotifier {
  final StockRepository repository;
  CompanyInfoState _state = CompanyInfoState();

  CompanyInfoViewModel({required this.repository, required String symbol}) {
    _getCompanyInfo(symbol: symbol);
  }

  CompanyInfoState get state => _state;

  Future<void> _getCompanyInfo({required String symbol}) async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    final result = await repository.getCompanyInfo(symbol: symbol);
    result.when(
      success: (info) {
        _state = _state.copyWith(
          companyInfo: info,
          errorMessage: null,
        );
      },
      error: (e) {
        _state = _state.copyWith(
          companyInfo: null,
          errorMessage: e.toString(),
        );
      },
    );

    notifyListeners();

    final intraDayInfo = await repository.getIntraDayInfo(
      symbol: symbol,
      interval: "60min",
      dataType: "csv",
    );

    intraDayInfo.when(
      success: (info) {
        _state = _state.copyWith(
          stockInfos: info.reversed.toList(),
          isLoading: false,
          errorMessage: null,
        );
      },
      error: (e) {
        _state = _state.copyWith(
          stockInfos: [],
          isLoading: false,
          errorMessage: e.toString(),
        );
      },
    );

    notifyListeners();
  }
}

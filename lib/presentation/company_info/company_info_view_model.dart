import 'package:flutter/material.dart';
import 'package:us_stock_app/domain/repository/stock_repository.dart';
import 'package:us_stock_app/presentation/company_info/company_info_state.dart';

class CompanyInfoViewModel extends ChangeNotifier {
  final StockRepository repository;
  CompanyInfoState _state = CompanyInfoState();

  CompanyInfoViewModel({required this.repository});

  CompanyInfoState get state => _state;

  Future<void> getCompanyInfo({required String symbol}) async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    final result = await repository.getCompanyInfo(symbol: symbol);
    result.when(
      success: (info) {
        _state = _state.copyWith(
          companyInfo: info,
          isLoading: false,
        );
      },
      error: (e) {
        _state = _state.copyWith(
          companyInfo: null,
          isLoading: false,
        );
      },
    );

    notifyListeners();
  }
}

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:us_stock_app/domain/repository/stock_repository.dart';
import 'package:us_stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:us_stock_app/presentation/company_listings/company_listings_state.dart';

class CompanyListingsViewModel extends ChangeNotifier {
  final StockRepository repository;
  CompanyListingsState _state = CompanyListingsState();
  Timer? _debounce;

  CompanyListingsViewModel({required this.repository}) {
    _getCompanyListings();
  }

  CompanyListingsState get state => _state;

  void onAction(CompanyListingsAction action) {
    action.when(
      refresh: () {
        _getCompanyListings(fetchFromRemote: true);
      },
      onSearchQueryChanged: (query) {
        _debounce?.cancel();
        _debounce = Timer.periodic(const Duration(milliseconds: 500), (timer) {
          _getCompanyListings(query: query);
          _debounce!.cancel();
        });
      },
    );
  }

  Future<void> _getCompanyListings({
    bool fetchFromRemote = false,
    String query = "",
  }) async {
    _state = _state.copyWith(isLoading: true);
    notifyListeners();

    final result = await repository.getCompanyListing(
      fetchFromRemote: fetchFromRemote,
      query: query,
    );

    result.when(
      success: (listings) {
        _state = _state.copyWith(
          companyListings: listings,
          isLoading: false,
        );
      },
      error: (e) {
        _state = _state.copyWith(isLoading: false);
        print("에러 발생 ${e.toString()}");
      },
    );

    notifyListeners();
  }
}

import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:us_stock_app/domain/repository/stock_repository.dart';
import 'package:us_stock_app/presentation/company_info/company_info_screen.dart';
import 'package:us_stock_app/presentation/company_info/company_info_view_model.dart';
import 'package:us_stock_app/presentation/company_listings/company_listings_action.dart';
import 'package:us_stock_app/presentation/company_listings/company_listings_view_model.dart';

class CompanyListingsScreen extends StatelessWidget {
  const CompanyListingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyListingsViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (String query) {
                  viewModel.onAction(
                    CompanyListingsAction.onSearchQueryChanged(query),
                  );
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Theme.of(context).colorScheme.primary,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  labelText: "검색...",
                  labelStyle: TextStyle(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ),
            ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  viewModel.onAction(const CompanyListingsAction.refresh());
                },
                child: ListView.separated(
                  itemBuilder: (_, index) {
                    final data = state.companyListings[index];
                    return ListTile(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) {
                              final repository =
                                  GetIt.instance<StockRepository>();
                              return ChangeNotifierProvider(
                                lazy: false,
                                create: (_) => CompanyInfoViewModel(
                                  repository: repository,
                                  symbol: data.symbol,
                                ),
                                child: const CompanyInfoScreen(),
                              );
                            },
                          ),
                        );
                      },
                      title: Text(data.name),
                    );
                  },
                  separatorBuilder: (_, __) => Divider(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                  itemCount: state.companyListings.length,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:us_stock_app/presentation/company_info/company_info_state.dart';
import 'package:us_stock_app/presentation/company_info/company_info_view_model.dart';
import 'package:us_stock_app/presentation/company_info/components/stock_chart.dart';

class CompanyInfoScreen extends StatelessWidget {
  const CompanyInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<CompanyInfoViewModel>();
    final state = viewModel.state;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            if (state.isLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
            if (state.errorMessage != null)
              Center(
                child: Text(state.errorMessage!),
              ),
            if (!state.isLoading && state.errorMessage == null)
              _buildBody(context, state: state),
          ],
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context, {required CompanyInfoState state}) {
    final companyInfo = state.companyInfo!;
    final stockInfos = state.stockInfos;

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            companyInfo.name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            companyInfo.symbol,
            style: const TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          const Divider(),
          Text(
            "Industry: ${companyInfo.industry}",
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          Text(
            "Country: ${companyInfo.country}",
            style: const TextStyle(
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const Divider(),
          Text(
            companyInfo.description,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          const SizedBox(height: 16.0),
          const Text(
            "Market Summary",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16.0),
          StockChart(
            infos: stockInfos,
            strokeColor: Theme.of(context).colorScheme.primary,
          ),
        ],
      ),
    );
  }
}

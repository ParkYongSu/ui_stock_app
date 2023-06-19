import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:us_stock_app/data/repository/stock_repository_impl.dart';
import 'package:us_stock_app/data/source/local/company_listing_entity.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:us_stock_app/data/source/local/stock_dao.dart';
import 'package:us_stock_app/data/source/remote/stock_api.dart';
import 'package:us_stock_app/domain/repository/stock_repository.dart';
import 'package:us_stock_app/presentation/company_listings/company_listings_screen.dart';
import 'package:us_stock_app/presentation/company_listings/company_listings_view_model.dart';
import 'package:us_stock_app/util/api.dart';
import 'package:us_stock_app/util/color_schemes.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(CompanyListingEntityAdapter());

  final repository = StockRepositoryImpl(
    api: StockApi(Dio(), baseUrl: baseUrl),
    dao: StockDao(),
  );

  GetIt.instance.registerSingleton<StockRepository>(repository);

  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: lightColorScheme,
        useMaterial3: true,
      ),
      darkTheme: ThemeData(
        colorScheme: darkColorScheme,
        useMaterial3: true,
      ),
      themeMode: ThemeMode.system,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (_) => CompanyListingsViewModel(repository: repository),
          ),
        ],
        child: const CompanyListingsScreen(),
      ),
    ),
  );
}

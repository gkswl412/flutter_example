import 'package:dio/dio.dart';
import 'package:dusty_dust/component/card_title.dart';
import 'package:dusty_dust/component/category_card.dart';
import 'package:dusty_dust/component/hourly_card.dart';
import 'package:dusty_dust/component/main_app_bar.dart';
import 'package:dusty_dust/component/main_card.dart';
import 'package:dusty_dust/component/main_drawer.dart';
import 'package:dusty_dust/component/main_stat.dart';
import 'package:dusty_dust/const/colors.dart';
import 'package:dusty_dust/const/data.dart';
import 'package:dusty_dust/const/status_level.dart';
import 'package:dusty_dust/model/stat_and_status_model.dart';
import 'package:dusty_dust/model/stat_model.dart';
import 'package:dusty_dust/model/status_model.dart';
import 'package:dusty_dust/repository/stat_repository.dart';
import 'package:dusty_dust/utils/data_utils.dart';
import 'package:flutter/material.dart';

import '../const/regions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String region = regions[0];

  Future<Map<ItemCode, List<StatModel>>> fetchData() async {
    Map<ItemCode, List<StatModel>> stats = {};

    List<Future> futures = [];

    for (ItemCode itemCode in ItemCode.values) {
      futures.add(
        StatRepository.fetchData(
          itemCode: itemCode,
        ),
      );
    }

    final results = await Future.wait(futures);

    for (int i = 0; i < results.length; i++) {
      final key = ItemCode.values[i];
      final value = results[i];

      stats.addAll({
        key: value,
      });
    }

    return stats;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      drawer: MainDrawer(
        selectedRegion: region,
        onRegionTap: (String region) {
          setState(() {
            this.region = region;
          });
          Navigator.of(context).pop();
        },
      ),
      body: FutureBuilder<Map<ItemCode, List<StatModel>>>(
          future: fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Center(
                child: Text('에러가 있습니다.'),
              );
            }

            // 로딩상태
            // 로딩상태를 connection state로 처리하면 안됨 : 로딩 인디케이터가 게속 보이는 현상 발생
            if (!snapshot.hasData) {
              return Center(
                child: CircularProgressIndicator(),
              );
            }

            Map<ItemCode, List<StatModel>> stats = snapshot.data!;
            StatModel pm10RecentStat = stats[ItemCode.PM10]![0];

            final status = DataUtils.getStatusFromItemCodeAndValue(
              itemCode: ItemCode.PM10,
              value: pm10RecentStat.seoul,
            );

            final models = stats.keys.map((key) {
              final value = stats[key]!;
              final stat = value[0];
              final status = DataUtils.getStatusFromItemCodeAndValue(
                value: stat.getLevelFromRegion(region),
                itemCode: key,
              );
              return StatAndStatusModel(
                itemCode: key,
                status: status,
                stat: value[0],
              );
            }).toList();

            /*Map<ItemCode, StatusModel> statusPerItemCode={};

            for (var itemCode in ItemCode.values) {
              StatusModel statusModel = DataUtils.getStatusFromItemCodeAndValue(
                value: stats[itemCode]![0].seoul,
                itemCode: itemCode,
              );

              statusModel.value = stats[itemCode]![0].seoul;
              statusPerItemCode[itemCode] = statusModel;
            }

            print(statusPerItemCode.toString());*/

            print(status.toString());
            print(pm10RecentStat.seoul);

            return CustomScrollView(
              slivers: [
                MainAppBar(
                  region: region,
                  stat: pm10RecentStat,
                  status: status,
                ),
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      CategoryCard(region: region, models: models),
                      const SizedBox(
                        height: 16.0,
                      ),
                      HourlyCard(),
                    ],
                  ),
                )
              ],
            );
          }),
    );
  }
}

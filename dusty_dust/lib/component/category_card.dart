import 'package:dusty_dust/component/card_title.dart';
import 'package:dusty_dust/component/main_card.dart';
import 'package:dusty_dust/component/main_stat.dart';
import 'package:dusty_dust/const/colors.dart';
import 'package:dusty_dust/model/stat_model.dart';
import 'package:dusty_dust/model/status_model.dart';
import 'package:dusty_dust/utils/data_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../model/stat_and_status_model.dart';

class CategoryCard extends StatelessWidget {
  final String region;
  final List<StatAndStatusModel> models;

  const CategoryCard({
    required this.region,
    required this.models,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: MainCard(
        child: LayoutBuilder(builder: (context, constraint) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CardTitle(title: '종류별 통계'),
              Expanded(
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    physics: PageScrollPhysics(),
                    children: models
                        .map(
                          (model) => MainStat(
                            category: DataUtils.getItemCodeKrString(
                              itemCode: model.itemCode,
                            ),
                            imgPath: model.status.imagePath,
                            level: model.status.label,
                            stat: '${model.stat.getLevelFromRegion(region)} ${DataUtils.getUnitFromItemCode(itemCode: model.itemCode)}',
                            width: constraint.maxWidth / 3,
                          ),
                        )
                        .toList()
                    /*statusPerItemCode.entries
                      .map<Widget>(
                        (e) {
                          print(e);
                          return MainStat(
                            category: DataUtils.itemCodeKrString(itemCode: e.key),
                            imgPath: e.value.imagePath,
                            level: e.value.label,
                            stat: '${e.value.value} ${DataUtils.getUnitFromItemCode(itemCode: e.key)}',
                            width: constraint.maxWidth / 3,
                          );
                        },
                      )
                      .toList(),*/
                    ),
              )
            ],
          );
        }),
      ),
    );
  }
}

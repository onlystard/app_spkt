import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../core.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class NoticationView extends GetView<NoticationViewController> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [Icon(Icons.search)],
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: TabBar(
                      labelStyle: TextStyle(fontWeight: FontWeight.w700),
                      indicatorSize: TabBarIndicatorSize.label,
                      labelColor: Colors.blueGrey,
                      unselectedLabelColor: Colors.black,
                      isScrollable: true,
                      indicator: MD2Indicator(
                          indicatorHeight: 3,
                          indicatorColor: Colors.blue,
                          indicatorSize: MD2IndicatorSize.full),
                      tabs: [
                        Tab(
                          child: Text('thongbaochung'.tr),
                        ),
                        Tab(
                          child: Text('thongbaohocphan'.tr),
                        ),
                        Tab(
                          child: Text('thongbaototnghiep'.tr),
                        ),
                      ]),
                )
              ],
            ),
          ),
          body: TabBarView(children: [
            ThongbaochungView(),
            ThongbaohocphanView(),
            ThongbaototnghiepView()
          ]),
        ),
      ),
    );
  }
}

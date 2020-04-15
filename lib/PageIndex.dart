

import 'package:common_utils/common_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageIndex extends StatefulWidget{

  @override
  _MyHomePageState createState() {
    // TODO: implement createState
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<PageIndex>{
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text('9527来了'),
            centerTitle: true,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: '全站搜索',
                onPressed: ()=>debugPrint('已经点击了搜索功能'),
              ),
              IconButton(
                icon: Icon(Icons.more_horiz),
                tooltip: '更多',
                onPressed: ()=>debugPrint('已经点击了更多'),
              ),
            ],
            bottom: TabBar(
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_florist)),
                Tab(icon:Icon(Icons.change_history)),
                Tab(icon: Icon(Icons.directions_railway))
              ],
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home),title: Text('首页')),
              BottomNavigationBarItem(icon: Icon(Icons.business),title: Text('业务')),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle),title: Text('我的')),
            ],
            currentIndex: this.selectedIndex,
            fixedColor: Colors.blue,
            onTap: click_item,
          ),
          body: TabBarView(
            children: <Widget>[
              Icon(Icons.local_florist),
              Icon(Icons.change_history),
              Icon(Icons.directions_bike)
            ],
          ),
        )
    );
  }

  void click_item(int itemIndex){
    setState(() {
      this.selectedIndex=itemIndex;
      String nowday=DateUtil.getNowDateStr();
      LogUtil.init(isDebug: true, tag: "test");
      LogUtil.e("${nowday} ...log...index=${selectedIndex}", tag: "test");
      LogUtil.v("${nowday} ...log...index=${selectedIndex}", tag: "test");
    });
  }

}
/**
 * @Description  TODO
 * @Author  zhibuyu
 * @Date 2018/10/10  10:16
 * @Version  1.0
 */
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_amap/flutter_amap.dart';
import 'package:gaode_map/CustomWidget.dart';

void main(){
  FlutterAmap.setApiKey("9a7ceaf825d15a598d7dacac7141670c");
  runApp(new MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {

  FlutterAmap amap = new FlutterAmap();

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Plugin example app'),
        ),
        body: new Center(
          child: new GestureDetector(
          onTap: this.show,
            child: new CustomButton("Show Map"),
          ),
        ),
      ),
    );
  }


  void show(){
    amap.show(
        mapview: new AMapView(
            centerCoordinate: new LatLng(30.3374540000, 120.3439960000),//中心坐标
            zoomLevel: 13.0,//当前缩放级别，取值范围 3, 20
            mapType: MapType.standard,//地图类型
            showsUserLocation: true),//是否显示用户位置
        title: new TitleOptions(title: "我的地图"));
    amap.onLocationUpdated.listen((Location location){

      print("Location changed $location") ;

    });
  }
}
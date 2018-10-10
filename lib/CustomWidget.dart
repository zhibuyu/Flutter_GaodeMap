import 'package:flutter/material.dart';

/**
 * @Description  自定义按钮
 * @Author  zhibuyu
 * @Date 2018/9/28  10:16
 * @Version  1.0
 */
class CustomButton extends StatelessWidget{
  final String label;

  CustomButton(this.label);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new RaisedButton(onPressed: null,child: new Text(label));
  }

}
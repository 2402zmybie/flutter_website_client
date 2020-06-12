import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';
import 'app.dart';
//启动页面
import 'loading.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'flutter_client',
  //自定义主题
  theme: mDefaultTheme,
  //配置路由
  routes: <String,WidgetBuilder>{
    "app": (BuildContext context) => App(),
    "company_info": (BuildContext context) => WebviewScaffold(
      url: 'https://www.baidu.com',
      appBar: AppBar(
        title: Text('公司介绍'),
        leading: IconButton(icon: Icon(Icons.home), onPressed: () {
          //路由回到主页
          Navigator.pushReplacementNamed(context, 'app');
        }),
      ),
    ),
  },
  //指定加载页面
  home: LoadingPage()
));

final ThemeData mDefaultTheme = ThemeData(
  primaryColor: Colors.redAccent
);

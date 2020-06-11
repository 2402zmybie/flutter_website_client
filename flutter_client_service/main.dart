import 'dart:convert';
import 'dart:io';
import 'data.dart';

main() async{
  var requestServer = await HttpServer.bind('192.168.1.108', 8080);
  print('http服务启动');

  //处理请求
  await for(HttpRequest request in requestServer) {
    handleMessage(request);
  }
}

void handleMessage(HttpRequest request) {
  try {
    if(request.method == 'GET') {
      handleGET(request);
    }else if(request.method == 'POST') {
      handlePOST(request);
    }
  }catch(e) {
    print('捕获了一个异常: $e');
  }
}

void handleGET(HttpRequest request) {
  //获取请求参数
  var action = request.uri.queryParameters['action'];
  if(action == 'getProducts') {
    print('获取产品数据');
    //转化为json返回前端
    request.response
      ..statusCode=HttpStatus.ok
      ..write(json.encode(products))
      ..close();
  }
  if(action == 'getNews') {
    print('获取新闻数据');
    request.response
      ..statusCode=HttpStatus.ok
      ..write(json.encode(news))
      ..close();
  }
}

void handlePOST(HttpRequest request) {
  //处理Post请求
}

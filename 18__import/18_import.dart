/**
 *      库的导入：  import '库所在的uri';
 *      导入形式：
 *          1. 来自dart标准版，比如dart:io、dart:html、dart:math、dart:core  但是这个可以省略
 *             import 'dart:io';
 *          2. 使用相对路径导入的库，通常指自己项目中定义的其他dart文件
 *             import 'lib/utils.dart';
 *          3. Pub包管理工具管理的一些库，包括自己的配置以及一些第三方的库，通常使用前缀package
 *             import 'package:flutter/material.dart';
 *      
 *      库的定义： library '库名称';
 *        
 */

import '../22__utils/utils.dart';

main(List<String> args) {
  print(sum(1, 2)); //3
  print(createUtc(2020, 6, 23, 15, 20)); //2020-06-23 15:20:00.000Z
}

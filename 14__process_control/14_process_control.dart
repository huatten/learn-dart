/**
 * 流程控制
 * 注意点：不支持非空即真或者非0即真，必须有明确的bool类型
 */

main(List<String> args) {
  //注意点：不支持非空即真或者非0即真，必须有明确的bool类型
  //var name = 'curry';
  //if (name) {
  //print(name); //Conditions must have a static type of 'bool'.
  //}

  var flag = null;
  if (flag) {
    print('cool!!!');
  }

  //switch
  var direction = 'east';
  switch (direction) {
    case 'east':
      print('东');
      break;
    case 'west':
      print('西');
      break;
    case 'south':
      print('南');
      break;
    case 'north':
      print('北');
      break;
    default:
  }
}

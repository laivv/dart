import 'dart:io';

class Queue<T>{
  List _a = new List<T>();
  //可选参数
  Queue([List<T> args]){
    if(args != null){
      args.forEach((T item){
        _a.add(item);
      });
    }
  }

  T pop(){
    T item = _a[0];
    _a.removeAt(0);
    return item;
  }

  Queue push(T item){
    _a.add(item);
    return this;
  }

  //定义一个getter
  int get length{
    return _a.length;
  }
}



class DateTime{
  String _date;
  String _time;
  DateTime(this._date,this._time);
  String toDateString(){
    return this._date;
  }
  //可省略this
  String toTimeString(){
    return  _time;
  }
  String toDateTimeString(){
    // 模板字符串
    return '$_date $_time';
  }
  String getDescription(){
    return '''
            这是一个多行文本
            这是一个多行文本
          ''';
  }
}

final String str = "运行时常量";
const String str2 = "编译时常量";
//使用var类型推导
var str3 = "123";

//闭包 立即执行
Function number = (){
  int n = 0;
  return () {
    return ++n;
  };
}();

void main(){
  print(new DateTime("2015-12-31", "18:30:55").toDateString());
  print(number());
  print(new Queue<String>().push('123').length);
}


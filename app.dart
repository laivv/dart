// 抽象类
abstract class IQueue<T> {
  T pop();
  bool push(T item);
}

//继承
class Queue<T> extends IQueue<T> {
  List _queue = new List<T>();
  T pop() {
    T item = _queue[0];
    _queue.removeAt(0);
  }

  bool push(T item) {
    _queue.add(item);
  }

  int get length {
    return _queue.length;
  }
}

void main() {
  Queue queue = new Queue<String>();
  queue.push("String");
  print(queue.length);

  var d1 = new Date(1000);
  var d2 = new Date(1000);
  Date d3 = d1 + d2;
  print(d3.date);

  // dynamic 动态类型
  dynamic n = "str";
  n = 100;

  fn2(name: "lingluo", age: 18);

  MyMap map = new MyMap<String, int>();
  map.setItem("name", 10);
  print(map.length);

  String moreRow = ''' 
  我是多行字符串
  我是多行字符串
  ''';
}

//变量
void strTest() {
  String str = "str";
  print(str);
  final str2 = "final运行时常量";
  const str3 = "const编译时常量";
  int n = 123;
  String str4 = n.toString();
}

//闭包
Function fn = () {
  int n = 0;
  return () {
    return ++n;
  };
};

//闭包 立即执行
Function number = () {
  int n = 0;
  return () {
    return ++n;
  };
}();

//运算符重载
class Date {
  int date;
  Date(this.date);
  Date operator +(Date other) {
    return new Date(date + other.date);
  }

  Date operator -(Date other) {
    return new Date(date + other.date);
  }
}

//可选参数
void fn1(int x, [String y]) {
  final int a = x;
  const b = "123";
  // 模板字符串
  const c = '$b';
}

void fn2({String name, int age}) {
  print(name);
  print(age);
}

class MyMap<K, V> {
  List _keyList = new List<K>();
  List _valueList = new List<V>();
  V getItem(K key) {
    int index = _keyList.indexOf(key);
    return _valueList[index];
  }

  bool setItem(K key, V val) {
    _keyList.add(key);
    _valueList.add(val);
    return true;
  }

  //定义一个getter
  int get length {
    return _keyList.length;
  }
}

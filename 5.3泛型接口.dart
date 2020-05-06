abstract class ObjectCache {
  getByKey(String key);
  void setByKey(String key,Object value);
}

abstract class StringCache {
  getByKey(String key);
  void setByKey(String key,String value);
}

// 泛型接口
// abstract class Cache<T> {
//   getByKey(String key);
//   void setByKey(String key,T value);
// }

// 

abstract class Cache<T> {
  getByKey(String key);
  void setByKey(String key,T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
  }
}

class MemoryCache<T> implements Cache<T>{
  @override
  getByKey(String key) {
    // TODO: implement getByKey
    return null;
  }

  @override
  void setByKey(String key, T value) {
    // TODO: implement setByKey
    print("KEY=$key Value=$value");
  }

}

void main(){
  MemoryCache m = new MemoryCache<String>();
  m.setByKey('1','faex');
}
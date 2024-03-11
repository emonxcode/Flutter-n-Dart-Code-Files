class DatabaseConnection {
  DatabaseConnection._(); // Private constructor

  static DatabaseConnection? _instance;

  static DatabaseConnection get instance {
    if (_instance == null) {
      _instance = DatabaseConnection._();
    }
    return _instance!;
  }
  
  void printText(String txt){
    print(txt);
  }

}

void main() {
  DatabaseConnection.instance.printText("Hello Emon");
  DatabaseConnection.instance.printText("Hello Tanvir");
  DatabaseConnection.instance.printText("Hello Fahmida");
  
  var obj1 = DatabaseConnection.instance;
  print(obj1.hashCode);
  
  var obj2 = DatabaseConnection.instance;
  print(obj2.hashCode);
  
  // two hashCode are same, that means obj reference are same.
}

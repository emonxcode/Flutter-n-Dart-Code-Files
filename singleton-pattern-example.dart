class DatabaseConnection {
  DatabaseConnection._databaseConnection(); // Private constructor

  static DatabaseConnection? _instance;

  static DatabaseConnection get instance {
    if (_instance == null) {
      _instance = DatabaseConnection._databaseConnection();
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
}

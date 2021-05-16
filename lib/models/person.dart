class Person {
  String name;
  String surname;
  int age;

  Person(this.name, this.surname, this.age);

  toMap() {
    Map<String, dynamic> map = Map<String, dynamic>();
    map["name"] = name;
    map["surname"] = surname;
    map["age"] = age;
    return map;
  }

  Person.fromMap(Map<String, dynamic> map) {
    this.name = map["name"];
    this.surname = map["surname"];
    this.age = map["age"];
  }

  @override
  String toString() {
    return 'Person{name: $name, surname: $surname, age: $age}';
  }
}

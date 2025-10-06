import 'module.dart';

class Student{
  String name;
  String lastName;
  int dni;
  int age;
  List<Module> modules;
  bool repeater;

  Student({
    required this.name, 
    required this.lastName, 
    required this.dni, 
    required this.age, 
    required this.modules, 
    required this.repeater});

  @override
  String toString() {
    return "$name $lastName ($age) - $dni: {$modules} - Repeater: $repeater";
  }

}
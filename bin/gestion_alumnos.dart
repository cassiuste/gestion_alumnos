import 'module.dart';
import 'student.dart';
import 'globals.dart';
void main(List<String> arguments) {

  List<Module> studentModules = [];
  studentModules.add(modules["M02"]!);
  studentModules.add(modules["M01"]!);
  studentModules.add(modules["M05"]!);
  studentModules.add(modules["M03"]!);
  Student juan = new Student(name: "Juan", lastName: "Diaz", dni: 111111, age: 19, modules: studentModules, repeater: false);
  sortModules(juan);
  validateNumberOfModules(juan);
  print(juan.modules);
}

void sortModules(Student student){
  List<Module> modules =  student.modules;
  print("Lista original: $modules");
  modules.sort((a, b) => a.name.compareTo(b.name));
  print("Lista Ordenada: $modules");
  student.modules = modules;
}

bool findModule(Student student, String moduleName){
  for (Module module in student.modules) {
    String name = module.name;
    if (name.compareTo(moduleName) == 0) {
      return true;
    }
  }
  return false;
}

void validateNumberOfModules(Student student){
  if (student.modules.length >= 4) {
    print("Curso completo");
  }
  else{
    int numOfModules = student.modules.length;
    while (numOfModules < 4) {
      int index = 1;
      while (true) {
        if (!student.modules.contains(modules["M0$index"])) {
          student.modules.add(modules["M0$index"]!);
          break;
        }
        index++;
      }
      numOfModules++;
    }
  }
}
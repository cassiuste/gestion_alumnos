import 'module.dart';
import 'student.dart';
import 'globals.dart';
void main(List<String> arguments) {
  List<Module> studentModules = [];
  studentModules.add(modules["M06"]!);
  studentModules.add(modules["M05"]!);
  studentModules.add(modules["M07"]!);
  Student juan = new Student(name: "Juan", lastName: "Diaz", dni: "111111", age: 19, modules: studentModules, repeater: false);
  validateNumberOfModules(juan);
  print(juan.modules);
}

void sortModules(Student student){
  List<Module> modules =  student.modules;
  print('Lista original: $modules');
  modules.sort((a, b) => a.name.compareTo(b.name));
  print('Lista Ordenada: $modules');
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
  } else {
    int numOfModules = student.modules.length;
    for (Module module in modules.values) {
      if (!student.modules.contains(module)) {
        student.modules.add(module);
        numOfModules++;
        if (numOfModules >= 4) {
          return;
        }
      }
    }
  }
}
class Module{
  String name;
  int ras;
  int hours;

  Module({
    required this.name, 
    required this.ras, 
    required this.hours});

  @override
  String toString() {
    return '$name: $ras - ($hours hours)';
  }
}
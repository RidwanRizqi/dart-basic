void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.
  names1.add('ridwan caesar rizqi karisma biwarni');
  names2.add('2141720183');
  // names1.addAll('ridwan caesar rizqi karisma biwarni');
  // names2.addAll('2141720183');
  print(names1);
  print(names2);
}
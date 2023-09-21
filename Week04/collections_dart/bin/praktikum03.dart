void main() {
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};

print(gifts);
print(nobleGases);

var mhs1 = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var mhs2 = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';

gifts['nama'] = 'ridwan caesar rizqi karisma biwarni';
gifts['nim'] = '2141720183';
nobleGases[0] = 'ridwan caesar rizqi karisma biwarni';
nobleGases[1] = '2141720183';
mhs1['nama'] = 'ridwan caesar rizqi karisma biwarni';
mhs1['nim'] = '2141720183';
mhs2[0] = 'ridwan caesar rizqi karisma biwarni';
mhs2[1] = '2141720183';

print(gifts['nama']);
print(gifts['nim']);
print(nobleGases[0]);
print(nobleGases[1]);
print(mhs1['nama']);
print(mhs1['nim']);
print(mhs2[0]);
print(mhs2[1]);
}


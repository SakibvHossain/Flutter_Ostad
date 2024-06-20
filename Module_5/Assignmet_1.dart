class Car{
  static int numberOfCars = 0;
  late String _brand; //Represents the brand
  late String _model; //Represents the model
  late int _year; //Represents the year the car was made
  late double _milesDriven; //Represents the number of miles driven by the car

  Car({required String brand,required String model,required int year,required double milesDriven}){
    this._brand = brand;
    this._model = model;
    this._year = year;
    this._milesDriven = milesDriven;
    numberOfCars++;
  }

  double Drive(double miles){
    return _milesDriven+miles;
  }

  double get milesDriven => _milesDriven;

  set milesDriven(double value) {
    _milesDriven = value;
  }

  int get year => _year;

  set year(int value) {
    _year = value;
  }

  String get model => _model;

  set model(String value) {
    _model = value;
  }

  String get brand => _brand;

  int get car_Age => DateTime.now().year - year;

  set brand(String value) {
    _brand = value;
  }
}

void main(){
  Car bugatti = Car(brand: 'Bugatti Chiron', model: 'Max OBJ 3DX', year: 2018, milesDriven: 350.5);
  print('\n\nBugatti details:');
  print('Miles Driven: ${bugatti.milesDriven}');
  print('Brand: ${bugatti.brand}');
  print('Model: ${bugatti.model}');
  print('Year: ${bugatti.year}');
  print('Age: ${bugatti.car_Age} years');
  bugatti.Drive(180.3);
  print('Miles Driven after driving: ${bugatti.milesDriven}');

  Car lamborghini = Car(brand: 'Lamborghini Sian', model: 'FKP 37', year: 2019, milesDriven: 345.5);
  print('\n\nLamborghini details:');
  print('Miles Driven: ${lamborghini.milesDriven}');
  print('Brand: ${lamborghini.brand}');
  print('Model: ${lamborghini.model}');
  print('Year: ${lamborghini.year}');
  print('Age: ${lamborghini.car_Age} years');
  lamborghini.Drive(140.3);
  print('Miles Driven after driving: ${lamborghini.milesDriven}');

  Car mercedes = Car(brand: 'Mercedes Benz', model: 'X 253', year: 2020, milesDriven: 300.5);
  print('\n\nMercedes details:');
  print('Miles Driven: ${mercedes.milesDriven}');
  print('Brand: ${mercedes.brand}');
  print('Model: ${mercedes.model}');
  print('Year: ${mercedes.year}');
  print('Age: ${mercedes.car_Age} years');
  mercedes.Drive(120.3);
  print('Miles Driven after driving: ${mercedes.milesDriven}');

  print('\n\nTotal cars made by the company: ${Car.numberOfCars}');
}

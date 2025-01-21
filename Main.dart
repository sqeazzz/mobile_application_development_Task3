// Задание 1: Класс "Человек"
/*class Person {
  String name;
  int age;
  String gender;

  Person(this.name, this.age, this.gender);

  void printInfo() {
    print('Имя: $name');
    print('Возраст: $age');
    print('Пол: $gender');
  }

  void increaseAge() {
    age++;
  }

  void changeName(String newName) {
    name = newName;
  }
}

void task1() {
  Person person = Person('Егор', 22, 'Мужской');
  person.printInfo();
  person.increaseAge();
  person.changeName('Алексей');
  person.printInfo();
}*/

// Задание 2: Наследование: Класс "Работник" и "Менеджер"
/*class Worker extends Person {
  double salary;

  Worker(String name, int age, String gender, this.salary) : super(name, age, gender);

  void printSalary() {
    print('Зарплата: ${salary}');
  }
}

class Manager extends Worker {
  List<Worker> subordinates;

  Manager(String name, int age, String gender, double salary, this.subordinates)
      : super(name, age, gender, salary);

  void printSubordinates() {
    print('Подчиненные:');
    for (var subordinate in subordinates) {
      print(subordinate.name);
    }
  }
}

void task2() {
  Worker worker1 = Worker('Виктор', 28, 'Мужской', 60000);
  Worker worker2 = Worker('Яна', 25, 'Женский', 50000);

  Manager manager = Manager('Алексей', 37, 'Мужской', 75000, [worker1, worker2]);
  manager.printInfo();
  manager.printSalary();
  manager.printSubordinates();
}*/

// Задание 3: Полиморфизм: Животные
/*abstract class Animal {
  void makeSound();
}

class Dog implements Animal {
  @override
  void makeSound() {
    print('Гав');
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Мяу');
  }
}

class Cow implements Animal {
  @override
  void makeSound() {
    print('Му');
  }
}

void task3() {
  List<Animal> animals = [Dog(), Cat(), Cow()];
  for (var animal in animals) {
    animal.makeSound();
  }
}*/

// Задание 4: Абстрактный класс "Транспорт"
/*abstract class Transport {
  void move();
}

class Car extends Transport {
  @override
  void move() {
    print('Машина едет');
  }
}

class Bike extends Transport {
  @override
  void move() {
    print('Велосипед едет');
  }
}

void task4() {
  Transport car = Car();
  Transport bike = Bike();
  car.move();
  bike.move();
}*/

// Задание 5: Класс "Книга" и "Библиотека"
/*class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  void findByAuthor(String author) {
    for (var book in books) {
      if (book.author == author) {
        print('${book.title} (${book.year})');
      }
    }
  }

  void sortByTitle() {
    books.sort((a, b) => a.title.compareTo(b.title));
  }
}

void task5() {
  Library library = Library();
  library.addBook(Book('Божественная комедия', 'Алигьери Данте', 1321));
  library.addBook(Book('Мастер и Маргарита', 'Михаил Булгаков', 1966));
  library.addBook(Book('Преступление и наказание', 'Федор Достоевский', 1866));

  print('Книги Достоевского:');
  library.findByAuthor('Федор Достоевский');

  print('\nСортировка по названию:');
  library.sortByTitle();
  for (var book in library.books) {
    print(book.title);
  }
}*/

// Задание 6: Инкапсуляция: Банк
/*class BankAccount {
  String accountNum;
  double _balance;

  BankAccount(this.accountNum, this._balance);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('Пополнение на ${amount}. Новый баланс: ${_balance}');
    }
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('Снятие ${amount}. Новый баланс: ${_balance}');
    } else {
      print('Недостаточно средств');
    }
  }
}

void task6() {
  BankAccount account = BankAccount('675457', 1500);
  account.deposit(600);
  account.withdraw(300);
  print('Текущий баланс: ${account.balance}');
}*/

// Задание 7: Счетчик объектов
/*class Counter {
  static int count = 0;

  Counter() {
    count++;
  }

  static void printCount() {
    print('Количество созданных объектов: $count');
  }
}

void task7() {
  Counter counter1 = Counter();
  Counter counter2 = Counter();
  Counter counter3 = Counter();
  Counter.printCount();
}*/

// Задание 8: Площадь фигур
/*abstract class Shape {
  double getArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double getArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double getArea() {
    return width * height;
  }
}

void task8() {
  Shape circle = Circle(3);
  Shape rectangle = Rectangle(7, 5);
  print('Площадь круга: ${circle.getArea()}');
  print('Площадь прямоугольника: ${rectangle.getArea()}');
}*/

// Задание 9: Наследование: Животные и их движения
/*class Animal {
  void move() {
    print('Животное движется');
  }
}

class Fish extends Animal {
  @override
  void move() {
    print('Рыба плавает');
  }
}

class Bird extends Animal {
  @override
  void move() {
    print('Птица летит');
  }
}

class Dog extends Animal {
  @override
  void move() {
    print('Собака бегает');
  }
}

void task9() {
  Animal fish = Fish();
  Animal bird = Bird();
  Animal dog = Dog();
  fish.move();
  bird.move();
  dog.move();
}*/

// Задание 10: Работа с коллекциями: Университет
/*class Student {
  String name;
  String group;
  double grade;

  Student(this.name, this.group, this.grade);
}

class University {
  List<Student> students = [];

  void addStudent(Student student) {
    students.add(student);
  }

  void sortByName() {
    students.sort((a, b) => a.name.compareTo(b.name));
  }

  void filterByGrade(double minGrade) {
    for (var student in students) {
      if (student.grade >= minGrade) {
        print('${student.name}, ${student.grade}');
      }
    }
  }
}

void task10() {
  University university = University();
  university.addStudent(Student('Виктор', 'Группа 3', 4.7));
  university.addStudent(Student('Яна', 'Группа 2', 3.3));
  university.addStudent(Student('Алексей', 'Группа 1', 5.0));

  print('Сортировка по имени:');
  university.sortByName();
  for (var student in university.students) {
    print(student.name);
  }

  print('\nФильтрация по успеваемости:');
  university.filterByGrade(4.0);
}*/

// Задание 11: Класс "Магазин"
/*class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);
}

class Store {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
  }

  void removeProduct(String productName) {
    products.removeWhere((product) => product.name == productName);
  }

  Product? findByName(String productName) {
    return products.firstWhere((product) => product.name == productName, orElse: () => Product('Не найдено', 0, 0));
  }
}

void task11() {
  Store store = Store();
  store.addProduct(Product('Телевизор', 500, 10));
  store.addProduct(Product('Телефон', 300, 5));

  Product? foundProduct = store.findByName('Телевизор');
  if (foundProduct != null) {
    print('Найден продукт: ${foundProduct.name}, Цена: ${foundProduct.price}');
  }

  store.removeProduct('Телевизор');
  foundProduct = store.findByName('Телевизор');
  print(foundProduct == null ? 'Продукт не найден' : 'Продукт найден');
}*/

// Задание 12: Интерфейс "Платежная система"
/*abstract class PaymentSystem {
  void pay(double amount);
  void refund(double amount);
}

class CreditCard implements PaymentSystem {
  @override
  void pay(double amount) {
    print('Оплата картой на ${amount}');
  }

  @override
  void refund(double amount) {
    print('Возврат средств на карту: ${amount}');
  }
}

class PayPal implements PaymentSystem {
  @override
  void pay(double amount) {
    print('Оплата через PayPal на ${amount}');
  }

  @override
  void refund(double amount) {
    print('Возврат через PayPal: ${amount}');
  }
}

void task12() {
  PaymentSystem paymentMethod = CreditCard();
  paymentMethod.pay(100);

  paymentMethod = PayPal();
  paymentMethod.refund(50);
}*/

// Задание 13: Генерация уникальных идентификаторов
/*class UniqueID {
  static int lastId = 0;

  int id;

  UniqueID() : id = ++lastId;

  @override
  String toString() {
    return 'ID: $id';
  }
}

void task13() {
  UniqueID obj1 = UniqueID();
  UniqueID obj2 = UniqueID();
  UniqueID obj3 = UniqueID();

  print(obj1);
  print(obj2);
  print(obj3);
}*/

// Задание 14: Класс "Точка" и "Прямоугольник"
/*class Point {
  double x;
  double y;

  Point(this.x, this.y);
}

class Rectangle {
  Point topLeft;
  Point bottomRight;

  Rectangle(this.topLeft, this.bottomRight);

  double getArea() {
    double width = bottomRight.x - topLeft.x;
    double height = topLeft.y - bottomRight.y;
    return width * height;
  }
}

void task14() {
  Point topLeft = Point(0, 5);
  Point bottomRight = Point(4, 0);

  Rectangle rectangle = Rectangle(topLeft, bottomRight);

  print('Площадь прямоугольника: ${rectangle.getArea()}');
}*/

// Задание 15: Комплексные числа
/*class ComplexNumber {
  double real;
  double imaginary;

  ComplexNumber(this.real, this.imaginary);

  ComplexNumber operator +(ComplexNumber other) {
    return ComplexNumber(real + other.real, imaginary + other.imaginary);
  }

  ComplexNumber operator -(ComplexNumber other) {
    return ComplexNumber(real - other.real, imaginary - other.imaginary);
  }

  ComplexNumber operator *(ComplexNumber other) {
    return ComplexNumber(
      real * other.real - imaginary * other.imaginary,
      real * other.imaginary + imaginary * other.real,
    );
  }

  ComplexNumber operator /(ComplexNumber other) {
    double denominator = other.real * other.real + other.imaginary * other.imaginary;
    return ComplexNumber(
      (real * other.real + imaginary * other.imaginary) / denominator,
      (imaginary * other.real - real * other.imaginary) / denominator,
    );
  }

  @override
  String toString() {
    return '${real} + ${imaginary}i';
  }
}

void task15() {
  ComplexNumber num1 = ComplexNumber(2, 3);
  ComplexNumber num2 = ComplexNumber(1, 4);

  print('Сложение: ${num1 + num2}');
  print('Вычитание: ${num1 - num2}');
  print('Умножение: ${num1 * num2}');
  print('Деление: ${num1 / num2}');
}*/

// Задание 16: Перегрузка операторов: Матрица
/*class Matrix {
  List<List<int>> value;

  Matrix(this.value);

  Matrix operator +(Matrix other) {
    List<List<int>> result = List.generate(
        value.length, (i) => List.generate(value[i].length, (j) => 0));

    for (int i = 0; i < value.length; i++) {
      for (int j = 0; j < value[i].length; j++) {
        result[i][j] = value[i][j] + other.value[i][j];
      }
    }

    return Matrix(result);
  }

  Matrix operator *(Matrix other) {
    List<List<int>> result = List.generate(
        value.length, (i) => List.generate(other.value[0].length, (j) => 0));

    for (int i = 0; i < value.length; i++) {
      for (int j = 0; j < other.value[0].length; j++) {
        for (int k = 0; k < value[0].length; k++) {
          result[i][j] += value[i][k] * other.value[k][j];
        }
      }
    }

    return Matrix(result);
  }

  @override
  String toString() {
    return value.map((row) => row.join(' ')).join('\n');
  }
}

void task16() {
  Matrix matrix1 = Matrix([
    [5, 2],
    [1, 4]
  ]);

  Matrix matrix2 = Matrix([
    [7, 6],
    [7, 9]
  ]);

  print('Сложение матриц:\n${matrix1 + matrix2}');
  print('Умножение матриц:\n${matrix1 * matrix2}');
}*/

// Задание 17: Создание игры с использованием ООП
/*class Player {
  String name;
  int health;

  Player(this.name, this.health);

  void attack(Enemy enemy, Weapon weapon) {
    print('$name атакует ${enemy.name} с оружием ${weapon.name}');
    enemy.health -= weapon.damage;
    print('${enemy.name} получил урон и теперь его здоровье: ${enemy.health}');
  }
}

class Enemy {
  String name;
  int health;

  Enemy(this.name, this.health);
}

class Weapon {
  String name;
  int damage;

  Weapon(this.name, this.damage);
}

void task17() {
  Player player = Player('Игрок', 100);
  Enemy enemy = Enemy('Противник', 100);
  Weapon sword = Weapon('Меч', 35);

  player.attack(enemy, sword);
}*/

// Задание 18: Автоматизированная система заказов
/*class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class Order {
  Customer customer;
  List<Product> products = [];

  Order(this.customer);

  void addProduct(Product product) {
    products.add(product);
  }

  double getTotal() {
    return products.fold(0, (total, product) => total + product.price);
  }
}

class Customer {
  String name;

  Customer(this.name);
}

void task18() {
  Customer customer = Customer('Никита');
  Product product1 = Product('Компьютер', 1500);
  Product product2 = Product('Телефон', 500);

  Order order = Order(customer);
  order.addProduct(product1);
  order.addProduct(product2);

  print('Общая стоимость заказа: ${order.getTotal()}');
}*/

// Задание 19: Наследование: Электроника
/*class Device {
  String brand;

  Device(this.brand);

  void turnOn() {
    print('Включение устройства $brand');
  }

  void turnOff() {
    print('Выключение устройства $brand');
  }
}

class Smartphone extends Device {
  Smartphone(String brand) : super(brand);

  void takePhoto() {
    print('Смартфон $brand делает фото');
  }
}

class Laptop extends Device {
  Laptop(String brand) : super(brand);

  void browser() {
    print('Ноутбук $brand запускает браузер');
  }
}

void task19() {
  Device phone = Smartphone('Samsung');
  Device laptop = Laptop('Asus');

  phone.turnOn();
  (phone as Smartphone).takePhoto();

  laptop.turnOn();
  (laptop as Laptop).browser();
}*/

// Задание 20: Игра "Крестики-нолики"
/*class Game {
  List<List<String>> board = List.generate(3, (_) => List.filled(3, ' '));
  String currPlayer = 'X';

  void makeMove(int row, int col) {
    if (board[row][col] == ' ') {
      board[row][col] = currPlayer;
      printBoard();
      if (checkWin()) {
        print('$currPlayer выиграл!');
      } else {
        currPlayer = (currPlayer == 'X') ? 'O' : 'X';
      }
    } else {
      print('Эта клетка уже занята!');
    }
  }

  void printBoard() {
    for (var row in board) {
      print(row.join('|'));
    }
    print('');
  }

  bool checkWin() {

    for (int i = 0; i < 3; i++) {
      if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != ' ') {
        return true;
      }
      if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i] != ' ') {
        return true;
      }
    }
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != ' ') {
      return true;
    }
    if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != ' ') {
      return true;
    }
    return false;
  }
}

void task20() {
  Game game = Game();

  game.makeMove(1, 1);
  game.makeMove(0, 0);
  game.makeMove(2, 2);
  game.makeMove(1, 0);
  game.makeMove(2, 0);
  game.makeMove(0, 2);
  game.makeMove(2, 1);
}*/

void main() {
  // task1();
  // task2();
  // task3();
  // task4();
  // task5();
  // task6();
  // task7();
  // task8();
  // task9();
  // task10();
  // task11();
  // task12();
  // task13();
  // task14();
  // task15();
  // task16();
  // task17();
  // task18();
  // task19();
  // task20();
}

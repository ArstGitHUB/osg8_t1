<<<<<<< HEAD
class Users{

  String username;
  int pin;
  int saldoBalance;
  
  Users(this.username, this.pin,this.saldoBalance);


  String getName(){
    return username;
  }

    int getPin(){
    return pin;
  }
    int getSaldoBalance(){
    return saldoBalance;
  }

  setSaldoBalance(int saldoBalance) {
    this.saldoBalance = saldoBalance;
  }
}
  

List<Users> users = [Users("Ars", 123456, 200000),Users("Ben", 654321, 100000)];

Users user;

bool login(String name) {

  bool isValidUser = false;

  for (Users usr in users)
  {
    if (name == usr.getName())
    {
      isValidUser = true;
    }
    
  }
  return isValidUser;
=======
import 'main.dart';

class User {

  String username;
  int pin;
  double saldo;
  
  User(this.username, this.pin,this.saldo);
}

bool login(String name) {

  var username ;
  switch (name) {
    case "Aris":
      {
        username = name;
      }
      break;
    case "Ben":
      {
        username = name;
      }
      break;
    default:
      {
          print("Maaf username $name belum terdaftar");
          main();
      }
      break;
  }
  return name == username;
>>>>>>> Upload Tg01
}

bool password(String name, var pin) {

<<<<<<< HEAD
  bool isValidPin = false;
  int checkPin = int.parse(pin);

  for (Users usr in users)
  {
    if (name == usr.getName() )
    {
      if (checkPin == usr.getPin())
      {
         isValidPin = true;
      }
    }
    
  }
  
  return isValidPin;
=======
  var username ;
  var checkpin;
  switch (name) {
    case "Aris":
      {
        if (pin == "123456"){
            username = name;
            checkpin = pin;
        }
      }
      break;
    case "Ben":
      {
        if (pin == "654321"){
            username = name;
            checkpin = pin;
        }
      }
      break;
    default:
      {
          print("Maaf username $name belum terdaftar");
      }
      break;
  }
  return name == username && pin == checkpin;
>>>>>>> Upload Tg01
}

int checkingsaldo (String name){
  
  int currentSaldo;

<<<<<<< HEAD
  for (Users usr in users)
  {
    if (name == usr.getName())
    {
      currentSaldo = usr.getSaldoBalance();
    }
=======
  switch (name) {
    case "Aris":
      {
        currentSaldo = 300000;
      }
      break;
    case "Ben":
      {
        currentSaldo = 200000;
      }
      break;
    default:
      {
          print("Maaf username $name belum terdaftar");
      }
      break;
>>>>>>> Upload Tg01
  }
  
  return currentSaldo;
}

/*
class User {

  String username;
  int pin;
  double saldo;
  
  User(this.username, this.pin,this.saldo);
}

bool userName(String username){
  
  List<User> user = new List<User>();
  user.add(new User("Ars", 123456, 20000));
  user.add(new User("Ben", 332244, 100000));
  //var mappedNames = user.map((n) => 'Mr. ${n.username} ${n.pin} ${n.saldo}');
  var mappedUsername = user.map((n) => '${n.username}');
  var name ;
  

  for(final i in mappedUsername){
      if (i == username)
      {
        name = i;
      }else{
        print("Sorry your username $username not registered");
          main();
      }
     
  }

  return username = name;
}


bool userLogin(String username){
  
  List<User> user = new List<User>();
  user.add(new User("Ars", 123456, 20000));
  user.add(new User("Ben", 332244, 100000));

  //var mappedNames = user.map((n) => 'Mr. ${n.username} ${n.pin} ${n.saldo}');
  var mappedUsername = user.map((n) => '${n.username}');
  var mappedUsernamePin = user.map((n) => '${n.username}${n.pin}');
  var name ;
  
  for(final i in mappedUsername){
      if (i == username)
      {
        name = i;
        var getPin = mappedUsernamePin.where((f) => f.contains(name)).toList(); 
        userPin(name,getPin);
      }
      else
      {
        print("Sorry your username $username not registered");
        main();
      }
     
  }

  return username = name;
}

bool userPin(String name,var getPin) {

  var username ;
  var checkpin;
 
}
*/

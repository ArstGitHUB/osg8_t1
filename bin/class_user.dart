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
}

bool password(String name, var pin) {

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
}

int checkingsaldo (String name){
  
  int currentSaldo;

  for (Users usr in users)
  {
    if (name == usr.getName())
    {
      currentSaldo = usr.getSaldoBalance();
    }
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

import 'dart:io';
import 'class_menu.dart';
import 'class_user.dart';

<<<<<<< HEAD

int saldo ; 

void main() {
    print("======================================================================================");
    print("=                             SELAMAT DATANG DI ATM BANK OSG8                           =");
    print("======================================================================================");
    
    print("");
    print("1 = LOGIN");
    print("2 = BATAL");
    print("Pilih Menu : ");

    var choosemenu = stdin.readLineSync();

    switch (choosemenu) {
      case "1":
          validatingUsername();
        break;
      case "2":
          print("======================================================================================");
          print("=                 TERIMA KASIH TELAH MENGUNJUNGI ATM BANK OSG8                       =");
          print("======================================================================================"); 
        break;
      default:
    }
}

void validatingUsername () 
{

    print("");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    print("=                          SILAHKAH MASUKAN USERNAME ANDA ?                           =");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    var name = stdin.readLineSync();
    int tryPin = 1;
    if (login(name) == true) 
    {
       do {
            print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
            print("=                   MASUKAN PIN ANDA, JANGAN SAMPAI SALAH YA ?                        =");
            print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
            var pin = stdin.readLineSync();
            var username = name;

            if(password (username, pin) == true) {
              saldo = checkingsaldo(name);
              menu(username, saldo);
              break;
            }
            else if (tryPin == 3)
            {
              print("Maaf anda sudah 3 kali gagal memasukan PIN");
              main();
              break;
            }
         tryPin++;
       } while (tryPin<=3); 
    }
    else
    {
      print("Maaf username $name belum terdaftar");
      main();
    }

=======
int saldo ; 
void main() {

    print("======================================================================================");
    print("=                             SELAMAT DATANG ATM BANK OSG8                           =");
    print("======================================================================================");
    print("");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    print("=                          Silahkan masukan username Anda ?                           =");
    print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    var name = stdin.readLineSync();
    
    if (login(name) == true) {
      
        validatingPin(name);
    }
   
>>>>>>> Upload Tg01
}

void validatingPin (String name){

<<<<<<< HEAD
      //int tryPin=1;
      print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
      print("=                   Masukan PIN anda, jangan sampai salah ya ?                        =");
      print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
      var pin = stdin.readLineSync();
      var username = name;


=======
      //int tryPin;
      print("++++++++++++++++++++++++++++++++++++++++++++++++++++");
      print("=    Masukan PIN anda, jangan sampai salah ya ?    =");
      print("++++++++++++++++++++++++++++++++++++++++++++++++++++");
      var pin = stdin.readLineSync();
      var username = name;
>>>>>>> Upload Tg01
      if(password (username, pin) == true) {
         saldo = checkingsaldo(name);
         menu(username, saldo);
      }
<<<<<<< HEAD
      
=======
      else
      {
         print("Maaf PIN yang anda masukan salah !!!");
         validatingPin(username);
      }
>>>>>>> Upload Tg01
}

/*
void validatingPin (String name){

      int tryPin;
      print("Please enter your PIN ?");
      var pin = stdin.readLineSync();
      var username = name;
      if(password (username, pin) == true) {
         menu(username);       
      }
      else
      {
         print("($tryPin) Failed Pin");
         validatingPin(username);
      }
}
*/

/*
void main(){
  
  
  List<User> user = new List<User>();
  user.add(new User("Ars", 123456, 20000));
  user.add(new User("Ben", 332244, 100000));
  //var mappedNames = user.map((n) => 'Mr. ${n.username} ${n.pin} ${n.saldo}');
  var mappedLogin = user.map((n) => '${n.username}');
  //login(mappedLogin);
  
  print("Please enter your username ?");
  var name = stdin.readLineSync();
    
  outerloop:
  for(final i in mappedLogin){
      if (i == name)
      {
        print("How are you $name, today?");
        break;
      }
      else 
      {
        break outerloop;
      }
  }
}

void login(var list) {
  
  
}

  
}
*/

/*
void login (String name)
{
   
   if (user(name).hashCode == 0){
     print("True");
   }; 

}
  */  
   
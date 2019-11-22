
import 'dart:io';

<<<<<<< HEAD
import 'main.dart';
import 'class_user.dart';

=======
>>>>>>> Upload Tg01
//int saldo ;

void menu(String name, int saldoUser)
{

    print("======================================================================================");
<<<<<<< HEAD
    print("=                            HAI $name, SILAHKAN PILIH MENU BERIKUT :                =");
=======
    print("=                            Hai $name, Silahkan pilih menu berikut :                =");
>>>>>>> Upload Tg01
    print("======================================================================================");

    print("1 = Tarik Tunai");
    print("2 = Setor Tunai");
    print("3 = Cek Saldo");
    print("4 = Ganti Akun");
    print("5 = Keluar Aplikasi");
    print("Pilih Menu : ");

    var choosemenu = stdin.readLineSync();
    
    switch (choosemenu) {
      case "1" :
        {
          print("");
<<<<<<< HEAD
          print("--------------------------------------------------------------------------------------");
          print("-                                      TARIK TUNAI                                   -");
          print("-                            PASTIKAN SALDO ANDA MENCUKUPI                           -");
          print("--------------------------------------------------------------------------------------");
          print("");
          
          
=======
          print("--------------------------");
          print("        Tarik Tunai      -");
          print("--------------------------");
>>>>>>> Upload Tg01
          tarikTunai(name,saldoUser);
         
        }
        break;
      case "2" :
        {
          print("");
<<<<<<< HEAD
          print("--------------------------------------------------------------------------------------");
          print("-                                      SETOR TUNAI                                   -");
          print("--------------------------------------------------------------------------------------");
          print("");
          
=======
          print("--------------------------");
          print("-      Setor Tunai       -");
          print("--------------------------");
>>>>>>> Upload Tg01
          setorTunai(name, saldoUser);
        }
        break;
      case "3" :
        {
<<<<<<< HEAD
          print("");
          print("--------------------------------------------------------------------------------------");
          print("-                                 SALDO ANDA $saldoUser                              -");
          print("--------------------------------------------------------------------------------------");
          print("");
          ;
          menu(name, user.getSaldoBalance());
=======
          print("---------------------------");
          print("-  Saldo Anda $saldoUser  -");
          print("---------------------------");
          menu(name, saldoUser);
>>>>>>> Upload Tg01
        }
        break;
      case "4" :
        {
<<<<<<< HEAD
          print("");
          print("--------------------------------------------------------------------------------------");
          print("-                                    GANTI AKUN                                      -");
          print("--------------------------------------------------------------------------------------");
          print("");
          
          //print("Maaf fitur belum tersedia :)");
          //menu(name, saldoUser);
          main();
=======
          print("--------------------------");
          print("-       Ganti Akun       -");
          print("--------------------------");
          print("Maaf fitur belum tersedia :)");
          menu(name, saldoUser);
>>>>>>> Upload Tg01
        }
        break;
      case "5" :
        {
<<<<<<< HEAD
          print("======================================================================================");
          print("=                 TERIMA KASIH TELAH MENGUNJUNGI ATM BANK OSG8                       =");
          print("======================================================================================");      
=======
          print("-------------------------------------------");
          print("- Terima Kasih Telah Mengunjungi OSG8 ATM -");
          print("-------------------------------------------");      
>>>>>>> Upload Tg01
          
        }
        break;
      default:
    }

}

int tarikTunai(String name, int saldo)
{
  int saldoAkhir;
  if (saldo > 0) 
  {
<<<<<<< HEAD
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    print("=                              JUMLAH NOMINAL YANG DITARIK ?                         =");
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
=======
    print("+++++++++++++++++++++++++++++++++++++++");
    print("=    Jumlah uang yang ditarik ?       =");
    print("+++++++++++++++++++++++++++++++++++++++");
>>>>>>> Upload Tg01
    var inputUang = stdin.readLineSync();

    int tarikUang = int.parse(inputUang);  
    
      if (tarikUang <= saldo)
      {
        saldoAkhir = saldo - tarikUang ;

<<<<<<< HEAD
          print("--------------------------------------------------------------------------------------");
          print("-                              SALDO AKHIR ANDA $saldoAkhir                           -");
          print("--------------------------------------------------------------------------------------");
=======
          print("--------------------------------");
          print("- Saldo Akhir Anda $saldoAkhir -");
          print("--------------------------------");
>>>>>>> Upload Tg01
          menu(name, saldoAkhir);
      }
      else
      {
<<<<<<< HEAD
        print("Maaf jumlah TARIK TUNAI melebihi Saldo Anda $saldo "); 
=======
        print("Maaf jumlah Tarik Uang melebihi Saldo Anda $saldo "); 
>>>>>>> Upload Tg01
        menu(name, saldo);
      }
    
  
  }
  else
  {
    saldoAkhir = 0;
<<<<<<< HEAD
    print("--------------------------------------------------------------------------------------");
    print("-                              SALDO AKHIR ANDA $saldoAkhir                           -");
    print("--------------------------------------------------------------------------------------");
=======
    print("--------------------------------");
    print("- Saldo Akhir Anda $saldoAkhir -");
    print("--------------------------------");
>>>>>>> Upload Tg01
    menu(name, saldoAkhir);

  }
  
  return saldoAkhir;
}

int setorTunai(String name, int saldo)
{
<<<<<<< HEAD
  print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  print("=                             JUMLAH NOMINAL YANG DISETOR ?                          =");
  print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  var setorUang = stdin.readLineSync();
  int saldoAkhir = saldo + int.parse(setorUang) ;
  print("--------------------------------------------------------------------------------------");
  print("-                              SALDO AKHIR ANDA $saldoAkhir                          -");
  print("--------------------------------------------------------------------------------------");
=======
  print("++++++++++++++++++++++++++++++++++++++");
  print("=     Jumlah uang yang disetor ?     =");
  print("++++++++++++++++++++++++++++++++++++++");
  var setorUang = stdin.readLineSync();
  int saldoAkhir = saldo + int.parse(setorUang) ;
  print("--------------------------------");
  print("- Saldo Akhir Anda $saldoAkhir -");
  print("--------------------------------");
>>>>>>> Upload Tg01
  menu(name, saldoAkhir);

  return saldoAkhir;
}

void gantiAkun (String name)
{
  
  //menu(name);
}

void keluar (String name)
{
  
  //menu(name);
}
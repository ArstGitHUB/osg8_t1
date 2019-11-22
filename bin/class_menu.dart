
import 'dart:io';

import 'main.dart';
import 'class_user.dart';

//int saldo ;

void menu(String name, int saldoUser)
{

    print("======================================================================================");
    print("=                            HAI $name, SILAHKAN PILIH MENU BERIKUT :                =");
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
          print("--------------------------------------------------------------------------------------");
          print("-                                      TARIK TUNAI                                   -");
          print("-                            PASTIKAN SALDO ANDA MENCUKUPI                           -");
          print("--------------------------------------------------------------------------------------");
          print("");
          
          
          tarikTunai(name,saldoUser);
         
        }
        break;
      case "2" :
        {
          print("");
          print("--------------------------------------------------------------------------------------");
          print("-                                      SETOR TUNAI                                   -");
          print("--------------------------------------------------------------------------------------");
          print("");
          
          setorTunai(name, saldoUser);
        }
        break;
      case "3" :
        {
          print("");
          print("--------------------------------------------------------------------------------------");
          print("-                                 SALDO ANDA $saldoUser                              -");
          print("--------------------------------------------------------------------------------------");
          print("");
          ;
          menu(name, user.getSaldoBalance());
        }
        break;
      case "4" :
        {
          print("");
          print("--------------------------------------------------------------------------------------");
          print("-                                    GANTI AKUN                                      -");
          print("--------------------------------------------------------------------------------------");
          print("");
          
          //print("Maaf fitur belum tersedia :)");
          //menu(name, saldoUser);
          main();
        }
        break;
      case "5" :
        {
          print("======================================================================================");
          print("=                 TERIMA KASIH TELAH MENGUNJUNGI ATM BANK OSG8                       =");
          print("======================================================================================");      
          
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
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    print("=                              JUMLAH NOMINAL YANG DITARIK ?                         =");
    print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
    var inputUang = stdin.readLineSync();

    int tarikUang = int.parse(inputUang);  
    
      if (tarikUang <= saldo)
      {
        saldoAkhir = saldo - tarikUang ;

          print("--------------------------------------------------------------------------------------");
          print("-                              SALDO AKHIR ANDA $saldoAkhir                           -");
          print("--------------------------------------------------------------------------------------");
          menu(name, saldoAkhir);
      }
      else
      {
        print("Maaf jumlah TARIK TUNAI melebihi Saldo Anda $saldo "); 
        menu(name, saldo);
      }
    
  
  }
  else
  {
    saldoAkhir = 0;
    print("--------------------------------------------------------------------------------------");
    print("-                              SALDO AKHIR ANDA $saldoAkhir                           -");
    print("--------------------------------------------------------------------------------------");
    menu(name, saldoAkhir);

  }
  
  return saldoAkhir;
}

int setorTunai(String name, int saldo)
{
  print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  print("=                             JUMLAH NOMINAL YANG DISETOR ?                          =");
  print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++");
  var setorUang = stdin.readLineSync();
  int saldoAkhir = saldo + int.parse(setorUang) ;
  print("--------------------------------------------------------------------------------------");
  print("-                              SALDO AKHIR ANDA $saldoAkhir                          -");
  print("--------------------------------------------------------------------------------------");
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
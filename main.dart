import 'dart:io';
import 'dart:core';

void main() {
  List item = ['CACHORRO QUENTE','BAURU SIMPLES', 'BAURU COM OVO', 'HAMBÚRGUER', 'CHEESEBURGUER', 'REFRIGERANTE'];
  List precos = [1.20, 1.30,1.50,1.20,1.30, 1.00];
  List codigos = [100,101,102,103,104,105];

  var i = 0;
  String resp = 'S';              
  double valor, resultado, soma = 0;
 

  print ('ESPECIFICAÇÃO        ' + '             CODIGO' +'                  PREÇO \n');

  for (i= 0; i<item.length; i++){
    print ('${item[i]}                 ${codigos[i]}                        ${precos[i]}');
  }
  
  //var produto;
  //var quantidade;
  while(resp == 'S'){                     
    print ('DIGITE O CÓDIGO DO PRODUTO: ');
    String produto = stdin.readLineSync();
    print ('DIGITE A QUANTIDADE: ');
    var qtd = stdin.readLineSync();

    double quantidade = double.tryParse(qtd);

    if(produto == '100'){
      produto = item[0];
      valor = precos[0];
      resultado =  (quantidade * valor );      
    }

     if(produto == '101'){
      produto = item[1];
      valor = precos[1];
      resultado =  (quantidade * valor );      
    }

     if(produto == '102'){
      produto = item[2];
      valor = precos[2];
      resultado =  (quantidade * valor );      
    }

     if(produto == '103'){
      produto = item[3];
      valor = precos[3];
      resultado =  (quantidade * valor );      
    }

     if(produto == '104'){
      produto = item[4];
      valor = precos[4];
      resultado =  (quantidade * valor );      
    }

     if(produto == '105'){
      produto = item[5];
      valor = precos[5];
      resultado =  (quantidade * valor );      
    }

  print('DESEJA INCLUIR MAIS ITENS? [S/N]' );  
  resp = stdin.readLineSync().toUpperCase();
  soma += resultado;
  var s = double.parse(soma.toStringAsFixed(2));
  print('-------------------------');
  print('PRODUTO: ${produto}');
  print('QUANTIDADE: ${quantidade}');
  print('VALOR DO ITEM: ${resultado}');
  print('SUBTOTAL: ${s}');
  print('-------------------------');
  }

print('-------------------------');
print('TOTAL A PAGAR:  ${soma}  ');

print('-------------------------');


}
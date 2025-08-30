//ESW 4º A
//Exercício Simulação com coelhos
//Autor: Lizzandra Oliveira Alves Costa
//RA: 151626-2023.

void main (){
  //Variaveis
  double jovens = 0;
  double adultos = 2;
  int mes;

  print('Projeto Procriação: Iniciamos com população de: ${jovens+adultos}, sendo: Jovens $jovens, Adultos $adultos\n');
  //FOR para o looping do projeto
  for (mes = 1; mes <=24; mes++) {

  //Matança após o 12º mês
    if(mes>12){
      adultos = (adultos ~/4).toDouble(); // ~/ usado para reduzir a população em 1/4 reduzindo em 75%.
      jovens = (jovens ~/4).toDouble();
    }

    //Cálculo da Procriação
    adultos += jovens;
    jovens = 0;

    //Procriação
  jovens += adultos;

  final total = jovens+adultos;

  //Procriação em 12 meses
  if (mes <=12) {
    print('Fim do mês $mes: População de Coelhos: $total, Jovens: $jovens, Adultos: $adultos\n');
  //Matança iniciada no 13º mês
  }else {
    print('Fim do mês $mes com a matança: População de Coelhos: $total, Jovens: $jovens, Adultos: $adultos');
  }

  }
}
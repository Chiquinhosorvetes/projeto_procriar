import 'dart:mirrors';

void main (){

  //Coelhos jovens
   int jovens = 0;

   //Coelhos adultos
   int adultos = 2;

   //Mês 
   int mes = 1;

   print("=====Etapa de procriação=====\n");
   

   //Procriação em 12 meses
   for (mes = 1; mes<=12; mes++){
    
    int novoscoelhosAdultos = jovens; // Coelhos viram adultos
    int novoscoelhosJovens = adultos; // PRocriam pra jovens

    //Atualizando o ninho
    adultos += novoscoelhosAdultos;
    jovens += novoscoelhosJovens;

    //População total de coelhos

    int total = jovens + adultos;

  print("Fim do mês $mes: População de coelhos: $total, Jovens: $jovens, Adultos: $adultos");
}

   print("\n\n=====Etapa de caça=====" );

   //Depois do 12º mês chega um predador
   for (mes = 13; mes <= 24; mes++){
    //Continuamos com a procriação

    int novoscoelhosAdultos = jovens;
    int novoscoelhosJovens = adultos;

    adultos += novoscoelhosAdultos; // Continuamos atualizando 
    jovens = novoscoelhosJovens;

    //Agora vamos começar a matança onde (75%morre, e sobram 25%)

    adultos = (adultos * 0.25).toInt();
    jovens = (jovens * 0.25).toInt();

    int total = jovens + adultos;

    print("Fim do mês $mes: População total de coelhos depois da matança: $total");
  }

}
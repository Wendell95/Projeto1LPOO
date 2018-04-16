algoritmo "semnome"

// Autor(a)    : Wendell Rodrigues viana  / CPD:42785
// Data atual  : 21/03/2018
var   //Declaracao de variaveis
decimal, numero, sexo, r, cont,idade,Op,x, id1, id2,contadorHomem, contadorMulher,contador, i, p, a,b, m, d, menu, con: inteiro
 n1,n2, soma, sub, divi, idademasculino, idadefeminino, idadegeral,media: real
 Binario: caracter


Inicio
   //Opcão de escolha das operações
      escreval ("------------MENU----------")
      escreval("Digite o número da opção desejada: ")
      escreval("1. Soma")
      escreval ("2. Subtração")
      escreval ("3. Divisão")
      escreval ("4. Faixa Etária")
      escreval ("5. Números Primos")
      escreval ("6. Mudança de base")
      escreval ("7. Sair")
      leia (op)
      
    //1. Digitar dois numeros e apresentar a soma
    
         se op=1 entao
         
        limpatela
        //Digitar os numeros e o para...faca faz o usuario so pode digitar dois numeros
          repita
              escreva("Digite o primeiro numero: ")
              leia (n1)
              escreva ("Digite o segundo numero:")
              leia (n2)
              //Somar os numeros digitados
              soma<-n1+n2
              //apresentar a soma
              escreval("Resultado:",soma)
              escreval ("Se deseja continuar aperte: 1")
              Escreval ("Deseja voltar ao menu anterior, tecle: 2")
              leia(con)
           ate (con=2)
        fimse
     
     //(*-------------------------------------------------------------------------------------------------------------------------------------*)
     
      //2. Digitar dois numeros e apresentar a subtracao
      
     se op=2 entao
     
        limpatela
        //Digitar os numeros e o para...faca faz o usuario so pode digitar dois numeros
        repita
              escreva ("Digite o primeiro numero: ")
              leia (n1)
              escreva("Digite o segundo numero:")
              leia (n2)
              //subtrair os numeros digitados
              sub<-n1-n2
              //Mostrar o resultado dos numeros digitados
              escreval ("Resultado:",sub)
              escreval ("Se deseja continuar aperte: 1")
              Escreval ("Deseja voltar ao menu anterior, tecle: 2")
              leia (con)
        ate(con=2)
     fimse
     
    //("-------------------------------------------------------------------------------------------------------------------------------")
     
     //3. Digitar dois numeros e apresentar a divisao
     
     se op=3 entao
        limpatela
        //Digitar os numeros e o para...faca faz o usuario so pode digitar dois numeros
        repita
              escreva ("Digite os numeros a serem divididos:")
              leia (n1)
              escreva ("Digite o segundo numero:")
              leia (n2)
              //Dividir os numeros digitados
              divi<-n1/n2
              //Apresentar o resultado
              escreval ("Resultado:",divi)
              escreval ("Se deseja continuar aperte: 1")
              Escreval ("Deseja voltar ao menu anterior, tecle: 2")
              leia (con)

        ate(con=2)
     fimse
     
     //("*-------------------------------------------------------------------------------------------------------------------------------------*)
     
//4. Faixa etária: A pessoa entra com uma quantidade de pessoas. Depois peça para cada
//pessoas a idade e sexo. Mostre a média da idade das pessoas e a média das
//idades de cada sexo

     se op=4 entao

     limpatela
     //Entrar com a quantidade de pessoas
      escreval ("Digite a quantidade de pessoas")
      leia (numero)
      limpatela
         //usar o para...faca pra contar o numero de pessoas digitadas
        para x de 1 ate numero passo 1 faca

               //informar o sexo e a idade e escolher se a pessoa digitada e do sexo masculino ou feminino
             escreval ("Informe seu sexo: ")
             escreval ("Digite 1 para Masculino | Digite 2 para Feminino")
             leia (sexo)
             escreval ("Informe sua idade:")
             leia (idade)
             //Contar cada uma das pessoas digitadas
             contador<- contador+1
             limpatela
             //fazer o calculo da media de idade masculina e feminina
                se sexo=1 entao
                   contadorHomem<-contadorHomem+1
                   idademasculino<-(idademasculino+idade)/contadorHomem
                fimse
                se sexo= 2 entao
                   contadorMulher<-contadorMulher+1
                   idadefeminino<-(idadefeminino+idade)/contadorMulher
                fimse

                // Calcular a media de idade dos dois sexos
             idadegeral<-idadegeral+idade
             media<-idadegeral/contador


         fimpara
         //Mostrar o resultado final
             escreval ("A idade média geral =",media)
             escreval ("A idade média entre pessoas do sexo Masculino = ",idademasculino)
             escreval ("A idade média entre pessoas do sexo Feminino =",idadefeminino)
       fimse


       //("*--------------------------------------------------------------------------------------------------------------------------------------------*)
       
       
//5.  Numeros primos: Calcule a soma de todos os numeros primos existentes entre 1 e um numero
//informado pelo usuario;

       se op=5 entao
        limpatela
        //Digitar o numero
        escreval("Digite um numero")
        leia (numero)
        limpatela
       //usar o para...faca para ler do numero 1 ate o numero digitado
           para cont de 1 ate numero faca
                p <- 0
                soma <- 1
      //usar o para...faca para ler do numero 1 ate o numero primo que chega proximo do valor digitado
           para i de 1 ate cont faca
                se cont mod i = 0 entao
                p <- p + 1
                fimse
           fimpara
           // usar a estrutura se pra ler somente os numeros primos
                se numero mod cont = 0 entao
                soma <- cont + numero
                fimse
                se (p = 2) entao
                escreval(cont)
                fimse
           fimpara
           //Mostrar a soma dos numeros digitados
             escreval ("soma:", soma)
      fimse
        
        //("*----------------------------------------------------------------------------------------------------------------------------*")
        
// 6. Mudanca de Base. A entrada pedira a quantidade de numero para o usuario. Receba
//um inteiro N, indicando o numero de casos que virao a seguir, um
//por linha. Cada caso contem um valor X (X > 0) seguido de um texto
//Y com um caractere, indicando se o valor X esta no formato binario
//ou decimal. Se o usuario informar um numero binario, apresente
//esse numero decimal. Caso o usuario informe um numero decimal
//apresente o numero binario.

       se op= 6 entao

     //Escolher se a conversao vai ser decimal para binario ou binario para decimal
          escreval("Digite o menu")
          leia(menu)
          escolha(menu)
         //Decimal para binario
          caso 10
          
         limpatela
         //Entrar com o numero decimal
         escreval("Digite um numero")
         leia(numero)
         //Guardar o valor decimal
         decimal <- numero

           //Começar a fazer a conversão do numero digitado com o para...faca em ordem decrescente
           para cont de 7 ate 0 passo -1 faca
                       //Mostrar o resto da divisao que sobrou zero
                      se (numero mod 2) = 0 entao
                      Binario <- "0" + Binario
                      fimse
                      //Mostrar o resto da divisao que sobrou 1
                      se (numero mod 2) = 1 entao
                      Binario <- "1" + Binario
                      fimse
                    //Dividir por 2 o numero digitado e converter para binario
                              numero <- numero div 2
           fimpara

           //Mostrar a conversão na tela
          escreval("binario:", decimal, " e ", Binario)

          //----------------------------------------------------------------------------------------------------------------------------------

          //Binario para decimal
         caso 100

           limpatela
         //Digitar o numero binario
         escreva("Informe um número binário: ")
         leia(numero)
         //Guardar o valor binario e preparar o processo de conversao
         i <- numero
         cont <- 0
         m <- 1
         //Continuar com o processo de conversao
           repita
           // multiplicar o resto da divisao
                  cont <- cont + (i mod 2) * m
                  //divisao do numero guardado
                  i <- i \ 10
                  //multiplicacao da divisao efetuada
                  m <- m  * 2
           ate (i = 0)//Não e permitido numero negativo na conversao, mostrar ate o numero 0

           //Mostrar na tela a conversao em decimal
           escreval("O número binário: ", numero, " numero decimal: ", cont)
        fimescolha
        fimse
        
        //("---------------------------------------------------------------------------------------------------------------------------------")
        
  //7. Sair do programa caso não faça nenhuma atividade
       se op=7 entao
       limpatela
          escreval("Programa finalizado!")
       fimse
       


fimalgoritmo

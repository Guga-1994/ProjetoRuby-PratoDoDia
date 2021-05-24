            #language:pt

            Funcionalidade: Qual é o prato do dia
            Queremos saber qual o prato do dia na capital paulista

            #Cenario: Hoje é dia de Virado a Paulista
            #precondição(preparação);
            #quando se coloca um termo entre aspas que dizer
            #que ele se tornará um parâmetro, no caso "segunda-
            #feira";
            #Dado que hoje é "segunda-feira"
            #ação
            #Quando eu pergunto qual é prato do dia
            #verificação
            #Então a resposta deve ser 'Virado a Paulista'



            #o "Esquema de cenário" é usado quando temos os cenarios
            #de teste que apresenta um comportamento igual, ou seja
            #temos um cenário com multiplos exemplos, só variando os
            #valores de entrada e de saída, (no ex: o dia da semana e
            #a comida). Temos então um único BDD. Ele é usado exclusi-
            #vamente para fins de automação.
            Esquema do Cenario: Prato do dia

            Dado que hoje é <dia>
            Quando eu pergunto qual é prato do dia
            Então a resposta deve ser <resposta>

            #funciona como um for each, onde percorre por cada cenario
            #executando os testes
            Exemplos:
            | dia             | resposta            |
            | "segunda-feira" | "Virado a Paulista" |
            | "terça-feira"   | "Dobradinha"        |
            | "quarta-feira"  | "Feijoada"          |
            | "quinta-feira"  | "Macarronada"       |
            | "sexta-feira"   | "Filé de Merluza"   |
            | "sábado"        | "Veja o Cardápio"   |
            | "domingo"       | "Fechado"           |





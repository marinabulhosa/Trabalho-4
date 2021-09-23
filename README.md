# Trabalho-4
Trabalho final em haskell


  Quarto trabalho de Linguagem de Programação - Implementar o mesmo problema escolhido no Terceiro Trabalho utilizando a linguagem Haskell, ou seja, usando o paradigma funcional. 

 ##Implementação
 
Implemente uma agenda telefônica usando um vetor ou lista de objetos. Cada contato da agenda deve ser representado como uma classe, a qual conterá informações como nome, telefone, endereço e relação (nome de empresa ou nome de pessoa físicaque se refere este contato, uma espécie de lembrete). A agenda deve ser implementada como uma outra classe, a qual conterá o vetor ou lista de objetos (contatos). Caso seja um vetor, uma agenda pode armazenar até 1000 contatos (Como sugestão, pode ser  criado um campo último, o qual guarda a última posição inserida no vetor e evita que este seja percorrido por completo em cada operação). Deve ser criada uma terceira classe, chamada Principal, a qual utilizará as classes criadas anteriormente. Além disso faça:
    
 (a) Implemente um método de busca na agenda, o qual recebe um nome, ou parte deste, e retorna o contato. Caso haja mais de um contato, a busca deve retornar apenas o primeiro.
    
 (b) Implemente métodos de inserção, alteração e remoção de contatos da agenda. Caso o nome de um contato sendo inserido já exista na agenda, a inserção se torna uma alteração.
    
 (c) Implemente um método para listar os contatos de uma agenda.
    
 (D) Insira o seguintes contatos na agenda: 
    
                                             Nome       Telefone  Endereço    Relação
                                            Fulano      99999999    Rua A       UFF
                                            Ciclano     88888888    Rua B     Cederj   
                                            Beltrano    88889999    Rua C     Infância

 (E)Chame o método de inserção novamente para o contato Fulano, 77777777, Rua D; remova o contato Ciclano e liste o conteúdo da agenda.

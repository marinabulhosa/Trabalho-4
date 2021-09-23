module Main where


data Contato = Contato {nome :: [Char], telefone :: Integer, endereco :: [Char], relacao :: [Char]} deriving Show 

type Agenda = [Contato]
	
buscar :: Agenda -> [Char] -> Contato
buscar [] nome_do_item = Contato "" 0 "" ""
buscar (x:xs) nome_do_item
  |(nome x == nome_do_item) = x
  |otherwise = buscar xs nome_do_item
  
  
inserir :: Agenda -> Contato -> Agenda
inserir [] item = [item]
inserir (x:xs) item
  |(nome x == nome item) = item : xs
  |otherwise = x : inserir xs item


remover :: Agenda -> [Char] -> Agenda
remover [] nome_do_item = []
remover (x:xs) nome_do_item
  |(nome x == nome_do_item) = xs
  |otherwise = x: remover xs nome_do_item


listar :: Agenda -> [Contato]
listar agenda = map (\x -> x) agenda

               
main :: IO ()
main = do
    let agenda = []
    let agenda1 = inserir agenda (Contato "Fulano" 999999999 "Rua a" "Pessoa")
    print(listar agenda1) 
    let agenda2 = inserir agenda1 (Contato "Beltrano" 77777777 "Rua c" "Pessoa")
    print(listar agenda2) 
    let agenda3 = inserir agenda2 (Contato "Ciclano" 888888888 "Rua b" "Pessoa")
    print(agenda3)
    let agenda4 = inserir agenda3 (Contato "Ciclano" 941551 "Rua f" "Ator")
    print(agenda4)
    let agenda5 = inserir agenda4 (Contato "Fulano" 587875 "Rua g" "Aluno")
    print(agenda5)
    print(buscar agenda5 "Beltrano")
    print(buscar agenda5 "Ciclano")
    print(buscar agenda5 "Fulano")
    print(listar(remover agenda4 "Fulano"))

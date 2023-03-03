extends Node2D

# as variaveis teste e valor foram apagadas pois não foram usadas
var numero = 0
#padronizar a palavra numero, sem acento e sem letra maiúscula
var lista = []
#a variável lista não estava declarada
var nome: String
#declarar que a variável é uma string 
#a variável nome não estava declarada

func _on_Button_pressed():
	#Coletando dados inseridos pelo usuário
	numero = int($LineEdit.text)
	#LineEdit não estava com o $ antes do nome
	#a variavel numero estava acentuada
	nome = $LineEdit.text
	nome = nome.split(" ")[1]
	#declaramos que o split deve ser a tecla shift
	$Label.text = nome
	#função para que apareça o nome sem o numero no label
	print(nome)
	print(numero)

func _on_Button2_pressed():
	#Incrementando o número inserido pelo usuário
	for i in range(10):
		numero+=i
		#a variável numero estava com letra maiúscula
		lista.append(numero)
		# a variável numero não estava com letra maiúscula
		#necessário colocar str antes 
	$Label.text = str(numero)
	#declarei como str
	print (lista)



func _on_Button3_pressed():
	#Mudando o nome do usuário de acordo com os dados da lista
	#Se houver algum número ímpar o nome deve adicionar "baldo" ao final
	#declararei  as variáveis cont e i 
	
	var cont = 0
	var i = 0
	
	# tirei i = 0 e cont = 0 de dentro do while
	while len(lista) > i: #declarando um intervalo para que 
		if(lista[i]%2==1):
			cont+=1
		if(cont==0): #mudei o sinal de diferente para igual e assim aparecer baldo somente uma vez
			nome = nome+"baldo \n"# declarei quebra de linha
		i += 1 #finalizei o loop
		$Label2.text = nome

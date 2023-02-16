extends Node2D

var lista = []


func _on_btn_lista_automtica_pressed():
	var todos_os_itens = "maça banana salsa água tapioca"
	var item_cortado = todos_os_itens.split(" ")
	print(item_cortado) 
	
	for item in item_cortado:
		$RichTextLabel.text += (item+ "\n")
	



func _on_btn_lista_personalizada_pressed():
	var todos_os_itens = $LineEdit.text
	var item_cortado = todos_os_itens.split(" ")
	print(item_cortado) 
	
	for item in item_cortado:
		$RichTextLabel.text += (item+ "\n")



func _on_btn_apagar_pressed():
	$RichTextLabel.text = ""
	

func retornar_texto(texto_do_usuario):
	$RichTextLabel.text = texto_do_usuario
	$LineEdit.text = ""
	


func _on_btn_criar_texto_pressed():
	retornar_texto($LineEdit.text)
	pass # Replace with function body.

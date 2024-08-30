extends Button


# rainbow, bi, trans, aro, pan, lesbian, asexual, poly and nonbinary?

func _on_button_pressed():
	var gayArray = ["Rainbow", "Bi", "Trans", "Pan", "Lesbian", "Poly", "Nonbinary", "Asexual"]
	var Rainbow = preload("res://images/gaycows/Rainbow.png")
	var Bi = preload("res://images/gaycows/Bi.png")
	var Trans = preload("res://images/gaycows/Trans.png")
	var Pan = preload("res://images/gaycows/Pan.png")
	var Lesbian = preload("res://images/gaycows/Lesbian.png")
	var Poly = preload("res://images/gaycows/Poly.png")
	var Nonbinary = preload("res://images/gaycows/Nonbinary.png")
	var Asexual = preload("res://images/gaycows/Asexual.png")

	var RainbowMilk = preload("res://images/milk/Rainbow.png")
	var BiMilk = preload("res://images/milk/Bi.png")
	var TransMilk = preload("res://images/milk/Trans.png")
	var PanMilk = preload("res://images/milk/Pan.png")
	var LesbianMilk = preload("res://images/milk/Lesbian.png")
	var PolyMilk = preload("res://images/milk/Poly.png")
	var NonbinaryMilk = preload("res://images/milk/Nonbinary.png")
	var AsexualMilk = preload("res://images/milk/Asexual.png")


	var cowArray = [["Rainbow", Rainbow], ["Bi", Bi], ["Trans", Trans], ["Pan", Pan], ["Lesbian", Lesbian], ["Poly", Poly], ["Nonbinary", Nonbinary], ["Asexual", Asexual]]
	var milkArray= [["Rainbow", RainbowMilk], ["Bi", BiMilk], ["Trans", TransMilk], ["Pan", PanMilk], ["Lesbian", LesbianMilk], ["Poly", PolyMilk], ["Nonbinary", NonbinaryMilk], ["Asexual", AsexualMilk]]
	var listLabel = get_node("../Label")
	var randomNumber = randi() % gayArray.size()
	if listLabel.text != "":
		#print_debug("Label populated")
		#listLabel.text = gayArray[randomNumber]
		var cow = get_node("../Cow")
		var milk = get_node("../Milk")
		cow.set_texture(cowArray[randomNumber][1])
		#print_debug(cowArray[randomNumber][1])
		milk.set_texture(milkArray[randomNumber][1])
		#print_debug(milkArray[randomNumber][1])
	print_debug("Button Pressed")

extends ItemList


var apple = preload("res://images/food/apple.png")
var blueberry = preload("res://images/food/blueberry.png")
var blackseasame = preload("res://images/food/blacksesameseedsnack.png")
var brusselsprouts = preload("res://images/food/brusselsprouts.png")
var charcoal = preload("res://images/food/charcoalash.png")
var grapes = preload("res://images/food/grapes.png")
var lemon = preload("res://images/food/lemon.png")
var orange = preload("res://images/food/orange.png")
var saltlick = preload("res://images/food/saltlick.png")
var seasalt = preload("res://images/food/seasalticecream.png")
var strawberry = preload("res://images/food/strawberry.png")
var weed = preload("res://images/food/weed.png")
var ingredientArray = [[apple, "red"], [blueberry, "blue"], [blackseasame,"black"], [brusselsprouts, "green"], [charcoal, "gray"], [grapes, "purple"],[lemon, "yellow"], [orange, "orange"], [saltlick, "white"], [seasalt, "teal"], [strawberry, "pink"], [weed, "green"]]

var appleMetadata = ["apple", "red"]
var blueberryMeta = ["blueberry", "blue"]
var blackseasameMeta = ["blackseasame", "black"]
var brusselsproutsMeta = ["brusselsprouts", "green"]
var charcoalMeta = ["charcoal", "gray"]
var grapesMeta = ["grapes", "purple"]
var lemonMeta = ["lemon", "yellow"]
var orangeMeta = ["orange", "orange"]
var saltlickMeta = ["saltlick", "white"]
var seasaltMeta = ["seasalticecream", "teal"]
var strawberryMeta = ["strawberry", "pink"]
var weedMeta = ["weed", "green"]

@onready var selectedItems = get_node("../SelectedItems")
#@onready var listLabel = get_node("../Label")
# var visitedMarket = false
var numberSelected = 0
var ingredient1
var ingredient2
var ingredient3
var ingredient4
var ingredient5
var ingredient6


@export var visitedMarket = false

func _ready():
	print_debug("Farming Market List Scene Ready")
#	print_debug(get_node("../SelectedItems"))
	#print_debug(selectedItems)
	add_item("Apple", apple)
	add_item("Blueberry", blueberry)
	add_item("Black Seasame Seed Snack", blackseasame)
	add_item("Brussel Sprouts", brusselsprouts)
	add_item("Charcoal", charcoal)
	add_item("Grapes", grapes)
	add_item("Lemon", lemon)
	add_item("Orange", orange)
	add_item("Salt Lick", saltlick)
	add_item("Sea Salt Ice Cream", seasalt)
	add_item("Strawberry", strawberry)
	if visitedMarket == true:
		add_item("Weed", weed)

	item_selected.connect(_on_item_selected)
	print_debug("Farming Market List Scene Done")





func _on_item_selected(index):
	# ingredient1 = get_item_text(index)
	# numberSelected += 1
	print_debug("Clicked")
	print_debug(index)
	print_debug(get_item_text(index))
	var listLabel = get_node("../Label")
	if ingredient1 == null:
		ingredient1 = get_item_text(index)
		listLabel.text = ingredient1
	elif ingredient2 == null:
		ingredient2 = get_item_text(index)
		listLabel.text = ingredient1 + "\n" + ingredient2
	elif ingredient3 == null:
		ingredient3 = get_item_text(index)
		listLabel.text = ingredient1 + "\n" + ingredient2 + "\n" + ingredient3
	elif ingredient4 == null:
		ingredient4 = get_item_text(index)
		listLabel.text = ingredient1 + "\n" + ingredient2 + "\n" + ingredient3 + "\n" + ingredient4
	elif ingredient5 == null:
		ingredient5 = get_item_text(index)
		listLabel.text = ingredient1 + "\n" + ingredient2 + "\n" + ingredient3 + "\n" + ingredient4 + "\n" + ingredient5
	elif ingredient6 == null:
		ingredient6 = get_item_text(index)
		listLabel.text = ingredient1 + "\n" + ingredient2 + "\n" + ingredient3 + "\n" + ingredient4 + "\n" + ingredient5 + "\n" + ingredient6
	if ingredient1 != null and ingredient2 != null and ingredient3 != null and ingredient4 != null and ingredient5 != null and ingredient6 != null:
		print_debug("Hi!")

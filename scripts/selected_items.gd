extends ItemList

var farmingMarketList = preload("res://scripts/farmingMarketList.gd")

func _ready():
	print_debug("Selected Items Scene Ready")
	#print_debug(get_node("../FarmingMarketList"))
	print_debug(farmingMarketList)
	#add_item("Apple", farmingMarketList.apple)

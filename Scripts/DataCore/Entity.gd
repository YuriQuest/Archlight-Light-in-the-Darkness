extends CharacterBody2D
class_name entity

var entity_info = {
	"name":"",
	"surname":"",
	"race":"",
	"class":"",
	"level":"",
	"status": {
		"strength":"",
		"dexterity":"",
		"constitution":"",
		"intelligence":"",
		"wisdom":"",
		"charisma":"",
	},
}

func _init() -> void:
	print(entity_info["name"])

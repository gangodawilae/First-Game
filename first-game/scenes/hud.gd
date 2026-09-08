extends Control

@onready var score_label: Label = $CoinTexture/ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func update_score(score):
	score_label.text = str(score)

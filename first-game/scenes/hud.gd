extends Control

@onready var score_label: Label = $CoinTexture/ScoreLabel

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await get_tree().process_frame
	#EventBus.score_updated.connect(update_score)
	

func update_score(score):
	score_label.text = str(score)

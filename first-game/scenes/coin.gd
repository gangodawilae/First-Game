extends Area2D





func _on_body_entered(body: Node2D) -> void:
	#EventBus.coin_collected.emit()
	print("+1 coin!")
	queue_free()
	

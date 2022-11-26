extends Area2D

export var scene: PackedScene

func _on_Area2D_body_entered(body):
	$AnimationPlayer.play("fade_in")
	yield($AnimationPlayer,"animation_finished")
	get_tree().change_scene_to(scene)

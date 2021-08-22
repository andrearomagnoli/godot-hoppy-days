extends Area2D

func _on_JumpPad_body_entered(body):
	if body.has_method("boost"):
		$BoostAnimation.play("boost")
		body.boost()

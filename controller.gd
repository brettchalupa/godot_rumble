extends Node

@export var jid: int # joystick id

# Called when the node enters the scene tree for the first time.
func _ready():
	$ID.text = "ID:\n%s" % jid
	$Name.text = "NAME:\n" + Input.get_joy_name(jid)
	$GUID.text = "UID:\n" + Input.get_joy_guid(jid)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_rumble_button_pressed():
	Input.start_joy_vibration(jid, 0.5, 0.5, 1.0)


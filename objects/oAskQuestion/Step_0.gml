var _x = window_get_width() / 2 - sprite_get_width(sTextBox) / 2;
var _y = window_get_height() - sprite_get_height(sTextBox);

if (talkedTo) {
	
	if ( ! askedQuestion) {
		askedQuestion = true;
		textBox = instance_create_layer(_x, _y, "Instances", oTextBox);
		with (textBox) {
			text = "Hey, is this working?"
		}
		instance_create_layer(textBox.x, textBox.y - sprite_get_height(sTextBox) - 1, "Instances", oYes);
		instance_create_layer(textBox.x + sprite_get_width(sTextBox) - sprite_get_width(sNo), textBox.y - sprite_get_height(sTextBox) - 1, "Instances", oNo);
    }

	if (response == "Yes") {
		textBox = instance_create_layer(_x, _y, "Instances", oTextBox);
		with (textBox) {
			text = "Great! Good to know."
		}
		talkedTo = false;
		askedQuestion = false;
		response = "";
	} else if (response == "No") {
		textBox = instance_create_layer(_x, _y, "Instances", oTextBox);
		with textBox {
			text = "Darn, lets figure this out."
		}
		talkedTo = false;
		askedQuestion = false;
		response = "";
	}
}
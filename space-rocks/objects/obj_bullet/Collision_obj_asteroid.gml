/// @description Insert description here
// You can write your code in this editor
score += 10
instance_destroy()
audio_play_sound(snd_die, 1, false);

with(other) {
	instance_destroy()
	
	if(sprite_index == spr_asteroid_huge) {
		repeat(2) {
			var med_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			med_asteroid.sprite_index = spr_asteroid_med
		}
	} else if(sprite_index == spr_asteroid_med) {
		repeat(2) {
			var med_asteroid = instance_create_layer(x,y,"Instances", obj_asteroid);
			med_asteroid.sprite_index = spr_asteroid_small
		}
	}
	
	repeat(10) {
		instance_create_layer(x,y,"Instances", obj_debris);
	}
}
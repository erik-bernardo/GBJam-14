if  (global.pause) exit;

velv+=0.1
velh = 0

if keyboard_check_pressed(ord("R"))
{ room_restart()}

if keyboard_check(vk_left)
{
	velh = -1;
}

if keyboard_check(vk_right)
{
	velh = 1;
}

if place_meeting(x,y+1,oSolid)
{
	velv=0
	if keyboard_check(vk_up)
	{ velv =-2}
}
if place_meeting(x,y+1,oBox)
{
	velv=0
	if keyboard_check(vk_up)
	{ velv =-2}
}


move_and_collide(velh, velv, oSolid)

if place_meeting(x,y, oFlag)
{
	room_goto_next()
}

if place_meeting(x,y+1, oSpike)
{
	room_restart()
}

var push_list = ds_list_create()
var isblock_h = instance_place_list(x+velh,y,oBox,push_list,false);

if(isblock_h){
	if(ds_list_size(push_list) > 0) {
		for(var i=0; i < ds_list_size(push_list);i++){
			var block = push_list [| i];
			with(block){
				if(!place_meeting(x+other.velh,y,oSolid))
				x+=other.velh;
				
			}
		}
	}
}


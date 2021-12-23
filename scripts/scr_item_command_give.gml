///scr_item_command_give(item_id);
repeat(10)
                  {
                  i=instance_create(obj_player.x,obj_player.y,obj_item)
                  i.index=argument0
                  i.item_index=spr_solid
                  }

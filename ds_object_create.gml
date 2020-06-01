/// @param {ds_type_*}type
/// @param {real}width[undefined]
/// @param {real}height[undefined]
/// DESCRIPTION: Creates a ds_* as a generic type encapsulated by an array.

var dsobject = 0,
	type = argument[0];

#macro ds_type_array -1
#macro ds_type_2darray -2
#macro ds_type_tuple -3

switch(type) {
	case ds_type_list:
		dsobject[DS_OBJECT] = ds_list_create();
	break;
	case ds_type_grid:
		dsobject[DS_OBJECT] = ds_grid_create(argument[1], argument[2]);
	break;
	case ds_type_map:
		dsobject[DS_OBJECT] = ds_map_create();
	break;
	case ds_type_queue:
		dsobject[DS_OBJECT] = ds_queue_create();
	break;
	case ds_type_stack:
		dsobject[DS_OBJECT] = ds_stack_create();
	break;
	case ds_type_priority:
		dsobject[DS_OBJECT] = ds_priority_create();
	break;
	case ds_type_array:
		dsobject[DS_OBJECT] = array_create(argument[1],0);
	break;
	case ds_type_2darray:
		dsobject[DS_OBJECT] = array_create(argument[1] * argument[2], 0);
	break;
	case ds_type_tuple:
		dsobject[DS_OBJECT] = array_create(2,0);
		var arr = dsobject[DS_OBJECT];
		arr[0] = argument[1];
		arr[1] = argument[2];
	break;
}

dsobject[DS_TYPE] = type;
return dsobject;
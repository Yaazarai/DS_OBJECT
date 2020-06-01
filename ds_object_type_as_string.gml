/// @param {ds_type_*}type
/// DESCRIPTION: Returns the ds_type_* of the DS Object as a string.

switch(argument[0]) {
	case ds_type_list:
		return "ds_type_list";
	break;
	case ds_type_grid:
		return "ds_type_grid";
	break;
	case ds_type_map:
		return "ds_type_map";
	break;
	case ds_type_queue:
		return "ds_type_queue";
	break;
	case ds_type_stack:
		return "ds_type_stack";
	break;
	case ds_type_priority:
		return "ds_type_priority";
	break;
	case ds_type_array:
		return "ds_type_array";
	break;
	case ds_type_2darray:
		return "ds_type_2darray";
	break;
}
/// @param {ds_type_*}type
/// @param {ds_object}source
/// DESCRIPTION: Creates a ds_* as a generic type encapsulated by an array manually.

var dsobject = 0,
	type = argument[0];
   
dsobject[DS_OBJECT] = argument[1];
dsobject[DS_TYPE] = type;
return dsobject;
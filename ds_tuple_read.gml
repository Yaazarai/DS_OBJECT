/// @param {ds_object}source
/// @param {any type}index
/// DESCRIPTION: Reads a value from the tuple.

var ds = argument[0];

if (!ds_object_is_valid(ds) || ds_object_type(ds) != ds_type_tuple)
	return 0;
	
var tuple = ds_object_source(ds);
return tuple[argument[1]];
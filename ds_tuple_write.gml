/// @param {ds_object}source
/// @param {any type}index
/// @param {any type}value
/// DESCRIPTION: Writes a value to the tuple.

var ds = argument[0];

if (!ds_object_is_valid(ds) || ds_object_type(ds) != ds_type_tuple)
	return 0;

var tuple = ds_object_source(ds);
tuple[argument[1]] = argument[2];
return 1;
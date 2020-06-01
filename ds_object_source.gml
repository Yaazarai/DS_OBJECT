/// @param {ds_object}source
/// DESCRIPTION: Returns the ds_* source directly.

var ds = argument[0];

if (ds_object_is_valid(ds))
	return ds[@ DS_OBJECT];

return undefined;
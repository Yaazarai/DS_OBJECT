/// @param {ds_object}source
/// DESCRIPTION: Returns an exact copy of the DS Object.

var ds = argument[0];
   
if (is_undefined(ds) || !ds_object_is_valid(ds))
	return 0;
   
var type = ds[@ DS_TYPE],
	clone = (type != ds_type_grid)? ds_object_create(type) : 0,
	object = ds[@ DS_OBJECT],
	cloneobject = clone[@ DS_OBJECT];
   
return ds_object_copy(object, cloneobject);
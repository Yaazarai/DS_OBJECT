/// @param {ds_object}source
/// DESCRIPTION: Checks to see if the DS Object contains an existing valid ds_*.

var ds = argument[0];
return is_array(ds) && ((ds_exists(ds[@ DS_OBJECT], ds[@ DS_TYPE])) || is_array(ds[@ DS_OBJECT]));
/// @param {ds_object}source
/// DESCRIPTION: Returns the ds_type_* of the DS Object.

var ds = argument[0];

if (is_array(ds)) {
	if (ds_exists(ds[@ DS_OBJECT], ds[@ DS_TYPE])) {
		return ds[@ DS_TYPE];
	}
}
return undefined;
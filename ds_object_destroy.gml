/// @param {ds_object}source
/// DESCRIPTION: Deletes the contents of the DS Object (not the underlying array).

var ds = argument[0];
   
if (is_undefined(ds) || !ds_object_is_valid(ds))
    return 0;
   
switch(ds[@ DS_TYPE]) {
    case ds_type_list:
        ds_list_destroy(ds[@ DS_OBJECT]);
    break;
    case ds_type_grid:
        ds_grid_destroy(ds[@ DS_OBJECT]);
    break;
    case ds_type_map:
        ds_map_destroy(ds[@ DS_OBJECT]);
    break;
    case ds_type_queue:
        ds_queue_destroy(ds[@ DS_OBJECT]);
    break;
    case ds_type_stack:
        ds_stack_destroy(ds[@ DS_OBJECT]);
    break;
    case ds_type_priority:
        ds_priority_destroy(ds[@ DS_OBJECT]);
    break;
}
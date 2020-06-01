/// @param {ds_object}source
/// @param {ds_object}destination
/// DESCRIPTION: Copies the contents of the source DS Object into the destination DS Object.

var srce = argument[0], dest = argument[1];
   
if (is_undefined(dest) || !ds_object_is_valid(dest) || srce[@ DS_TYPE] != dest[@ DS_TYPE])
    return 0;
   
switch(srce[@ DS_TYPE]) {
    case ds_type_list:
        ds_list_copy(srce, dest);
    break;
    case ds_type_grid:
        ds_grid_copy(srce, dest);
    break;
    case ds_type_map:
        ds_map_copy(srce, dest);
    break;
    case ds_type_queue:
        ds_queue_copy(srce, dest);
    break;
    case ds_type_stack:
        ds_stack_copy(srce, dest);
    break;
    case ds_type_priority:
        ds_priority_copy(srce, dest);
    break;
}
   
return dest;
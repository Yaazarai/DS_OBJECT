# DS_OBJECT
A wrapper for GML data structures for type checking.

DS_OBJECT_CREATE will create any of the specified GML data structures given an optional parameter for [width/length] or [height] as required by each data structure.
```GML
ds_object_create(type, width[optional], height[optional]);
```
DS_OBJECT_CLONE will create a copy of the ds_object and it's data that you pass to it and return the new copy.
```GML
ds_object_clone(ds_object);
```
DS_OBJECT_COPY will copy the contents of the `source` ds_object to the `destination` ds_object.
```GML
ds_object_copy(source, destionation);
```
DS_OBJECT_DESTROY will delete the ds_object you pass to it from dynamic memory.
```GML
ds_object_destroy(ds_object);
```
DS_OBJECT_IS_VALID will check if a ds_object and it's associated data structure exist.
```GML
ds_object_is_valid(ds_object);
```
DS_OBJECT_SOURCE will return the source ID for the data structure in the ds_object (or undefined, if not valid).
```GML
ds_object_source(ds_object);
```
DS_OBJECT_TYPE will return the type of the data structure in the ds object.
```GML
ds_object_type(ds_object);
```
DS_OBJECT_TYPE_STR will return the type name as a string of the data structure in the ds object (or undefined, if not valid).
```GML
ds_object_type_str(ds_type_*);
```
DS_TUPLE_READ will return either the first or second value of the tuple.
```GML
ds_tuple_read(ds_object, index[0, 1]);
```
DS_TUPLE_WRITE will write a `value` to the tuple at an `index[0 or 1]`.
```GML
ds_tuple_read(ds_object, index[0 or 1], value);
```

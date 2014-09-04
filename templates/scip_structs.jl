# Containers for SCIP structures
import Base: pointer

{% for type_name in parser.structs|sort %}type {{ type_name }}_t
    array_ptr_{{ type_name|lower }}::{{ 'Array{Ptr{_%s}}'|format(type_name) }}
end
{% endfor %}
# Pointer and array access functions
{% for type_name in parser.structs|sort %}array({{ type_name|lower }}::{{ type_name }}_t) = {{ type_name|lower }}.array_ptr_{{ type_name|lower }}
pointer({{ type_name|lower }}::{{ type_name }}_t) = array({{ type_name|lower }})[1]
{% endfor %}

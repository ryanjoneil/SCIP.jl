# Containers for SCIP structures
import Base: pointer
export {{ parser.structs|sort|sciptype|join(', ') }}

{% for type_name in parser.structs|sort %}type {{ type_name|sciptype }}
    array_ptr_{{ type_name|lower }}::{{ 'Array{Ptr{%s}}'|format(type_name|scipname) }}
end
{{ type_name|sciptype }}() = {{ type_name|sciptype }}({{ 'Array(Ptr{%s, 1})'|format(type_name|scipname) }})
{% endfor %}
# Pointer and array access functions
{% for type_name in parser.structs|sort %}array({{ type_name|lower }}::{{ type_name|sciptype }}) = {{ type_name|lower }}.array_ptr_{{ type_name|lower }}
pointer({{ type_name|lower }}::{{ type_name|sciptype }}) = array({{ type_name|lower }})[1]
{% endfor %}

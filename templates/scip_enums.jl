# SCIP enums
{% for enum_name, enum_vals in parser.enums.items() %}typealias {{ enum_name }} Int8
{% for val_name, val_init in enum_vals.items() %}const {{ val_name }} = int8({{ val_init }})
{% endfor %}
{% endfor %}
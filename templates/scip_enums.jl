# SCIP enums
{% for enum_name, enum_vals in parser.enums.items() %}typealias {{ enum_name|scipname }} Int8
{% for val_name, val_init in enum_vals.items() %}const {{ val_name|scipname }} = int8({{ val_init|scipname }})
{% endfor %}
const {{ enum_name }}_MAP = [{% for val_name in enum_vals %}
    {{ val_name|scipname }} => "{{ parser.enum_desc[val_name].replace('"', '\\"') }}",{% endfor %}
]

{% endfor %}
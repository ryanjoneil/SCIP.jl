# SCIP enums
{% for enum_name, enum_vals in parser.enums.items() %}typealias _{{ enum_name }} Int8
{% for val_name, val_init in enum_vals.items() %}const _{{ val_name }} = int8({{ val_init.replace('SCIP', '_SCIP') }})
{% endfor %}
const {{ enum_name }}_MAP = [{% for val_name in enum_vals %}
    _{{ val_name }} => "{{ parser.enum_desc[val_name].replace('"', '\\"') }}",{% endfor %}
]

{% endfor %}
{# macros/dbt_artifacts/fabric_overrides.sql #}

{% macro fabric__json_value(column, path) %}
JSON_VALUE({{ column }}, '{{ path }}')
{% endmacro %}

{% macro fabric__json_query(column, path) %}
JSON_QUERY({{ column }}, '{{ path }}')
{% endmacro %}

{% macro fabric__openjson_array(column) %}
OPENJSON({{ column }})
{% endmacro %}

{% macro fabric__cast_timestamp(expr) %}
TRY_CAST({{ expr }} AS datetime2)
{% endmacro %}

{% macro fabric__text_type() %}
NVARCHAR(MAX)
{% endmacro %}

{% macro fabric__current_timestamp() %}
SYSUTCDATETIME()
{% endmacro %}

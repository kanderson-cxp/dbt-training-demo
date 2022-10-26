{% macro template_example() %}
    {% set query %}
        select true as bool
    {% endset %}

    {% if execute %}
        {% set results = run_query(query).columns[0].values()[0] %}
        {{ log('SQL results ' ~ results, info=True) }}
    {% endif %}
{% endmacro %}

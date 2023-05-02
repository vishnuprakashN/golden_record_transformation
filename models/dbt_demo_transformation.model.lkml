connection: "demo"

# include all the views
include: "/views/**/*.view"

datagroup: dbt_demo_transformation_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: dbt_demo_transformation_default_datagroup

explore: select_model_3 {}

explore: select_model_4 {}

explore: select_model_2 {}

explore: select_model {}

explore: select_model_5 {}

explore: record_model {}

explore: users {}

explore: golden_source {}

explore: users_table_model {}

view: select_model_2 {
  sql_table_name: `test_dbt.select_model_2`
    ;;

  dimension: company_name {
    type: string
    sql: ${TABLE}.company_name ;;
  }

  dimension: dob {
    type: string
    sql: ${TABLE}.dob ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: occupation {
    type: string
    sql: ${TABLE}.occupation ;;
  }

  dimension: preferred_currency {
    type: string
    sql: ${TABLE}.preferred_currency ;;
  }

  dimension: prefix {
    type: string
    sql: ${TABLE}.prefix ;;
  }

  measure: count {
    type: count
    drill_fields: [company_name, name]
  }
}

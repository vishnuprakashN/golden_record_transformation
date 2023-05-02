view: users {
  sql_table_name: `test_dbt.users`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  dimension_group: dob {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.DOB ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: firstname {
    type: string
    sql: ${TABLE}.Firstname ;;
  }

  dimension: lastname {
    type: string
    sql: ${TABLE}.Lastname ;;
  }

  measure: count {
    type: count
    drill_fields: [id, firstname, lastname]
  }
}

view: customers {
  sql_table_name: public.customers ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: accepts_marketing {
    type: yesno
    sql: ${TABLE}."accepts_marketing" ;;
  }

  dimension: address_city {
    type: string
    sql: ${TABLE}."address_city" ;;
  }

  dimension: address_company {
    type: string
    sql: ${TABLE}."address_company" ;;
  }

  dimension: address_country {
    type: string
    sql: ${TABLE}."address_country" ;;
  }

  dimension: address_country_code {
    type: string
    sql: ${TABLE}."address_country_code" ;;
  }

  dimension: address_country_name {
    type: string
    sql: ${TABLE}."address_country_name" ;;
  }

  dimension: address_first_name {
    type: string
    sql: ${TABLE}."address_first_name" ;;
  }

  dimension: address_full_name {
    type: string
    sql: ${TABLE}."address_full_name" ;;
  }

  dimension: address_last_name {
    type: string
    sql: ${TABLE}."address_last_name" ;;
  }

  dimension: address_line1 {
    type: string
    sql: ${TABLE}."address_line1" ;;
  }

  dimension: address_line2 {
    type: string
    sql: ${TABLE}."address_line2" ;;
  }

  dimension: address_phone {
    type: string
    sql: ${TABLE}."address_phone" ;;
  }

  dimension: address_province {
    type: string
    sql: ${TABLE}."address_province" ;;
  }

  dimension: address_province_code {
    type: string
    sql: ${TABLE}."address_province_code" ;;
  }

  dimension: address_zip {
    type: string
    sql: ${TABLE}."address_zip" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."created_at" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."email" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."first_name" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."last_name" ;;
  }

  dimension: note {
    type: string
    sql: ${TABLE}."note" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."phone" ;;
  }

  dimension_group: shopify_created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."shopify_created_at" ;;
  }

  dimension: shopify_id {
    type: number
    sql: ${TABLE}."shopify_id" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."state" ;;
  }

  dimension_group: updated {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."updated_at" ;;
  }

  dimension: verified_email {
    type: yesno
    sql: ${TABLE}."verified_email" ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      first_name,
      address_full_name,
      address_last_name,
      last_name,
      address_first_name,
      address_country_name
    ]
  }
}

view: discount_codes {
  sql_table_name: public.discount_codes ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: amount {
    type: string
    sql: ${TABLE}."amount" ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}."code" ;;
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

  dimension: discount_type {
    type: string
    sql: ${TABLE}."discount_type" ;;
  }

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
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

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      id,
      orders.billing_address_name,
      orders.billing_address_first_name,
      orders.order_name,
      orders.shipping_address_last_name,
      orders.shipping_address_name,
      orders.billing_address_last_name,
      orders.order_source_name,
      orders.id,
      orders.shipping_address_first_name
    ]
  }
}

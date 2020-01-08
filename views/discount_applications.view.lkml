view: discount_applications {
  sql_table_name: public.discount_applications ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: allocation_method {
    type: string
    sql: ${TABLE}."allocation_method" ;;
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

  dimension: target_selection {
    type: string
    sql: ${TABLE}."target_selection" ;;
  }

  dimension: target_type {
    type: string
    sql: ${TABLE}."target_type" ;;
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

  dimension: value {
    type: string
    sql: ${TABLE}."value" ;;
  }

  dimension: value_type {
    type: string
    sql: ${TABLE}."value_type" ;;
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

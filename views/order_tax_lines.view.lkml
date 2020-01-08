view: order_tax_lines {
  sql_table_name: public.order_tax_lines ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
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

  dimension: order_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."order_id" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension: rate {
    type: number
    sql: ${TABLE}."rate" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
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

view: products {
  sql_table_name: public.products ;;
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

  dimension: shopify_handle {
    type: string
    sql: ${TABLE}."shopify_handle" ;;
  }

  dimension: shopify_id {
    type: number
    sql: ${TABLE}."shopify_id" ;;
  }

  dimension: shopify_title {
    type: string
    sql: ${TABLE}."shopify_title" ;;
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
    drill_fields: [id, line_items.count, product_variants.count]
  }
}

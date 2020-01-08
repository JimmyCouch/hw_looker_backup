view: product_variants {
  sql_table_name: public.product_variants ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }




  dimension: classification {
    type: string
    sql: ${TABLE}."classification" ;;
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

  dimension: product_id {
    type: number
    # hidden: yes
    sql: ${TABLE}."product_id" ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}."quantity" ;;
  }

  dimension: shopify_barcode {
    type: string
    sql: ${TABLE}."shopify_barcode" ;;
  }

  dimension: shopify_compare_at_price {
    type: string
    sql: ${TABLE}."shopify_compare_at_price" ;;
  }

  dimension: shopify_id {
    type: number
    sql: ${TABLE}."shopify_id" ;;
  }

  dimension: shopify_inventory_item_id {
    type: string
    sql: ${TABLE}."shopify_inventory_item_id" ;;
  }

  dimension: shopify_option1 {
    type: string
    sql: ${TABLE}."shopify_option1" ;;
  }

  dimension: shopify_option2 {
    type: string
    sql: ${TABLE}."shopify_option2" ;;
  }

  dimension: shopify_option3 {
    type: string
    sql: ${TABLE}."shopify_option3" ;;
  }

  dimension: shopify_price {
    type: string
    sql: ${TABLE}."shopify_price" ;;
  }

  dimension: shopify_product_id {
    type: number
    sql: ${TABLE}."shopify_product_id" ;;
  }

  dimension: shopify_sku {
    type: string
    sql: ${TABLE}."shopify_sku" ;;
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

  dimension: variant_type {
    type: string
    sql: ${TABLE}."variant_type" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, products.id, line_items.count]
  }
}

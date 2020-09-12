view: line_items {
  sql_table_name: public.line_items ;;
  drill_fields: [amazon_line_item_id]

  dimension: amazon_line_item_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."amazon_line_item_id" ;;
  }

  dimension: asin {
    type: string
    sql: ${TABLE}."asin" ;;
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

  dimension: fulfillable_quantity {
    type: string
    sql: ${TABLE}."fulfillable_quantity" ;;
  }

  dimension: fulfillment_service {
    type: string
    sql: ${TABLE}."fulfillment_service" ;;
  }

  dimension: fulfillment_status {
    type: string
    sql: ${TABLE}."fulfillment_status" ;;
  }

  dimension: gift_card {
    type: string
    sql: ${TABLE}."gift_card" ;;
  }

  dimension: grams {
    type: string
    sql: ${TABLE}."grams" ;;
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."order_id" ;;
  }

  dimension: price {
    type: string
    sql: ${TABLE}."price" ;;
  }

  dimension: product_exists {
    type: string
    sql: ${TABLE}."product_exists" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."product_id" ;;
  }

  dimension: properties {
    type: string
    sql: ${TABLE}."properties" ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}."quantity" ;;
  }

  dimension: requires_shipping {
    type: string
    sql: ${TABLE}."requires_shipping" ;;
  }

  dimension: shopify_id {
    type: string
    sql: ${TABLE}."shopify_id" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: tax {
    type: string
    sql: ${TABLE}."tax" ;;
  }

  dimension: taxable {
    type: string
    sql: ${TABLE}."taxable" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."title" ;;
  }

  dimension: total_discount {
    type: string
    sql: ${TABLE}."total_discount" ;;
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

  dimension: variant_inventory_management {
    type: string
    sql: ${TABLE}."variant_inventory_management" ;;
  }

  dimension: variant_title {
    type: string
    sql: ${TABLE}."variant_title" ;;
  }

  dimension: vendor {
    type: string
    sql: ${TABLE}."vendor" ;;
  }

  measure: count {
    type: count
    drill_fields: [amazon_line_item_id, name]
  }
}

view: products {
  sql_table_name: public.products ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: amazon_id {
    type: string
    sql: ${TABLE}."amazon_id" ;;
  }

  dimension: amazon_price {
    type: number
    sql: ${TABLE}."amazon_price" ;;
  }

  dimension: asin {
    type: string
    sql: ${TABLE}."asin" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."name" ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}."product_type" ;;
  }

  dimension: shopify_price {
    type: number
    sql: ${TABLE}."shopify_price" ;;
  }

  dimension: shopify_variant_id {
    type: string
    sql: ${TABLE}."shopify_variant_id" ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}."sku" ;;
  }

  dimension: sold_on_fba {
    type: yesno
    sql: ${TABLE}."sold_on_fba" ;;
  }

  dimension: sold_on_shopify {
    type: yesno
    sql: ${TABLE}."sold_on_shopify" ;;
  }

  dimension: sold_on_vc {
    type: yesno
    sql: ${TABLE}."sold_on_vc" ;;
  }

  dimension: sold_on_walmart {
    type: yesno
    sql: ${TABLE}."sold_on_walmart" ;;
  }

  dimension: unit_quantity {
    type: string
    sql: ${TABLE}."unit_quantity" ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}."upc" ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}

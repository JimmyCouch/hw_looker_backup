view: order_details {
  # Or, you could make this view a derived table, like this:
  derived_table: {
    sql: SELECT
      orders.id as order_id,
      orders.shopify_customer_id as order_shopify_customer_id,
      line_items.id as line_items_id,
      customers.shopify_id as customer_id,
      product_variants.id as product_variants_id,
      products.id as products_id,
      product_variants.id as variant_id,
      product_variants.quantity as quantity,
      product_variants.variant_type as variant_type
      FROM orders
      INNER JOIN public.line_items as line_items ON (orders."id") = (line_items."order_id")
      INNER JOIN public.customers as customers ON (orders."shopify_customer_id") = (customers."shopify_id")
      INNER JOIN public.products as products ON line_items.product_id = products.shopify_id
      INNER JOIN public.product_variants as product_variants ON line_items.product_variant_id = product_variants.id

      ;;
  }

  dimension: order_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.order_id ;;
  }

  dimension: line_item_id {
    type: number
    sql: ${TABLE}.line_items_id ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.customer_id ;;
  }

  dimension: product_variant_id {
    type: number
    sql: ${TABLE}.product_variants_id ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}.products_id ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: variant_type {
    type: string
    sql: ${TABLE}.variant_type ;;
  }

  dimension: variant_id {
    type: string
    sql: ${TABLE}.variant_id ;;
  }


  measure: number_of_bags {
    type: sum_distinct
    sql_distinct_key: ${variant_id} ;;
    sql: ${quantity} ;;
    filters: {
      field: variant_type
      value: "Bag%"
    }
  }

  measure: number_of_cartons {
    type: sum_distinct
    sql_distinct_key: ${variant_id} ;;
    sql: ${quantity} ;;
    filters: {
      field: variant_type
      value: "Carton%"
    }
  }



#
#   # Define your dimensions and measures here, like this:
#   dimension: user_id {
#     description: "Unique ID for each user that has ordered"
#     type: number
#     sql: ${TABLE}.user_id ;;
#   }
#
#   dimension: lifetime_orders {
#     description: "The total number of orders for each user"
#     type: number
#     sql: ${TABLE}.lifetime_orders ;;
#   }
#
#   dimension_group: most_recent_purchase {
#     description: "The date when each user last ordered"
#     type: time
#     timeframes: [date, week, month, year]
#     sql: ${TABLE}.most_recent_purchase_at ;;
#   }
#
#   measure: total_lifetime_orders {
#     description: "Use this for counting lifetime orders across many users"
#     type: sum
#     sql: ${lifetime_orders} ;;
#   }
}

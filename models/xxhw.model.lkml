connection: "hw-connection"

# include all the views
include: "/views/**/*.view"

datagroup: hw_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hw_default_datagroup

label: "Test"

explore: customers {
  join: orders {
    type: left_outer
    sql_on: ${orders.shopify_customer_id} = ${customers.shopify_id} ;;
    relationship: many_to_many
  }
}


explore: line_items {
  join: product_variants {
    type: left_outer
    sql_on: ${line_items.product_variant_id} = ${product_variants.id} ;;
    relationship: many_to_one
  }

  join: products {
    type: left_outer
    sql_on: ${line_items.product_id} = ${products.shopify_id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${line_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }
}

explore: order_tax_lines {
  join: orders {
    type: left_outer
    sql_on: ${order_tax_lines.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }
}

explore: orders {
  join:  line_items {
    sql_on: ${orders.id}=${line_items.order_id} ;;
    type: left_outer
    relationship: one_to_many
  }
  join: products {
    sql_on: ${line_items.product_id} = ${products.shopify_id};;
    relationship: one_to_one
  }
  join: customers {
    sql_on: ${customers.shopify_id} = ${orders.shopify_customer_id} ;;
    type: left_outer
    relationship: many_to_one
  }

  join: product_variants {
    sql_on: ${products.id} = ${product_variants.product_id} ;;
    type: left_outer
    relationship: many_to_many
  }

  join: order_details {
    sql_on: ${orders.id} = ${order_details.SQL_TABLE_NAME}.order_id ;;
    type: left_outer
    relationship: one_to_many
  }


}

explore: products {}

explore: product_variants {
  join: products {
    type: left_outer
    sql_on: ${product_variants.product_id} = ${products.id} ;;
    relationship: many_to_one
  }
}



explore: discount_applications {
  hidden: yes
  join: orders {
    type: left_outer
    sql_on: ${discount_applications.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }
}

explore: discount_codes {
  hidden: yes
  join: orders {
    type: left_outer
    sql_on: ${discount_codes.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }
}

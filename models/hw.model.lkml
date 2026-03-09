connection: "bigquery_stitch"
include: "//marketplace_retail-block-v2/refinements.lkml"
#include: "//retail-block-v2/**/retail_block_model_v2.model.lkml"

# include all the views
#include: "/views/**/*.view"

# datagroup: hw_default_datagroup {
#   # sql_trigger: SELECT MAX(id) FROM etl_log;;
#   max_cache_age: "1 hour"
# }

#persist_with: hw_default_datagroup

label: "xhw"

#explore: transactions {}



# explore: orders {

#   always_join: [line_items]

#   join: line_items {
#     sql_on: ${orders.id} = ${line_items.order_id} ;;
#     relationship: one_to_many
#     type: inner
#   }

#   join: products {
#     sql_on: ${line_items.product_id} = ${products.id} ;;
#     relationship: one_to_many
#     type: left_outer
#   }
# }

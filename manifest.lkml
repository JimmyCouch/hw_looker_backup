project_name: "x_hw"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#


# marketplace: {
#   listing: "retail-block-v2"
# }


local_dependency: {
  project: "marketplace_retail-block-v2"
  #override_constant: CUSTOMERS_TABLE_NAME { value:"blahblah" }
}


# local_dependency: {
#   project: "retail-block-v2"
#   override_constant: MAIN_CURRENCY_SYMBOL { value:"$" }
#   override_constant: CONNECTION_NAME { value:"bigquery_stitch" }
#   override_constant: SCHEMA_NAME { value:"bigquery_stitch" }
#   override_constant: CHANNELS_TABLE_NAME { value:"bigquery_stitch" }
# }


# local_dependency: {
#   project: "retail-block"
#   override_constant: MAIN_CURRENCY_SYMBOL { value:"$" }
#   override_constant: CONNECTION_NAME { value:"bigquery_stitch" }
#   override_constant: SCHEMA_NAME { value:"bigquery_stitch" }
# }


# constant: CONNECTION_NAME {
#   value: "retail-block-connection"
#   export: override_optional
# }

# constant: SCHEMA_NAME {
#   value: "looker-demo.retail"
#   export: override_optional
# }

# constant: WEATHER_SCHEMA_NAME {
#   value: "bigquery-public-data.ghcn_d"
#   export: override_optional
# }

# constant: TRANSACTIONS_TABLE_NAME {
#   value: "transactions"
#   export: override_optional
# }

# constant: CHANNELS_TABLE_NAME {
#   value: "dim_channels"
#   export: override_optional
# }

# constant: CUSTOMERS_TABLE_NAME {
#   value: "dim_customers"
#   export: override_optional
# }

# constant: PRODUCTS_TABLE_NAME {
#   value: "dim_products"
#   export: override_optional
# }

# constant: STORES_TABLE_NAME {
#   value: "dim_stores"
#   export: override_optional
# }

# constant: MAIN_CURRENCY_SYMBOL {
#   value: "$"
#   export: override_optional
# }

# constant: IMAGE_SEARCH_URL {
#   value: "https://us-central1-looker-private-demo.cloudfunctions.net/imageSearch?q="
#   export: override_optional
# }

# constant: GOOGLE_MAPS_API_KEY {
#   value: "xxxxxxxx"
#   export: override_optional
# }

connection: "hw-connection"

# include all the views
include: "/views/**/*.view"

datagroup: hw_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hw_default_datagroup

label: "xhw"

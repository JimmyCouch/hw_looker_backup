view: orders {
  sql_table_name: public.orders ;;
  drill_fields: [amazon_order_id]


  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}."id" ;;
    group_label: "Order Record"
  }


  dimension: amazon_order_id {
    type: string
    sql: ${TABLE}."amazon_order_id" ;;
    group_label: "    External Ids"

  }

  dimension: amazon_next_token {
    hidden: yes
    type: string
    sql: ${TABLE}."amazon_next_token" ;;
  }

  dimension: amazon_seller_id {
    hidden: yes
    type: string
    sql: ${TABLE}."amazon_seller_id" ;;
  }

  dimension: billing_address_address1 {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_address1" ;;
  }

  dimension: billing_address_address2 {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_address2" ;;
  }

  dimension: billing_address_city {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_city" ;;
  }

  dimension: billing_address_company {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_company" ;;
  }

  dimension: billing_address_country {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_country" ;;
  }

  dimension: billing_address_country_code {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_country_code" ;;
  }

  dimension: billing_address_first_name {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_first_name" ;;
  }

  dimension: billing_address_last_name {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_last_name" ;;
  }

  dimension: billing_address_latitude {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_latitude" ;;
  }

  dimension: billing_address_longitude {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_longitude" ;;
  }

  dimension: billing_address_name {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_name" ;;
  }

  dimension: billing_address_phone {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_phone" ;;
  }

  dimension: billing_address_province {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_province" ;;
  }

  dimension: billing_address_province_code {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_province_code" ;;
  }

  dimension: billing_address_zip {
    hidden: yes
    type: string
    sql: ${TABLE}."billing_address_zip" ;;
  }

  dimension_group: created {
    group_label: "Order Record"
    type: time
    timeframes: [ date ]
    sql: ${TABLE}."created_at" ;;
  }


  dimension_group: created_old {
    hidden: yes
    group_label: "Order Record"
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

  dimension: discount_code {
    type: string
    sql: ${TABLE}."discount_code" ;;
    group_label: "          Details"
  }


  dimension: is_prime {
    type: string
    sql: ${TABLE}."is_prime" ;;
    group_label: "          Details"
  }

  dimension: order_app_id {
    hidden: yes
    type: string
    sql: ${TABLE}."order_app_id" ;;
  }

  dimension: order_browser_ip {
    hidden: yes
    type: string
    sql: ${TABLE}."order_browser_ip" ;;
  }

  dimension: order_buyer_accepts_marketing {
    type: yesno
    sql: ${TABLE}."order_buyer_accepts_marketing" ;;
    label: "Accepts Marketing"
    group_label: "          Details"
  }

  dimension: order_cancel_reason {
    hidden: yes
    type: string
    sql: ${TABLE}."order_cancel_reason" ;;
  }

  dimension: order_cancelled_at {
    hidden: yes
    type: string
    sql: ${TABLE}."order_cancelled_at" ;;
  }

  dimension: order_checkout_id {
    hidden: yes
    type: string
    sql: ${TABLE}."order_checkout_id" ;;
  }

  dimension_group: order_closed {
    hidden: yes
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
    sql: ${TABLE}."order_closed_at" ;;
  }

  dimension: order_confirmed {
    type: yesno
    sql: ${TABLE}."order_confirmed" ;;
    group_label: "          Details"
  }

  dimension: order_contact_email {
    hidden: yes
    type: string
    sql: ${TABLE}."order_contact_email" ;;
  }

  dimension_group: order_created {
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
    sql: ${TABLE}."order_created_at" ;;
    group_label: "          Details"
  }

  dimension: order_currency {
    hidden: yes
    type: string
    sql: ${TABLE}."order_currency" ;;
  }

  dimension: order_customer_locale {
    hidden: yes
    type: string
    sql: ${TABLE}."order_customer_locale" ;;
  }

  dimension: order_device_id {
    hidden: yes
    type: string
    sql: ${TABLE}."order_device_id" ;;
  }

  dimension: order_discount_applications {
    hidden: yes
    type: string
    sql: ${TABLE}."order_discount_applications" ;;
  }

  dimension: order_discount_codes {
    hidden: yes
    type: string
    sql: ${TABLE}."order_discount_codes" ;;
  }

  dimension: order_email {
    type: string
    sql: ${TABLE}."order_email" ;;
    label: "Customer Email"
    group_label: "          Details"
  }

  dimension: order_financial_status {
    hidden: yes
    type: string
    sql: ${TABLE}."order_financial_status" ;;
  }

  dimension: order_fulfillment_status {
    type: string
    sql: ${TABLE}."order_fulfillment_status" ;;
    group_label: "          Details"
  }

  dimension: order_gateway {
    type: string
    sql: ${TABLE}."order_gateway" ;;
    group_label: "          Details"
  }

  dimension: order_landing_site {
    type: string
    sql: ${TABLE}."order_landing_site" ;;
    label: "Landing Site"
    group_label: "Referrer"
  }

  dimension: order_landing_site_ref {
    hidden: yes
    type: string
    sql: ${TABLE}."order_landing_site_ref" ;;
  }

  dimension: order_location_id {
    hidden: yes
    type: string
    sql: ${TABLE}."order_location_id" ;;
  }

  dimension: order_name {
    type: string
    sql: ${TABLE}."order_name" ;;
    group_label: "          Details"
  }

  dimension: order_note {
    type: string
    sql: ${TABLE}."order_note" ;;
    label: "Note"
    group_label: "          Details"
  }

  dimension: order_note_attributes {
    hidden: yes
    type: string
    sql: ${TABLE}."order_note_attributes" ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}."order_number" ;;
    group_label: "          Details"
  }

  dimension: order_order_number {
    hidden: yes
    type: string
    sql: ${TABLE}."order_order_number" ;;
  }

  dimension: order_payment_gateway_names {
    hidden: yes
    type: string
    sql: ${TABLE}."order_payment_gateway_names" ;;
  }

  dimension: order_phone {
    hidden: yes
    type: string
    sql: ${TABLE}."order_phone" ;;
  }

  dimension: order_presentment_currency {
    hidden: yes
    type: string
    sql: ${TABLE}."order_presentment_currency" ;;
  }

  dimension_group: order_processed {
    hidden: yes
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
    sql: ${TABLE}."order_processed_at" ;;
    group_label: "          Details"
    label: "Processed At"
  }

  dimension: order_processing_method {
    type: string
    sql: ${TABLE}."order_processing_method" ;;
    group_label: "          Details"
    label: "Processing Method"
  }

  dimension: order_reference {
    hidden: yes
    type: string
    sql: ${TABLE}."order_reference" ;;
  }

  dimension: order_referring_site {
    type: string
    sql: ${TABLE}."order_referring_site" ;;
    label: "Referring Site"
    group_label: "Referrer"
  }

  dimension: order_source_identifier {
    hidden: yes
    type: string
    sql: ${TABLE}."order_source_identifier" ;;
  }

  dimension: order_source_name {
    hidden: yes
    type: string
    sql: ${TABLE}."order_source_name" ;;
  }

  dimension: order_source_url {
    hidden: yes
    type: string
    sql: ${TABLE}."order_source_url" ;;
  }

  dimension: order_subtotal_price {
    type: number
    sql: ${TABLE}."order_subtotal_price" ;;
    label: "Subtotal"
    group_label: "          Details"
  }

  dimension: order_tags {
    type: string
    sql: ${TABLE}."order_tags" ;;
    label: "Tags"
    group_label: "          Details"
  }

  dimension: order_tax_lines {
    hidden: yes
    type: string
    sql: ${TABLE}."order_tax_lines" ;;
  }

  dimension: order_taxes_included {
    hidden: yes
    type: yesno
    sql: ${TABLE}."order_taxes_included" ;;
    label: "Taxes Included"
  }

  dimension: order_total_discounts {
    type: number
    sql: ${TABLE}."order_total_discounts" ;;
    label: "Total Discount"
    group_label: "          Details"
  }

  dimension: order_total_line_items_price {
    type: number
    sql: ${TABLE}."order_total_line_items_price" ;;
    label: "Total Line Items"
    group_label: "          Details"
  }

  dimension: order_total_price {
    type: number
    sql: ${TABLE}."order_total_price" ;;
    label: "Order Total"
    group_label: "          Details"
  }

  dimension: order_total_price_usd {
    hidden: yes
    type: number
    sql: ${TABLE}."order_total_price_usd" ;;
  }

  dimension: order_total_tax {
    type: number
    sql: ${TABLE}."order_total_tax" ;;
    label: "Order Tax"
    group_label: "          Details"
  }

  dimension: order_total_weight {
    hidden: yes
    type: string
    sql: ${TABLE}."order_total_weight" ;;
  }

  dimension_group: order_updated {
    hidden: yes
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
    sql: ${TABLE}."order_updated_at" ;;
  }

  dimension: order_user_id {
    hidden: yes
    type: string
    sql: ${TABLE}."order_user_id" ;;
  }

  dimension: order_weight {
    hidden: yes
    type: number
    sql: ${TABLE}."order_weight" ;;
  }

  dimension: raw_response {
    hidden: yes
    type: string
    sql: ${TABLE}."raw_response" ;;
  }

  dimension: sales_channel {
    type: string
    sql: ${TABLE}."sales_channel" ;;
    group_label: "          Details"
  }

  dimension: ship_service_level {
    type: string
    sql: ${TABLE}."ship_service_level" ;;
    label: "Shipping Level"
    group_label: "Shipping"
  }

  dimension: shipping_address_address1 {
    type: string
    sql: ${TABLE}."shipping_address_address1" ;;
    label: "Address"
    group_label: "Shipping"
  }

  dimension: shipping_address_address2 {
    hidden: yes
    type: string
    sql: ${TABLE}."shipping_address_address2" ;;
  }

  dimension: shipping_address_city {
    type: string
    sql: ${TABLE}."shipping_address_city" ;;
    label: "City"
    group_label: "Shipping"
  }

  dimension: shipping_address_company {
    hidden: yes
    type: string
    sql: ${TABLE}."shipping_address_company" ;;
  }

  dimension: shipping_address_country {
    hidden: yes
    type: string
    sql: ${TABLE}."shipping_address_country" ;;
  }

  dimension: shipping_address_country_code {
    hidden: yes
    type: string
    sql: ${TABLE}."shipping_address_country_code" ;;
  }

  dimension: shipping_address_first_name {
    type: string
    sql: ${TABLE}."shipping_address_first_name" ;;
    label: "First Name"
    group_label: "Shipping"
  }

  dimension: shipping_address_last_name {
    type: string
    sql: ${TABLE}."shipping_address_last_name" ;;
    label: "Last Name"
    group_label: "Shipping"
  }

  dimension: shipping_address_latitude {
    type: string
    sql: ${TABLE}."shipping_address_latitude" ;;
    group_label: "Shipping"
  }

  dimension: shipping_address_longitude {
    type: string
    sql: ${TABLE}."shipping_address_longitude" ;;
    group_label: "Shipping"
  }

  dimension: shipping_address_name {
    hidden: yes
    type: string
    sql: ${TABLE}."shipping_address_name" ;;
  }

  dimension: shipping_address_phone {
    hidden: yes
    type: string
    sql: ${TABLE}."shipping_address_phone" ;;
  }

  dimension: shipping_address_province {
    type: string
    sql: ${TABLE}."shipping_address_province" ;;
    label: "State"
    group_label: "Shipping"
  }

  dimension: shipping_address_province_code {
    type: string
    sql: ${TABLE}."shipping_address_province_code" ;;
    group_label: "Shipping"
    label: "State Code"
  }

  dimension: shipping_address_zip {
    type: string
    sql: ${TABLE}."shipping_address_zip" ;;
    group_label: "Shipping"
    label: "Zipcode"
  }

  dimension: shopify_customer_id {
    hidden: yes
    type: number
    sql: ${TABLE}."shopify_customer_id" ;;
  }

  dimension: shopify_order_id {
    type: number
    sql: ${TABLE}."shopify_order_id" ;;
    group_label: "    External Ids"
  }

  dimension_group: updated {
    hidden: yes
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

  dimension_group: updated_batch {
    hidden: yes
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
    sql: ${TABLE}."updated_batch_time" ;;
  }

  measure: order_sum {
    type: sum_distinct
    sql_distinct_key: ${order_number} ;;
    sql: ${order_total_price} ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      amazon_order_id,
      order_name,
      order_source_name,
      billing_address_first_name,
      billing_address_last_name,
      billing_address_name,
      shipping_address_first_name,
      shipping_address_last_name,
      shipping_address_name
    ]
  }
}

view: orders {
  sql_table_name: public.orders ;;
  drill_fields: [amazon_order_id]

  dimension: amazon_order_id {
    primary_key: yes
    type: string
    sql: ${TABLE}."amazon_order_id" ;;
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
  }

  dimension: id {
    type: number
    sql: ${TABLE}."id" ;;
  }

  dimension: is_prime {
    type: string
    sql: ${TABLE}."is_prime" ;;
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
  }

  dimension: order_cancel_reason {
    type: string
    sql: ${TABLE}."order_cancel_reason" ;;
  }

  dimension: order_cancelled_at {
    type: string
    sql: ${TABLE}."order_cancelled_at" ;;
  }

  dimension: order_checkout_id {
    type: string
    sql: ${TABLE}."order_checkout_id" ;;
  }

  dimension_group: order_closed {
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
  }

  dimension: order_contact_email {
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
  }

  dimension: order_financial_status {
    type: string
    sql: ${TABLE}."order_financial_status" ;;
  }

  dimension: order_fulfillment_status {
    type: string
    sql: ${TABLE}."order_fulfillment_status" ;;
  }

  dimension: order_gateway {
    type: string
    sql: ${TABLE}."order_gateway" ;;
  }

  dimension: order_landing_site {
    type: string
    sql: ${TABLE}."order_landing_site" ;;
  }

  dimension: order_landing_site_ref {
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
  }

  dimension: order_note {
    type: string
    sql: ${TABLE}."order_note" ;;
  }

  dimension: order_note_attributes {
    type: string
    sql: ${TABLE}."order_note_attributes" ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}."order_number" ;;
  }

  dimension: order_order_number {
    type: string
    sql: ${TABLE}."order_order_number" ;;
  }

  dimension: order_payment_gateway_names {
    type: string
    sql: ${TABLE}."order_payment_gateway_names" ;;
  }

  dimension: order_phone {
    type: string
    sql: ${TABLE}."order_phone" ;;
  }

  dimension: order_presentment_currency {
    type: string
    sql: ${TABLE}."order_presentment_currency" ;;
  }

  dimension_group: order_processed {
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
  }

  dimension: order_processing_method {
    type: string
    sql: ${TABLE}."order_processing_method" ;;
  }

  dimension: order_reference {
    hidden: yes
    type: string
    sql: ${TABLE}."order_reference" ;;
  }

  dimension: order_referring_site {
    type: string
    sql: ${TABLE}."order_referring_site" ;;
  }

  dimension: order_source_identifier {
    type: string
    sql: ${TABLE}."order_source_identifier" ;;
  }

  dimension: order_source_name {
    type: string
    sql: ${TABLE}."order_source_name" ;;
  }

  dimension: order_source_url {
    type: string
    sql: ${TABLE}."order_source_url" ;;
  }

  dimension: order_subtotal_price {
    type: number
    sql: ${TABLE}."order_subtotal_price" ;;
  }

  dimension: order_tags {
    type: string
    sql: ${TABLE}."order_tags" ;;
  }

  dimension: order_tax_lines {
    hidden: yes
    type: string
    sql: ${TABLE}."order_tax_lines" ;;
  }

  dimension: order_taxes_included {
    type: yesno
    sql: ${TABLE}."order_taxes_included" ;;
  }

  dimension: order_total_discounts {
    type: number
    sql: ${TABLE}."order_total_discounts" ;;
  }

  dimension: order_total_line_items_price {
    type: number
    sql: ${TABLE}."order_total_line_items_price" ;;
  }

  dimension: order_total_price {
    type: number
    sql: ${TABLE}."order_total_price" ;;
  }

  dimension: order_total_price_usd {
    hidden: yes
    type: number
    sql: ${TABLE}."order_total_price_usd" ;;
  }

  dimension: order_total_tax {
    type: number
    sql: ${TABLE}."order_total_tax" ;;
  }

  dimension: order_total_weight {
    hidden: yes
    type: string
    sql: ${TABLE}."order_total_weight" ;;
  }

  dimension_group: order_updated {
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
  }

  dimension: ship_service_level {
    type: string
    sql: ${TABLE}."ship_service_level" ;;
  }

  dimension: shipping_address_address1 {
    type: string
    sql: ${TABLE}."shipping_address_address1" ;;
  }

  dimension: shipping_address_address2 {
    type: string
    sql: ${TABLE}."shipping_address_address2" ;;
  }

  dimension: shipping_address_city {
    type: string
    sql: ${TABLE}."shipping_address_city" ;;
  }

  dimension: shipping_address_company {
    type: string
    sql: ${TABLE}."shipping_address_company" ;;
  }

  dimension: shipping_address_country {
    type: string
    sql: ${TABLE}."shipping_address_country" ;;
  }

  dimension: shipping_address_country_code {
    type: string
    sql: ${TABLE}."shipping_address_country_code" ;;
  }

  dimension: shipping_address_first_name {
    type: string
    sql: ${TABLE}."shipping_address_first_name" ;;
  }

  dimension: shipping_address_last_name {
    type: string
    sql: ${TABLE}."shipping_address_last_name" ;;
  }

  dimension: shipping_address_latitude {
    type: string
    sql: ${TABLE}."shipping_address_latitude" ;;
  }

  dimension: shipping_address_longitude {
    type: string
    sql: ${TABLE}."shipping_address_longitude" ;;
  }

  dimension: shipping_address_name {
    type: string
    sql: ${TABLE}."shipping_address_name" ;;
  }

  dimension: shipping_address_phone {
    type: string
    sql: ${TABLE}."shipping_address_phone" ;;
  }

  dimension: shipping_address_province {
    type: string
    sql: ${TABLE}."shipping_address_province" ;;
  }

  dimension: shipping_address_province_code {
    type: string
    sql: ${TABLE}."shipping_address_province_code" ;;
  }

  dimension: shipping_address_zip {
    type: string
    sql: ${TABLE}."shipping_address_zip" ;;
  }

  dimension: shopify_customer_id {
    hidden: yes
    type: number
    sql: ${TABLE}."shopify_customer_id" ;;
  }

  dimension: shopify_order_id {
    type: number
    sql: ${TABLE}."shopify_order_id" ;;
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

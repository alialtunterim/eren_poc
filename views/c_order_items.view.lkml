# The name of this view in Looker is "C Order Items"
view: c_order_items {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.looker_poc.c_order_items` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Attributes" in Explore.

  dimension: attributes {
    type: string
    description: "Attributes"
    sql: ${TABLE}.attributes ;;
  }

  dimension: attributes_kwargs {
    type: string
    description: "Attributes kwargs"
    sql: ${TABLE}.attributes_kwargs ;;
  }

  dimension: cancel_status {
    type: string
    description: "Cancel status"
    sql: ${TABLE}.cancel_status ;;
  }

  dimension: cancellation_reconciliation {
    type: number
    description: "[Foreign Key] cancellation_reconciliation"
    sql: ${TABLE}.cancellation_reconciliation ;;
  }

  dimension: carrier_shipping_code {
    type: string
    description: "Carrier shipping code"
    sql: ${TABLE}.carrier_shipping_code ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    description: "Created date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.created_date ;;
  }

  dimension: datasource {
    type: number
    description: "[Foreign Key] datasource"
    sql: ${TABLE}.datasource ;;
  }

  dimension: defined_tracking_url {
    type: string
    description: "Defined Tracking URL"
    sql: ${TABLE}.defined_tracking_url ;;
  }

  dimension_group: delivered {
    type: time
    description: "Delivered date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.delivered_date ;;
  }

  dimension: discount_amount {
    type: number
    description: "Discount amount"
    sql: ${TABLE}.discount_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_discount_amount {
    type: sum
    sql: ${discount_amount} ;;  }
  measure: average_discount_amount {
    type: average
    sql: ${discount_amount} ;;  }

  dimension: e_archive_url {
    type: string
    description: "E-Archive"
    sql: ${TABLE}.e_archive_url ;;
  }

  dimension_group: estimated_delivery {
    type: time
    description: "Estimated delivery date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.estimated_delivery_date ;;
  }

  dimension: external_status {
    type: number
    description: "[Foreign Key] external_status"
    sql: ${TABLE}.external_status ;;
  }

  dimension: extra_field {
    type: string
    description: "Extra field"
    sql: ${TABLE}.extra_field ;;
  }

  dimension: forced_refund {
    type: yesno
    description: "Forced refund"
    sql: ${TABLE}.forced_refund ;;
  }

  dimension: image {
    type: string
    description: "Image"
    sql: ${TABLE}.image ;;
  }

  dimension: installment_interest_amount {
    type: number
    description: "Installment interest amount"
    sql: ${TABLE}.installment_interest_amount ;;
  }

  dimension_group: invoice {
    type: time
    description: "Invoice Date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.invoice_date ;;
  }

  dimension: invoice_number {
    type: string
    description: "Invoice Number"
    sql: ${TABLE}.invoice_number ;;
  }

  dimension: is_tradable {
    type: yesno
    description: "Is tradable"
    sql: ${TABLE}.is_tradable ;;
  }

  dimension: localized_attributes {
    type: string
    description: "Localized attributes"
    sql: ${TABLE}.localized_attributes ;;
  }

  dimension: localized_attributes_kwargs {
    type: string
    description: "Localized attributes kwargs"
    sql: ${TABLE}.localized_attributes_kwargs ;;
  }

  dimension_group: modified {
    type: time
    description: "Modified date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.modified_date ;;
  }

  dimension: order {
    type: number
    description: "[Foreign Key] order"
    sql: ${TABLE}.`order` ;;
  }

  dimension: parent {
    type: number
    description: "[Foreign Key] parent"
    sql: ${TABLE}.parent ;;
  }

  dimension: pk {
    type: number
    description: "ID"
    sql: ${TABLE}.pk ;;
  }

  dimension: price {
    type: number
    description: "Price"
    sql: ${TABLE}.price ;;
  }

  dimension: price_currency {
    type: string
    description: "Price currency"
    sql: ${TABLE}.price_currency ;;
  }

  dimension: price_list {
    type: number
    description: "[Foreign Key] price_list"
    sql: ${TABLE}.price_list ;;
  }

  dimension: product {
    type: number
    description: "[Foreign Key] product"
    sql: ${TABLE}.product ;;
  }

  dimension: reconciliation {
    type: number
    description: "[Foreign Key] reconciliation"
    sql: ${TABLE}.reconciliation ;;
  }

  dimension: retail_price {
    type: number
    description: "Retail Price"
    sql: ${TABLE}.retail_price ;;
  }

  dimension: shipment_code {
    type: string
    description: "Shipment code"
    sql: ${TABLE}.shipment_code ;;
  }

  dimension_group: shipped {
    type: time
    description: "Shipped date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.shipped_date ;;
  }

  dimension: shipping_company {
    type: string
    description: "Shipping company"
    sql: ${TABLE}.shipping_company ;;
  }

  dimension: status {
    type: string
    description: "Status"
    sql: ${TABLE}.status ;;
  }

  dimension: stock_list {
    type: number
    description: "[Foreign Key] stock_list"
    sql: ${TABLE}.stock_list ;;
  }

  dimension: tax_rate {
    type: number
    description: "Tax rate"
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: tracking_number {
    type: string
    description: "Tracking number"
    sql: ${TABLE}.tracking_number ;;
  }
  measure: count {
    type: count
  }
}

# The name of this view in Looker is "C Orders"
view: c_orders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.looker_poc.c_orders` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Amount" in Explore.

  dimension: amount {
    type: number
    description: "Order amount"
    sql: ${TABLE}.amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;  }
  measure: average_amount {
    type: average
    sql: ${amount} ;;  }

  dimension: billing_address {
    type: number
    description: "[Foreign Key] billing_address"
    sql: ${TABLE}.billing_address ;;
  }

  dimension: bin_number {
    type: string
    description: "Bin number"
    sql: ${TABLE}.bin_number ;;
  }

  dimension: cancel_status {
    type: string
    description: "Cancel status"
    sql: ${TABLE}.cancel_status ;;
  }

  dimension: cancellation_info {
    type: string
    description: "Cancellation info"
    sql: ${TABLE}.cancellation_info ;;
  }

  dimension: cargo_company {
    type: number
    description: "[Foreign Key] cargo_company"
    sql: ${TABLE}.cargo_company ;;
  }

  dimension: carrier_shipping_code {
    type: string
    description: "Carrier shipping code"
    sql: ${TABLE}.carrier_shipping_code ;;
  }

  dimension: channel {
    type: number
    description: "[Foreign Key] channel"
    sql: ${TABLE}.channel ;;
  }

  dimension: checkout_provider_id {
    type: number
    description: "Checkout provider id"
    sql: ${TABLE}.checkout_provider_id ;;
  }

  dimension: client_type {
    type: string
    description: "Client type"
    sql: ${TABLE}.client_type ;;
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

  dimension: currency {
    type: string
    description: "Currency"
    sql: ${TABLE}.currency ;;
  }

  dimension: customer {
    label: "Customer"
    type: number
    description: "[Foreign Key] customer"
    sql: ${TABLE}.customer ;;
  }

  dimension_group: date_placed {
    type: time
    description: "Date Placed"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.date_placed ;;
  }

  dimension: defined_tracking_url {
    type: string
    description: "Defined Tracking URL"
    sql: ${TABLE}.defined_tracking_url ;;
  }

  dimension: delivery_range {
    type: string
    description: "Delivery range"
    sql: ${TABLE}.delivery_range ;;
  }

  dimension: delivery_type {
    type: string
    description: "Delivery type"
    sql: ${TABLE}.delivery_type ;;
  }

  dimension: discount_amount {
    type: number
    description: "Discount"
    sql: ${TABLE}.discount_amount ;;
  }

  dimension: discount_refund_amount {
    type: number
    description: "Discount"
    sql: ${TABLE}.discount_refund_amount ;;
  }

  dimension: e_archive_url {
    type: string
    description: "E-Archive"
    sql: ${TABLE}.e_archive_url ;;
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

  dimension: fundstransfertransaction_set {
    type: string
    description: "Fundstransfertransaction set"
    sql: ${TABLE}.fundstransfertransaction_set ;;
  }

  dimension: gift_box_note {
    type: string
    description: "Gift box note"
    sql: ${TABLE}.gift_box_note ;;
  }

  dimension: has_gift_box {
    type: yesno
    description: "Has gift box"
    sql: ${TABLE}.has_gift_box ;;
  }

  dimension: installment {
    type: number
    description: "[Foreign Key] installment"
    sql: ${TABLE}.installment ;;
  }

  dimension: installment_count {
    type: number
    description: "Installment count"
    sql: ${TABLE}.installment_count ;;
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

  dimension: is_send {
    type: yesno
    description: "Is send"
    sql: ${TABLE}.is_send ;;
  }

  dimension: language_code {
    type: string
    description: "Language code"
    sql: ${TABLE}.language_code ;;
  }

  dimension_group: modified {
    type: time
    description: "Modified date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.modified_date ;;
  }

  dimension: net_shipping_amount {
    type: number
    description: "Net shipping amount"
    sql: ${TABLE}.net_shipping_amount ;;
  }

  dimension: notes {
    type: string
    description: "Instructions"
    sql: ${TABLE}.notes ;;
  }

  dimension: number {
    type: string
    description: "Order number"
    sql: ${TABLE}.number ;;
  }

  dimension: payment_option {
    type: number
    description: "[Foreign Key] payment_option"
    sql: ${TABLE}.payment_option ;;
  }

  dimension: payment_option_slug {
    type: string
    description: "Payment option slug"
    sql: ${TABLE}.payment_option_slug ;;
  }

  dimension: pk {
    type: number
    description: "ID"
    sql: ${TABLE}.pk ;;
  }

  dimension: refund_amount {
    type: number
    description: "Order refund amount"
    sql: ${TABLE}.refund_amount ;;
  }

  dimension: remote_addr {
    type: string
    description: "Remote addr"
    sql: ${TABLE}.remote_addr ;;
  }

  dimension: segment {
    type: string
    description: "Segment"
    sql: ${TABLE}.segment ;;
  }

  dimension: shipping_address {
    type: number
    description: "[Foreign Key] shipping_address"
    sql: ${TABLE}.shipping_address ;;
  }

  dimension: shipping_amount {
    type: number
    description: "Shipping charge"
    sql: ${TABLE}.shipping_amount ;;
  }

  dimension: shipping_company {
    type: string
    description: "Shipping company"
    sql: ${TABLE}.shipping_company ;;
  }

  dimension: shipping_interest_amount {
    type: number
    description: "Shipping interest amount"
    sql: ${TABLE}.shipping_interest_amount ;;
  }

  dimension: shipping_option_slug {
    type: string
    description: "Shipping option slug"
    sql: ${TABLE}.shipping_option_slug ;;
  }

  dimension: shipping_refund_amount {
    type: number
    description: "Shipping refund amount"
    sql: ${TABLE}.shipping_refund_amount ;;
  }

  dimension: shipping_tax_rate {
    type: number
    description: "Shipping tax rate"
    sql: ${TABLE}.shipping_tax_rate ;;
  }

  dimension: status {
    type: string
    description: "Status"
    sql: ${TABLE}.status ;;
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

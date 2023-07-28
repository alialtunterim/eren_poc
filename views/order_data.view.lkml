# The name of this view in Looker is "Order Data"
view: order_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `looker_poc.order_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " 3 D" in Explore.

  dimension: _3_d {
    type: yesno
    sql: ${TABLE}._3D ;;
  }

  dimension: alt_grup {
    type: string
    sql: ${TABLE}.Alt_Grup ;;
  }

  dimension: bank {
    type: string
    sql: ${TABLE}.Bank ;;
  }

  dimension: base_code {
    type: string
    sql: ${TABLE}.BaseCode ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
    drill_fields: [kategori,products.name,gender]

    link: {
      label: "Marka Bazlı Detay"
      url: "https://komtas.cloud.looker.com/dashboards/106?Marka={{ value }}"
    }

    link: {
      label: "Google Search"
      url: "http://www.google.com/search?q={{ value }}"
    }
  }

  measure: cancel_refund_amount {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.Cancel_RefundAmount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  #measure: total_cancel_refund_amount {
  #  type: sum
  #  value_format: "#,##0"
  #  sql: ${cancel_refund_amount} ;;
  #  }

  #measure: average_cancel_refund_amount {
  #  type: average
  #  value_format: "#,##0"
  #  sql: ${cancel_refund_amount} ;;  }

  measure: cancel_refund_count {
    type: sum
    sql: ${TABLE}.Cancel_RefundCount ;;
  }

  dimension: cancel_refund_date {
    type: string
    sql: ${TABLE}.Cancel_RefundDate ;;
  }

  measure: cancel_refund_without_tax_amount {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.Cancel_RefundWithoutTaxAmount ;;
  }

  dimension: channel {
    type: string
    sql: ${TABLE}.Channel ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
    #drill_fields: [township,brand,kategori,alt_grup,gender]

    link: {
      label: "Şehir Bazlı Detay"
      url: "https://komtas.cloud.looker.com/dashboards/105?%C5%9Eehir={{ value }}"
    }

    link: {
      label: "Kargo Detay"
      url: "https://komtas.cloud.looker.com/dashboards/109?%C5%9Eehir={{ value }}"
    }
  }

  dimension: color {
    type: string
    sql: ${TABLE}.Color ;;
  }

  dimension: discount_amount {
    type: number
    sql: ${TABLE}.DiscountAmount ;;
  }

  dimension: district {
    type: string
    sql: ${TABLE}.District ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.Email ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.FirstName ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.Gender ;;
  }

  dimension: gold_vip_status {
    type: string
    sql: ${TABLE}.Gold_VIP_Status ;;
  }

  dimension: has_gift_box {
    type: yesno
    sql: ${TABLE}.HasGiftBox ;;
  }

  dimension: installment_count {
    type: number
    sql: ${TABLE}.InstallmentCount ;;
  }

  dimension: kategori {
    type: string
    sql: ${TABLE}.Kategori ;;
    drill_fields: [brand,products.name]
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.LastName ;;
  }

  dimension: member {
    type: string
    sql: ${TABLE}.Member ;;
    drill_fields: [gold_vip_status]
  }

  dimension: membership_buyer_type {
    type: string
    sql: ${TABLE}.Membership_Buyer_Type ;;
  }

  measure: net_amount {
    label: "Satış Tutarı"
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.Net_Amount ;;
  }

  measure: net_amount_without_tax {
    type: sum
    value_format: "#,##0"
    sql: ${TABLE}.Net_Amount_Without_Tax ;;
  }

  dimension: option {
    type: string
    sql: ${TABLE}.Option ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: order_date {
    type: time
    timeframes: [raw, date, week, month, month_name, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.OrderDate ;;
  }

  measure: order_item_count {
    label: "Sipariş Miktarı"
    type: sum
    sql: ${TABLE}.OrderItemCount ;;
  }

  dimension: order_number {
    type: string
    sql: ${TABLE}.OrderNumber ;;
  }

  measure: order_shipping_amount {
    type: sum
    sql: ${TABLE}.Order_Shipping_Amount ;;
  }

  dimension: order_status {
    type: string
    sql: ${TABLE}.OrderStatus ;;
  }

  dimension: order_time {
    type: string
    sql: ${TABLE}.OrderTime ;;
  }

  dimension: payment_option {
    type: string
    sql: ${TABLE}.PaymentOption ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.Platform ;;
  }

  dimension: pos {
    type: string
    sql: ${TABLE}.POS ;;
  }

  dimension: promotion {
    type: string
    sql: ${TABLE}.Promotion ;;
  }

  dimension: promotion_code {
    type: string
    sql: ${TABLE}.PromotionCode ;;
  }

  dimension: psf {
    type: number
    sql: ${TABLE}.PSF ;;
  }

  dimension: season {
    type: string
    sql: ${TABLE}.Season ;;
  }

  dimension: shipping_company {
    type: string
    sql: ${TABLE}.ShippingCompany ;;
  }

  dimension: size {
    type: string
    sql: ${TABLE}.Size ;;
  }

  dimension: sku {
    type: string
    sql: ${TABLE}.SKU ;;
  }

  dimension: ss {
    type: number
    sql: ${TABLE}.SS ;;
  }

  measure: stock {
    type: sum
    sql: ${TABLE}.Stock ;;
  }

  dimension: supplier {
    type: string
    sql: ${TABLE}.Supplier ;;
  }

  dimension: telefon {
    type: string
    sql: ${TABLE}.Telefon ;;
  }

  measure: total_amount {
    type: sum
    sql: ${TABLE}.Total_Amount ;;
  }

  dimension: township {
    label: "İlçe"
    type: string
    sql: ${TABLE}.Township ;;
  }

  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}

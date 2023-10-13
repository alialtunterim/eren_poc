# The name of this view in Looker is "C Offline Sales"
view: c_offline_sales {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.looker_poc.c_OfflineSales` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Attribute11" in Explore.

  dimension: attribute11 {
    type: string
    sql: ${TABLE}.ATTRIBUTE11 ;;
  }

  dimension: customer_trx_id {
    type: number
    sql: ${TABLE}.CUSTOMER_TRX_ID ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.DESCRIPTION ;;
  }

  dimension: fatura_no {
    type: string
    sql: ${TABLE}.FATURA_NO ;;
  }

  dimension: kdv_dahil_tutar {
    type: number
    sql: ${TABLE}.KDV_DAHIL_TUTAR ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_kdv_dahil_tutar {
    label: "Total Sales"
    type: sum
    value_format: "#,##0"
    sql: ${kdv_dahil_tutar} ;;  }

  dimension: magaza_adi {
    type: string
    sql: ${TABLE}.MAGAZA_ADI ;;
  }

  dimension: marka {
    type: string
    sql: ${TABLE}.MARKA ;;
  }

  dimension: musteri_no {
    type: string
    sql: ${TABLE}.MUSTERI_NO ;;
  }

  dimension: product_category {
    type: string
    sql: ${TABLE}.PRODUCT_CATEGORY ;;
  }

  dimension: sale_type {
    type: string
    sql: ${TABLE}.SALE_TYPE ;;
  }

  dimension: sap_cust_id {
    primary_key: yes
    type: number
    sql: CAST (${TABLE}.SAP_CUST_ID AS INT64);;

    link: {
      label: "Customer Detail"
      url: "https://komtas.cloud.looker.com/dashboards/118?Sap%20Cust%20ID={{ value }}"
    }
  }

  dimension: segment1 {
    type: string
    sql: ${TABLE}.SEGMENT1 ;;
  }

  dimension: segment2 {
    type: string
    sql: ${TABLE}.SEGMENT2 ;;
  }

  dimension: segment3 {
    type: string
    sql: ${TABLE}.SEGMENT3 ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: tarih {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.TARIH ;;
  }

  dimension: tip {
    type: string
    sql: ${TABLE}.TIP ;;
  }

  dimension: toplam_adet {
    type: number
    sql: ${TABLE}.TOPLAM_ADET ;;
  }

  dimension: tutar {
    type: number
    sql: ${TABLE}.TUTAR ;;
  }
  measure: count {
    type: count
  }
}

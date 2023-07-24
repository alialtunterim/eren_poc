# The name of this view in Looker is "D City"
view: d_city {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.looker_poc.d_city` ;;

  dimension: city2 {
    type: string
    sql: ${TABLE}.CITY2 ;;
  }

  dimension: city3 {
    type: string
    sql: ${TABLE}.CITY3 ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.LATITUDE ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.LONGITUDE ;;
  }

  dimension: order_data_city {
    type: string
    sql: ${TABLE}.ORDER_DATA_CITY ;;
  }
  measure: count {
    type: count
  }
}

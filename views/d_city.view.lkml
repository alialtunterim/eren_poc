# The name of this view in Looker is "D City"
view: d_city {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.looker_poc.d_city` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City2" in Explore.

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

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_latitude {
    type: sum
    sql: ${latitude} ;;  }
  measure: average_latitude {
    type: average
    sql: ${latitude} ;;  }

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

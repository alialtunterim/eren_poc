# The name of this view in Looker is "D Township"
view: d_township {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.looker_poc.d_township` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "City" in Explore.

  dimension: city {
    type: string
    sql: ${TABLE}.City ;;
  }

  dimension: lat {
    type: number
    sql: ${TABLE}.Lat ;;
  }

  dimension: long {
    type: number
    sql: ${TABLE}.Long ;;
  }

  dimension: township {
    type: string
    sql: ${TABLE}.Township ;;
  }

  dimension: township_lat_long {
    type: location
    sql_latitude: ${lat} ;;
    sql_longitude: ${long} ;;
    suggest_dimension: city
  }

  measure: count {
    type: count
  }
}

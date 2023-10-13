# The name of this view in Looker is "C Customers"
view: c_customers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.looker_poc.c_customers` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Attributes" in Explore.

  dimension: attributes {
    type: string
    sql: ${TABLE}.attributes ;;
  }

  dimension: customer_id {
    label: "SAP Cust ID"
    type: number
    sql: CAST(json_value(${TABLE}.attributes['customer_id']) AS INT64) ;;

    link: {
      label: "Customer Detail"
      url: "https://komtas.cloud.looker.com/dashboards/118?Sap%20Cust%20ID={{ value }}"
    }
  }

  dimension: attributes_kwargs {
    type: string
    sql: ${TABLE}.attributes_kwargs ;;
  }

  dimension: call_allowed {
    type: yesno
    sql: ${TABLE}.call_allowed ;;
  }

  dimension: channel {
    type: number
    sql: ${TABLE}.channel ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  dimension: channel_code {
    type: string
    sql: ${TABLE}.channel_code ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.created_date ;;
  }

  dimension_group: date_joined {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.date_joined ;;
  }

  dimension_group: date_of_birth {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.date_of_birth ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: email_allowed {
    type: yesno
    sql: ${TABLE}.email_allowed ;;
  }

  dimension: erp_code {
    type: string
    sql: ${TABLE}.erp_code ;;
  }

  dimension: extra_field {
    type: string
    sql: ${TABLE}.extra_field ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}.is_active ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: localized_attributes {
    type: string
    sql: ${TABLE}.localized_attributes ;;
  }

  dimension: localized_attributes_kwargs {
    type: string
    sql: ${TABLE}.localized_attributes_kwargs ;;
  }

  dimension_group: modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.modified_date ;;
  }

  dimension: phone_number {
    type: string
    sql: ${TABLE}.phone_number ;;
  }

  dimension: pk {
    label: "Customer"
    type: number
    sql: ${TABLE}.pk ;;
  }

  dimension: sms_allowed {
    type: yesno
    sql: ${TABLE}.sms_allowed ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.user_type ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}

# The name of this view in Looker is "Customers"
view: customers {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.omnitron.customers` ;;

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

  dimension: customer_id {
    type: number
    sql: json_value(${TABLE}.attributes ['customer_id']) ;;
  }

  dimension: attributes_kwargs {
    type: string
    description: "Attributes kwargs"
    sql: ${TABLE}.attributes_kwargs ;;
  }

  dimension: call_allowed {
    type: yesno
    description: "Call allowed"
    sql: ${TABLE}.call_allowed ;;
  }

  dimension: channel {
    type: number
    description: "[Foreign Key] channel"
    sql: ${TABLE}.channel ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_channel {
    type: sum
    sql: ${channel} ;;  }
  measure: average_channel {
    type: average
    sql: ${channel} ;;  }

  dimension: channel_code {
    type: string
    description: "Channel customer code"
    sql: ${TABLE}.channel_code ;;
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

  dimension_group: date_joined {
    type: time
    description: "Date joined"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.date_joined ;;
  }

  dimension_group: date_of_birth {
    type: time
    description: "Date of birth"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.date_of_birth ;;
  }

  dimension: email {
    type: string
    description: "E-posta"
    sql: ${TABLE}.email ;;
  }

  dimension: email_allowed {
    type: yesno
    description: "Email allowed"
    sql: ${TABLE}.email_allowed ;;
  }

  dimension: erp_code {
    type: string
    description: "Partner customer code"
    sql: ${TABLE}.erp_code ;;
  }

  dimension: extra_field {
    type: string
    description: "Extra field"
    sql: ${TABLE}.extra_field ;;
  }

  dimension: first_name {
    type: string
    description: "First name"
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    type: string
    description: "Gender"
    sql: ${TABLE}.gender ;;
  }

  dimension: is_active {
    type: yesno
    description: "Is active"
    sql: ${TABLE}.is_active ;;
  }

  dimension: last_name {
    type: string
    description: "Last name"
    sql: ${TABLE}.last_name ;;
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

  dimension: phone_number {
    type: string
    description: "Phone number"
    sql: ${TABLE}.phone_number ;;
  }

  dimension: pk {
    type: number
    description: "ID"
    sql: ${TABLE}.pk ;;
  }

  dimension: sms_allowed {
    type: yesno
    description: "Sms allowed"
    sql: ${TABLE}.sms_allowed ;;
  }

  dimension: user_type {
    type: string
    description: "User type"
    sql: ${TABLE}.user_type ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }
}

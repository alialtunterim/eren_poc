# The name of this view in Looker is "Products"
view: products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.omnitron.products` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Attribute Set" in Explore.

  dimension: attribute_set {
    type: number
    description: "[Foreign Key] attribute_set"
    sql: ${TABLE}.attribute_set ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

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

  dimension: base_code {
    type: string
    description: "Base code"
    sql: ${TABLE}.base_code ;;
  }

  dimension: brand_id {
    type: string
    description: "Brand id"
    sql: ${TABLE}.brand_id ;;
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

  dimension: custom_attribute_set {
    type: number
    description: "[Foreign Key] custom_attribute_set"
    sql: ${TABLE}.custom_attribute_set ;;
  }

  dimension: data_source_id {
    type: number
    description: "Data source ID"
    sql: ${TABLE}.data_source_id ;;
  }

  dimension: description {
    type: string
    description: "Description"
    sql: ${TABLE}.description ;;
  }

  dimension: extra_attributes {
    type: string
    description: "Extra attributes"
    sql: ${TABLE}.extra_attributes ;;
  }

  dimension: group_products {
    type: string
    description: "Group products"
    sql: ${TABLE}.group_products ;;
  }

  dimension: is_active {
    type: yesno
    description: "Is active"
    sql: ${TABLE}.is_active ;;
  }

  dimension: is_child_update {
    type: yesno
    description: "Is child update"
    sql: ${TABLE}.is_child_update ;;
  }

  dimension: listing_code {
    type: string
    description: "Listing code"
    sql: ${TABLE}.listing_code ;;
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

  dimension: name {
    type: string
    description: "Name"
    sql: ${TABLE}.name ;;
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

  dimension: product_mapping_key_list {
    type: string
    description: "Product mapping key list"
    sql: ${TABLE}.product_mapping_key_list ;;
  }

  dimension: product_type {
    type: string
    description: "Product type"
    sql: ${TABLE}.product_type ;;
  }

  dimension: productimage_set {
    type: string
    description: "Productimage set"
    sql: ${TABLE}.productimage_set ;;
  }

  dimension_group: productization {
    type: time
    description: "Productization date"
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.productization_date ;;
  }

  dimension: sku {
    type: string
    description: "Sku"
    sql: ${TABLE}.sku ;;
  }

  dimension: tax_rate {
    type: number
    description: "Tax rate"
    sql: ${TABLE}.tax_rate ;;
  }

  dimension: update_product_meta_name {
    type: yesno
    description: "Update product meta name"
    sql: ${TABLE}.update_product_meta_name ;;
  }

  dimension: uuid {
    type: string
    description: "Uuid"
    sql: ${TABLE}.uuid ;;
  }

  dimension: weight {
    type: number
    description: "Weight"
    sql: ${TABLE}.weight ;;
  }
  measure: count {
    type: count
    drill_fields: [update_product_meta_name, name]
  }
}

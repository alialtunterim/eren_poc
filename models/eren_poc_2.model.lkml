connection: "eren_poc"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

datagroup: eren_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

label: "POC Eren Perakende 2"


explore: c_offline_sales {
  label: "Eren Offline Data"

  join: c_customers {
    relationship: many_to_one
    sql_on: ${c_offline_sales.sap_cust_id} = ${c_customers.customer_id} ;;
  }

  join: c_products {
    relationship: many_to_one
    sql_on: ${c_offline_sales.segment1} = ${c_products.online_segment1} ;;
  }

}

explore: c_order_items {
  label: "Eren Online Data"

  join: c_orders{
    relationship: many_to_one
    sql_on: ${c_order_items.order} = ${c_orders.pk} ;;
  }

  join: c_customers {
    relationship: many_to_one
    sql_on: ${c_customers.pk} = ${c_orders.customer} ;;
  }

  join: c_products {
    relationship: many_to_one
    sql_on: ${c_products.pk} = ${c_order_items.product} ;;
  }

}

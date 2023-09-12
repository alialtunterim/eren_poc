connection: "eren_poc"

include: "/views/new_tables/*.view.lkml"                # include all views in the views/ folder in this project



explore: orders {
  label: "Eren Converse Data"

  join: customers {
    relationship: many_to_one
    sql_on: ${orders.customer} = ${customers.pk} ;;
  }

  join: offline_sales_copy {
    relationship: many_to_one
    sql_on: ${offline_sales_copy.sap_cust_id} = ${customers.customer_id} ;;
  }

}

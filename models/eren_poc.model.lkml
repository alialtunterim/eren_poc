# Define the database connection to be used for this model.
connection: "eren_poc"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: eren_poc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "24 hour"
}

label: "POC Eren Perakende"

persist_with: eren_poc_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Eren Poc"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: order_data {
  label: "Eren Sipariş Datası"
  join: products {
    relationship: many_to_one
    sql_on: ${order_data.sku}=${products.sku} and ${order_data.base_code}=${products.base_code};;
  }

  join:d_city {
    relationship: many_to_one
    sql_on: ${d_city.order_data_city}=${order_data.city} ;;
  }

  join: d_township {
    relationship: many_to_one
    sql_on: ${d_township.township}=${order_data.township};;
  }

}

explore: customer_data {
  label: "Eren Müşteri Datası"
  join: order_data {
    relationship: one_to_many
    sql_on: ${customer_data.mail}=${order_data.email} ;;
  }
}

explore: c_customers {
  label: "Eren Converse Data"

  join: c_orders {
    relationship: one_to_many
    sql_on: ${c_customers.pk} = ${c_orders.customer} ;;
  }

  join: c_offline_sales {
    relationship: one_to_many
    sql_on: ${c_offline_sales.sap_cust_id} = ${c_customers.customer_id} ;;
  }

  join: c_order_items {
    relationship: one_to_many
    sql_on: ${c_order_items.pk} = ${c_orders.pk} ;;
  }

  join: c_products {
    relationship: many_to_one
    sql_on: ${c_products.pk} = ${c_order_items.product};;
  }

}

explore: c_offline_sales {
  label: "Offline Data"
}

explore: c_orders {
  label: "Online Data"
}

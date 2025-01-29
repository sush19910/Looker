connection: "wawa_bq_prd_conn"
include: "/views/*.view.lkml"

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.

datagroup: sap_rmn_acc_wawa_prd_default_datagroup {
  #sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sap_rmn_acc_wawa_prd_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.
# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
explore: rmn_kiosk_sales_transaction_v_prd_dly {
  view_label: "Kiosk Data"
  join: rmn_eps_store_feed_prd{
    type: left_outer
    view_label: "Store Feed"
    relationship: many_to_one
    sql_on: ${rmn_kiosk_sales_transaction_v_prd_dly.store_id} = CAST(${rmn_eps_store_feed_prd.store_id} AS STRING) ;;
  }
}


# Optional: Specify any additional settings, like fields, filters, etc.


#explore:  stg_eps_store_feed {}
#   join: orders {
#     relationship: many_to_one
#     sql_on: ${orders.id} = ${order_items.order_id} ;;
#   }
#
#   join: users {
#     relationship: many_to_one
#     sql_on: ${users.id} = ${orders.user_id} ;;
#   }
# }

connection: "wawa_bq_dev_conn"

include: "/views/*.view.lkml"
#include:"/home_sql_runner.view.lkml"
# include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.

explore:rmn_sales_transaction_dly_uat_2{
  # always_filter: {
  #   filters: [rmn_sales_transaction_dly_uat_2.timeframes: "Selected Period"]
  # }
  # join: sql_runner_query {
  #   relationship: one_to_one
  #   sql_on: ${rmn_sales_transaction_dly_uat_2.campaign_id}=${sql_runner_query.campaign_id} ;;
  # }
}
#explore:home_sql_runner{}
#explore:sql_runner_query{}
#explore: pop_previous {
  #always_filter: {
  #  filters: ["test.date_filter"]
  #}
  #sql_always_where: ${timeframes} <>'Not in time period' ;;
  #extends: [test]
  #view_name: test

#join: test {
  # view_label: "join_test"
#}
#}
#   label: "PoP Method 7: Compare any period with the previous period"
#   always_filter: {
#     filters: [date_filter]
#   }
#   sql_always_where: ${timeframes} <>'Not in time period' ;;
# }
# explore: order_items {
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

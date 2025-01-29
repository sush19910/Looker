# Define the database connection to be used for this model.
connection: "wawa_bq_prd_conn"
# include all the views
include: "/views/**/*.view.lkml"
include: "/dashboards/**/*.dashboard.lookml" # include all the dashboard
# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.
datagroup: sap_rmn_acc_wawa_prd_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sap_rmn_acc_wawa_prd_default_datagroup
# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Cta Project Wo Statezip"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.


explore: rmn_sales_transaction_dly{

   ## join: rmn_sales_transaction_summary {
   ## type: inner # or inner join depending on your requirement
   ## sql_on: ${rmn_sales_transaction_dly.src_sys_cd} = ${rmn_sales_transaction_summary.src_sys_cd} ;;
   ## relationship: many_to_many # or one_to_many depending on the relationship
  ##}
}

# explore: rmn_sales_transaction_summary{}

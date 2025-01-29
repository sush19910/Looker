# Define the database connection to be used for this model.

connection: "wawa_bq_dev_conn"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: sap_rmn_acc_wawa_dev_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: sap_rmn_acc_wawa_dev_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Sap Rmn Acc Wawa Dev"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

#explore: stg_vap_gbc_report {}

#explore: stg_vap_pop_report {}
explore : rmn_vap_prm_report {
  # join: rmn_eps_store_feed {
  #   type: left_outer
  #   view_label: "Store Feed"
  #   relationship: many_to_one
  #   sql_on: ${rmn_vap_prm_report.location_name} = CAST(${rmn_eps_store_feed.store_id} AS STRING) ;;
# }
}
##explore: stg_vap_gbc_report {
## join: stg_vap_pbc_report {
##  type: inner
##  sql_on: ${stg_vap_gbc_report.Location_Name}  = ${stg_vap_pbc_report.Location_Name};;
##  relationship: many_to_many
##}

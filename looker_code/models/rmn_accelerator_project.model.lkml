# Define the database connection to be used for this model.
connection: "conn-sa-sapient-ce-demo"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: rmn_accelerator_project_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: rmn_accelerator_project_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Rmn Accelerator Project"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: campaign {}



explore: advertisement {
  #fields: [campaign.capmpaign_start,campaign.capmpaign_end]
  #fields: [campaign.*]
  join: campaign {
    type: left_outer
    sql_on: ${advertisement.campiagn_id} = ${campaign.campiagn_id} ;;
    #fields: [campaign.capmpaign_start,campaign.capmpaign_end]
    #fields: [campaign.*]
    relationship: many_to_one
  }
}

explore: ad_placement {
  join: advertisement {
    type: left_outer
    sql_on: ${ad_placement.ad_id} = ${advertisement.ad_id}
      and ${ad_placement.campiagn_id} = ${advertisement.campiagn_id} ;;
    relationship: many_to_one
  }
}

# incomplete join
# explore: impression {
#   join: ad_placement {
#     type: left_outer
#     sql_on: ${impression.product_id} = ${ad_placement.product_id}
#     and ${impression.ad_id} = ${ad_placement.ad_id}
#     and ${impression.campiagn_id} = ${ad_placement.campiagn_id};;
#   }
# }

explore: click {
  join: impression {
    type: left_outer
    sql_on: ${click.impression_id} = ${impression.impression_id} ;;
    relationship: many_to_one
  }
}

explore: sales_transaction {
  join: impression {
    type: left_outer
    sql_on: ${sales_transaction.impression_id} = ${impression.impression_id} ;;
    relationship: many_to_one
  }

  join: click {
    type: left_outer
    sql_on: ${sales_transaction.click_id} = ${click.click_id} ;;
    relationship: many_to_one
  }
}

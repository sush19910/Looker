# The name of this view in Looker is "Click"
view: click {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `rmn_accelerator.click` ;;
  drill_fields: [click_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: click_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.click_id ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ad ID" in Explore.

  dimension: ad_id {
    type: string
    sql: ${TABLE}.ad_id ;;
  }

  dimension: campiagn_id {
    type: string
    sql: ${TABLE}.campiagn_id ;;
  }

  dimension: channel_id {
    type: string
    sql: ${TABLE}.channel_id ;;
  }

  dimension: impression_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.impression_id ;;
  }

  dimension: placement_id {
    type: string
    sql: ${TABLE}.placement_id ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [click_id, impression.impression_id, sales_transaction.count]
  }
}

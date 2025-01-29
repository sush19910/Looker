# The name of this view in Looker is "Sales Transaction"
view: sales_transaction {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `rmn_accelerator.sales_transaction` ;;
  drill_fields: [sales_transaction_id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: sales_transaction_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.sales_transaction_id ;;
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

  dimension: click_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.click_id ;;
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

  dimension: transaction_amount {
    type: number
    sql: ${TABLE}.transaction_amount ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_transaction_amount {
    type: sum
    sql: ${transaction_amount} ;;  }
  measure: average_transaction_amount {
    type: average
    sql: ${transaction_amount} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }

  dimension: transaction_quantity {
    type: number
    sql: ${TABLE}.transaction_quantity ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }
  measure: count {
    type: count
    drill_fields: [sales_transaction_id, impression.impression_id, click.click_id]
  }
}

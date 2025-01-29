# The name of this view in Looker is "Susmita"
view: rmn_sales_transaction_dly{
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `sap-rmn-acc-wawa-prd-mg.rmn_accel_dm.rmn_sales_transaction_dly` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Ad Spend" in Explore.
############### Chnge font using HTML######

  dimension: ad_spend {
    type: number
    sql: ${TABLE}.ad_spend ;;
  }

  measure: ad_spend_sum {
    type: sum
    sql: ${TABLE}.ad_spend ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }
  measure: ad_spend_formatted_value {
    type: string
    sql:
    CASE
      WHEN ${ad_spend_sum} >= 1000 AND ${ad_spend_sum} < 1000000 THEN
        '$' || CAST(TRUNC(${ad_spend_sum}/1000, 2) AS STRING) || 'K'
      WHEN ${ad_spend_sum} >= 1000000 AND ${ad_spend_sum} < 1000000000 THEN
        '$' || CAST(TRUNC(${ad_spend_sum}/1000000, 2) AS STRING) || 'M'
      WHEN ${ad_spend_sum} >= 1000000000 AND ${ad_spend_sum} < 1000000000000 THEN
        '$' || CAST(TRUNC(${ad_spend_sum}/1000000000, 2) AS STRING) || 'B'
      ELSE
        '$' || CAST(TRUNC(${ad_spend_sum}, 2) AS STRING)
    END;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;    }


  dimension: brand {
    type: string
    sql: ${TABLE}.brand;;
  }

  dimension: budget {
    type: number
    sql: ${TABLE}.budget ;;
  }
  measure: budget_sum {
    type: sum
    sql: ${TABLE}.budget ;;
    value_format: "$#,##0"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: campaign_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.campaign_end_date ;;
  }

  dimension: campaign_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.campaign_id ;;
  }



  dimension: campaign_is_active {
    type: yesno
    sql: ${TABLE}.campaign_is_active ;;
  }

  # dimension: campaign_name {
  #   type: string
  #   sql: ${TABLE}.campaign_name ;;
  # }


  dimension_group: campaign_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.campaign_start_date ;;
  }

  dimension: channel {
    type: string
    #sql: ${TABLE}.channel ;;
    sql:CASE
          when ${TABLE}.channel ='App' then '  Onsite-App'
          when ${TABLE}.channel='Web' then '  Onsite-Web'
          when ${TABLE}.channel is null then '  Offsite'

      END ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  measure: clicks_sum {
    type: sum
    sql: ${TABLE}.clicks ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

  dimension: conversion {
    type: number
    sql: ${TABLE}.conversion ;;

  }


  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregatesxz.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: conversion_sum {
    type: sum
    sql: ${conversion} ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

  measure: average_conversion {
    type: average
    sql: ${conversion} ;;  }

  dimension: conversion_rate {
    type: number
    sql: ${TABLE}.conversion_rate ;;
  }

  measure: conversion_rate_sum {
    type: number
    sql: safe_divide(${conversion_sum},${clicks_sum}) ;;
    value_format_name: percent_2
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;

  }


  dimension: cpc {
    type: number
    sql: ${TABLE}.cpc ;;
  }

  measure: cpc_sum {
    type: number
    sql: ROUND(${ad_spend_sum} / NULLIF(${clicks_sum}, 0), 2) ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;

  }

  dimension: cpm {
    type: number
    sql: ${TABLE}.cpm ;;
  }
  measure: cpm_sum {
    type: number
    sql: ROUND(${ad_spend_sum} / NULLIF(${impressions_sum}, 0) * 1000, 2) ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }



  dimension: cpt {
    type: number
    sql: ${TABLE}.cpt ;;
  }

  measure: cpt_sum {
    type: number
    sql: ROUND(${ad_spend_sum} / NULLIF(${transactions_sum}, 0), 2) ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;

  }


  dimension: ctr {
    type: number
    sql: ${TABLE}.ctr ;;
  }

  measure: ctr_sum {
    type: number
    sql: ${clicks_sum} / ${impressions_sum} ;;
    value_format: "0.00%"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }



  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }
  measure: impressions_sum {
    type: sum
    sql: ${TABLE}.impressions ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }
  ###Removed Round off and added Trunc
  measure: impressions_formatted_value {
    type: string
    sql:
    CASE
      WHEN ${impressions_sum} >= 1000 AND ${impressions_sum} < 1000000 THEN
          CAST(TRUNC(${impressions_sum}/1000, 2) AS STRING) || 'K'
      WHEN ${impressions_sum} >= 1000000 AND ${impressions_sum} < 1000000000 THEN
          CAST(TRUNC(${impressions_sum}/1000000, 2) AS STRING) || 'M'
      WHEN ${impressions_sum} >= 1000000000 AND ${impressions_sum} < 1000000000000 THEN
          CAST(TRUNC(${impressions_sum}/1000000000, 2) AS STRING) || 'B'
      ELSE
          CAST(TRUNC(${impressions_sum}, 2) AS STRING)
    END;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
    #html: <p style="color: rgb(38, 45, 51); font-size:24px; text-align:center; margin: 0;  padding: 0px; line-height: 1.5em; font-weight: 400; font-family: Google Sans;  ">{{ rendered_value }}</p>;;

  }

  dimension_group: load_dttm {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.load_dttm ;;
  }

  dimension: placement {
    type: string
    sql: ${TABLE}.placement ;;
  }

  dimension: product_id {
    type: string
    sql: ${TABLE}.product_id ;;
  }

  dimension: product_name {
    type: string
    # sql: INITCAP(${TABLE}.product_name) ;;
    sql: ${TABLE}.product_name;;
  }

#### We need only Produvt name in filter and not UPC as per WARE: 218
  dimension: prod_name {
    type: string
    sql: REGEXP_REPLACE(${TABLE}.product_name, r'(-\s?\d+$)', '') ;;
  }
  dimension: productUPC {
    type: string
    sql: CONCAT(${prod_name}, ' - ', ${product_id}) ;;
  }
  ###############
  dimension: revenue {
    type: number
    sql: ROUND (${TABLE}.revenue, 2) ;;
  }
  measure: revenue_sum {
    type: sum
    sql: ${TABLE}.revenue ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }
  measure: revenue_formatted_value {
    type: string
    sql:
    CASE
      WHEN ${revenue_sum} >= 1000 AND ${revenue_sum} < 1000000 THEN
        '$' || CAST(TRUNC(${revenue_sum}/1000, 2) AS STRING) || 'K'
      WHEN ${revenue_sum} >= 1000000 AND ${revenue_sum} < 1000000000 THEN
        '$' || CAST(TRUNC(${revenue_sum}/1000000, 2) AS STRING) || 'M'
      WHEN ${revenue_sum} >= 1000000000 AND ${revenue_sum} < 1000000000000 THEN
        '$' || CAST(TRUNC(${revenue_sum}/1000000000, 2) AS STRING) || 'B'
      ELSE
        '$' || CAST(TRUNC(${revenue_sum}, 2) AS STRING)
    END;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
    #html: <p style="color: rgb(38, 45, 51); font-size:24px; text-align:center; margin: 0;  padding: 0px; line-height: 1.5em; font-weight: 400; font-family: Google Sans;  ">{{ rendered_value }}</p>;:
  }


  dimension: roas {
    type: number
    sql: ${TABLE}.roas ;;
  }
  measure: roas_sum {
    type: number
    sql: safe_divide(${revenue_sum},${ad_spend_sum}) ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }
  measure: roas_formatted_value {
    type: string
    sql: safe_divide(${revenue_sum},${ad_spend_sum}) ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
    #html: <p style="color: rgb(38, 45, 51); font-size:24px; text-align:center; margin: 0;  padding: 0px; line-height: 1.5em; font-weight: 400; font-family: Google Sans;  ">{{ rendered_value }}</p>;;

  }

  dimension: src_sys_cd {
    type: string
    sql: ${TABLE}.src_sys_cd ;;
  }

  dimension: supplier_id {
    type: string
    sql: ${TABLE}.supplier_id ;;
  }

  dimension: supplier_name {
    label: "Advertiser Name"
    type: string
    sql: ${TABLE}.supplier_name;;
  }
#####test changes_Abhi
#   dimension_group: transaction {
#     type: time
#     timeframes: [raw, date, week, month, year ,month_name ,month_num]
#     convert_tz: no
#     # datatype: date
#     sql: ${TABLE}.transaction_date ;;
#   }
# ##########################
  dimension_group: transaction {
    type: time
    datatype: date
    timeframes: [
      raw,
      time,
      hour_of_day,
      date,
      day_of_week,
      day_of_week_index,
      day_of_month,
      day_of_year,
      week,
      week_of_year,
      month,
      month_name,
      month_num,
      quarter,
      year
    ]
    sql: ${TABLE}.transaction_date ;;
    convert_tz: no
  }

  # dimension: current_date_selected {
  #   type: date
  #   sql: {% date_start transaction_date %};;
  # }

  # dimension: previous_date_period {
  #   type: date
  #   sql: lag(${transaction_raw}, 1) over (order by ${transaction_raw});;
  # }



###########


  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }
  measure: transactions_sum {
    type: sum
    sql: ${TABLE}.transactions ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

  measure: transactions_formatted_value {
    type: string
    sql:
    CASE
      WHEN ${transactions_sum} >= 1000 AND ${transactions_sum} < 1000000 THEN
          CAST(ROUND(${transactions_sum}/1000) AS STRING) || 'K'
      WHEN ${transactions_sum} >= 1000000 AND ${transactions_sum} < 1000000000 THEN
          CAST(ROUND(${transactions_sum}/1000000) AS STRING) || 'M'
      WHEN ${transactions_sum} >= 1000000000 AND ${transactions_sum} < 1000000000000 THEN
          CAST(ROUND(${transactions_sum}/1000000000) AS STRING) || 'B'
      ELSE
          CAST(${transactions_sum} AS STRING)
    END;;
    html: <p style="color: rgb(38, 45, 51); font-size:24px; text-align:center; margin: 0;  padding: 0px; line-height: 1.5em; font-weight: 400; font-family: Google Sans;  ">{{ rendered_value }}</p>;;

  }


  dimension: unique_impressions {
    type: number
    sql: ${TABLE}.unique_impressions ;;
  }

  dimension: Tactic {
    type: string
    sql: CASE

                      WHEN ${TABLE}.adtypename = 'Sponsored Product Ad (SPA)' THEN '     SPA    '
                      ELSE ${TABLE}.adtypename
                      END ;;
  }


  measure: unique_impressions_sum {
    type: sum
    sql: ${TABLE}.unique_impressions ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }
  dimension: units_sold {
    type: number
    sql: ${TABLE}.units_sold ;;
  }
  measure: units_sold_sum {
    type: sum
    sql: ${TABLE}.units_sold ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

  dimension_group: upd_dttm {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.upd_dttm ;;
  }
  measure: count {
    type: count
    drill_fields: [campaign_name, supplier_name, product_name]
  }
  ## For filtered measures POP


  filter: date_filter {
    #view_label: "_PoP"
    description: "Use this date filter in combination with the timeframes dimension for dynamic date filtering"
    type: date
  }



  dimension_group: filter_start_date {
    hidden: yes
    type: time
    timeframes: [raw,date]
    #You can replace the '2013-01-01' with the first date in your database
    sql:  CASE WHEN {% date_start date_filter %} IS NULL THEN '2024-01-01' ELSE CAST({% date_start date_filter %} AS DATE) END;;

  }
  dimension_group: filter_end_date {
    hidden: yes
    type: time
    timeframes: [raw,date]
    sql: CASE WHEN {% date_end date_filter %} IS NULL THEN CURRENT_DATE ELSE CAST({% date_end date_filter %} AS DATE) END;;
  }
  dimension: interval {
    hidden: yes
    type: number
    sql: DATE_DIFF(${filter_end_date_raw}, ${filter_start_date_raw}, DAY) ;;
  }

#start date of the previous period
  dimension: previous_start_date {
    hidden: yes
    type: string
    sql: DATE_ADD(${filter_start_date_raw}, INTERVAL- ${interval} DAY);;
  }

  dimension: is_current_period {
    hidden: yes
    type: yesno
    sql: ${transaction_date} >= ${filter_start_date_date} AND ${transaction_date} < ${filter_end_date_date} ;;
  }

  dimension: is_previous_period {
    hidden: yes
    type: yesno
    sql: ${transaction_date} >= ${previous_start_date} AND ${transaction_date} < ${filter_start_date_date} ;;
  }
  dimension: timeframes {
    # view_label: "_PoP"
    type: string
    case: {
      when: {
        sql: ${is_current_period} = true;;
        label: "Selected Period"
      }
      when: {
        sql: ${is_previous_period} = true;;
        label: "Previous Period"
      }
      else: "Not in time period"
    }
  }

  dimension: campaign_name {
    type: string
    sql:  ${TABLE}.campaign_name;;

  }
  # dimension: channel {
  #   type: string
  #   sql: CASE
  #   WHEN ${TABLE}.channel = 'App' AND ${transaction_date} >= ${filter_start_date_raw} AND ${transaction_date} <= ${filter_end_date_raw} THEN '  Onsite-App'
  #   WHEN ${TABLE}.channel = 'Web' AND ${transaction_date} >= ${filter_start_date_raw} AND ${transaction_date} <= ${filter_end_date_raw} THEN '  Onsite-Web'
  #   WHEN ${TABLE}.channel = 'Kio' AND ${transaction_date} >= ${filter_start_date_raw} AND ${transaction_date} <= ${filter_end_date_raw} THEN '  Kiosk'
  #   WHEN ${TABLE}.channel IS NULL AND ${transaction_date} >= ${filter_start_date_raw} AND ${transaction_date} <= ${filter_end_date_raw} THEN '  Offsite'
  #   ELSE '     Others'
  #   END;;
  # }

}

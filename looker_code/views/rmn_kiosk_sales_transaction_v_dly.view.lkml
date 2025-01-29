view: rmn_kiosk_sales_transaction_v_dly {
  sql_table_name: `sap-rmn-acc-wawa-dev-mg.rmn_accel_dm.rmn_kiosk_sales_transaction_v_dly` ;;


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
  dimension: ad_type_name {
    type: string
    sql: ${TABLE}.ad_type_name ;;
  }
  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
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
  dimension_group: campaign_end {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.campaign_end_date ;;
  }
  dimension: campaign_id {
    type: string
    sql: ${TABLE}.campaign_id ;;
  }
  dimension: campaign_is_active {
    type: yesno
    sql: ${TABLE}.campaign_is_active ;;
  }
  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }
  dimension_group: campaign_start {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.campaign_start_date ;;
  }
  dimension: channel {
    type: string
    sql: ${TABLE}.channel ;;
  }
  dimension: conversion {
    type: number
    sql: ${TABLE}.conversion ;;
  }
  measure: conversion_sum {
    type: sum
    sql: ${conversion} ;;
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
    sql: safe_divide(${revenue_sum},${ad_spend_sum}) ;;
    value_format: "$#,##0.00"
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
    sql: ${TABLE}.product_name ;;
  }
  dimension: rec_sts_cd {
    type: yesno
    sql: ${TABLE}.rec_sts_cd ;;
  }
  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }
  measure: revenue_sum {
    type: sum
    sql: ${TABLE}.revenue ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }
  dimension: roas {
    type: number
    sql: ${TABLE}.roas ;;
  }
  #### using only safedivide we are still getting null values as roas hence used below method.... ####
  measure: roas_sum_table {
    type: number
    sql: CASE
          WHEN ${ad_spend_sum} = 0 OR ${revenue_sum} = 0 THEN 0
          ELSE safe_divide(${revenue_sum}, ${ad_spend_sum})
       END ;;
    value_format: "$#,##0.00"
  }
  measure: roas_sum {
    type: number
    sql: safe_divide(${revenue_sum},${ad_spend_sum}) ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }
  dimension: src_sys_cd {
    type: string
    sql: ${TABLE}.src_sys_cd ;;
  }
  dimension: store_id {
    type: string
    primary_key: yes
    sql: ${TABLE}.store_id ;;
  }
  dimension: supplier_id {
    type: string
    sql: ${TABLE}.supplier_id ;;
  }
  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
  }
  dimension_group: transaction {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }
  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }
  measure: transactions_sum {
    type: sum
    sql: ${TABLE}.transactions ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

  dimension: unique_impressions {
    type: number
    sql: ${TABLE}.unique_impressions ;;
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
    drill_fields: [ad_type_name, campaign_name, supplier_name, product_name]
  }
#   ######............... For DATE measures POP    #############
#   filter: date_filter {
#     view_label: "_PoP"
#     description: "Use this date filter in combination with the timeframes dimension for dynamic date filtering"
#     type: date
#   }
#   dimension_group: filter_start_date {
#     hidden: yes
#     type: time
#     timeframes: [raw,date]
#     #You can replace the '2013-01-01' with the first date in your database
#     sql: CASE WHEN {% date_start date_filter %} IS NULL THEN '2024-01-01' ELSE CAST({% date_start date_filter %} AS DATE) END;;
#   }
#   dimension_group: filter_end_date {
#     hidden: yes
#     type: time
#     timeframes: [raw,date]
#     sql: CASE WHEN {% date_end date_filter %} IS NULL THEN CURRENT_DATE ELSE CAST({% date_end date_filter %} AS DATE) END;;
#   }
#   dimension: interval {
#     hidden: yes
#     type: number
#     sql: DATE_DIFF(${filter_end_date_raw}, ${filter_start_date_raw}, DAY) ;;
#   }
# #start date of the previous period
#   dimension: previous_start_date {
#     hidden: yes
#     type: string
#     sql: DATE_ADD(${filter_start_date_raw}, INTERVAL- ${interval} DAY);;
#   }

#   dimension: is_current_period {
#     hidden: yes
#     type: yesno
#     sql: ${transaction_date} >= ${filter_start_date_date} AND ${transaction_date} < ${filter_end_date_date} ;;
#   }

#   dimension: is_previous_period {
#     hidden: yes
#     type: yesno
#     sql: ${transaction_date} >= ${previous_start_date} AND ${transaction_date} < ${filter_start_date_date} ;;
#   }
#   dimension: timeframes {
#     view_label: "_PoP"
#     type: string
#     case: {
#       when: {
#         sql: ${is_current_period} = true;;
#         label: "Selected Period"
#       }
#       when: {
#         sql: ${is_previous_period} = true;;
#         label: "Previous Period"
#       }
#       else: "Not in time period"
#     }
#   }
}

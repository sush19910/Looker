view: home_sql_runner{
  derived_table: {
    sql: select

            ad_spend
            ,adtypename
            ,brand
            ,campaign_name
            ,channel
            ,impressions
            ,clicks
            ,units_sold
            ,revenue
            ,supplier_name
            ,transaction_date

      from `sap-rmn-acc-wawa-dev-mg.rmn_accel_dm.rmn_sales_transaction_dly`

      UNION ALL

      SELECT

      ad_spend
      ,ad_type_name as adtypename
      ,brand
      ,campaign_name
      ,channel
      ,impressions
      ,0 as clicks
      ,units_sold
      ,revenue
      ,supplier_name
      ,transaction_date




      from
      `sap-rmn-acc-wawa-dev-mg.rmn_accel_dm.rmn_kiosk_sales_transaction_dly`
      where rec_sts_cd =true;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: ad_spend {
    type: number
    sql: ${TABLE}.ad_spend ;;
  }

  dimension: adtypename {
    type: string
    sql: ${TABLE}.adtypename ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.brand ;;
  }

  dimension: campaign_name {
    type: string
    sql: ${TABLE}.campaign_name ;;
  }

  # dimension: channel {
  #   type: string
  #   sql: ${TABLE}.channel ;;
  # }

  #############
  dimension: channel {
    type: string
    #sql: ${TABLE}.channel ;;
    sql:CASE
          when ${TABLE}.channel ='App' then '  Onsite-App'
          when ${TABLE}.channel='Web' then '  Onsite-Web'
          when ${TABLE}.channel='Kiosk' then '  Kiosk'
          when ${TABLE}.channel is null then '  Offsite'

      END ;;
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
  measure: clicks_sum {
    type: sum
    sql: ${TABLE}.clicks ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

  measure: impressions_sum {
    type: sum
    sql: ${TABLE}.impressions ;;
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

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


  measure: roas_sum {
    type: number
    sql: safe_divide(${revenue_sum},${ad_spend_sum}) ;;
    value_format: "$#,##0.00"
    # html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }
  measure: ctr_sum {
    type: number
    sql: safe_divide(${clicks_sum},${impressions_sum})*100 ;;
    value_format: "#,##0.00%"
  }
  measure: roas_formatted_value {
    type: string
    sql: safe_divide(${revenue_sum},${ad_spend_sum}) ;;
    value_format: "$#,##0.00"
    html: <p style="color: black; font-size:20px; text-align:center; line-height:24px">{{ rendered_value }}</p>;;
  }

  #####################
  dimension: conversion {
    type: number
    sql: ${TABLE}.conversion ;;
  }

  dimension: impressions {
    type: number
    sql: ${TABLE}.impressions ;;
  }

  dimension: clicks {
    type: number
    sql: ${TABLE}.clicks ;;
  }

  dimension: units_sold {
    type: number
    sql: ${TABLE}.units_sold ;;
  }


  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }





  dimension: supplier_name {
    type: string
    sql: ${TABLE}.supplier_name ;;
  }

  dimension: transaction_date {
    type: date
    datatype: date
    sql: ${TABLE}.transaction_date ;;
  }


  set: detail {
    fields: [
      ad_spend,
      adtypename,
      brand,
      campaign_name,
      channel,
      conversion,
      impressions,
      revenue,
      supplier_name,
      transaction_date
    ]
  }
}

view: rmn_eps_store_feed {
  sql_table_name: `sap-rmn-acc-wawa-dev-mg.rmn_accel_dl.rmn_eps_store_feed` ;;

  dimension_group: load_dttm {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.load_dttm ;;
  }
  dimension: rec_sts_cd {
    type: yesno
    sql: ${TABLE}.rec_sts_cd ;;
  }
  dimension: src_sys_cd {
    type: string
    sql: ${TABLE}.src_sys_cd ;;
  }
  # dimension: store_address_1 {
  #   type: string
  #   sql: ${TABLE}.store_address_1 ;;
  # }
  # dimension: store_address_2 {
  #   type: string
  #   sql: ${TABLE}.store_address_2 ;;
  # }
  dimension: store_city {
    type: string
    sql: ${TABLE}.store_city ;;
  }
  # dimension_group: store_closing {
  #   type: time
  #   timeframes: [raw, date, week, month, quarter, year]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.store_closing_date ;;
  # }
  dimension: store_country {
    type: string
    sql: ${TABLE}.store_country ;;
  }
  # dimension: store_hours {
  #   type: string
  #   sql: ${TABLE}.store_hours ;;
  # }
  dimension: store_id {
    type: number
    description: "Primary"
    sql: ${TABLE}.store_id ;;
  }
  dimension: store_lat {
    type: string
    sql: ${TABLE}.store_lat ;;
  }
  dimension: store_lon {
    type: string
    sql: ${TABLE}.store_lon ;;
  }
  dimension: store_name {
    type: string
    sql: ${TABLE}.store_name ;;
  }
  # dimension_group: store_opening {
  #   type: time
  #   timeframes: [raw, date, week, month, quarter, year]
  #   convert_tz: no
  #   datatype: date
  #   sql: ${TABLE}.store_opening_date ;;
  # }
  # dimension: store_phone {
  #   type: string
  #   sql: ${TABLE}.store_phone ;;
  # }
  dimension: store_state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.store_state ;;
  }
  # dimension: store_url {
  #   type: string
  #   sql: ${TABLE}.store_url ;;
  # }
  dimension: store_zip {
    type: string
    sql: ${TABLE}.store_zip ;;
  }
  dimension_group: upd_dttm {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.upd_dttm ;;
  }
  measure: count {
    type: count
    drill_fields: [store_name]
  }
  ################test Abhi
  dimension: store_location {
    type: location
    sql_latitude: ${store_lat} ;;
    sql_longitude: ${store_lon} ;;
  }

  dimension: store_detail {
    type: string
    sql: CONCAT(
          INITCAP(${store_name}), ', ',
          INITCAP(${store_city}), ', ',
          INITCAP(${store_state}), ' ',
          ${store_zip}
          ) ;;
    label: "Store Detail"

  }
  # dimension: full_address_location {
  #   type: string
  #   sql: CONCAT(${TABLE}.store_name, ${TABLE}.store_city, ',', ${TABLE}.store_state, ',', ${TABLE}.store_zip) ;;
  # }
}

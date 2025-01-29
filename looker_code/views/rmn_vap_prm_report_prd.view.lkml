view: rmn_vap_prm_report_prd {
  derived_table: {
    sql: select * from  `sap-rmn-acc-wawa-prd-mg.rmn_accel_dm.rmn_vap_prm_report` ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: location_name {
    type: string
    sql: ${TABLE}.Location_Name ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_id ;;
  }

  dimension: store_state {
    type: string
    map_layer_name: us_states
    sql: ${TABLE}.store_state ;;
  }

  dimension: store_detail {
    type: string
    sql: ${TABLE}.store_detail ;;
  }

  dimension: promotion_name {
    type: string
    sql: ${TABLE}.Promotion_Name ;;
  }

  dimension: brand {
    type: string
    sql: ${TABLE}.Brand ;;
  }

  dimension: advertiser {
    type: string
    sql: ${TABLE}.Advertiser ;;
  }

  dimension: date {
    type: date
    datatype: date
    sql: ${TABLE}.DATE ;;
  }

  dimension: hour {
    type: string
    sql: ${TABLE}.HOUR ;;
  }

  dimension: passive_customers {
    type: number
    sql: ${TABLE}.Passive_Customers ;;
  }

  dimension: active_customers {
    type: number
    sql: ${TABLE}.Active_Customers ;;
  }

  dimension: passive_views {
    type: number
    sql: ${TABLE}.Passive_Views ;;
  }

  dimension: active_views {
    type: number
    sql: ${TABLE}.Active_Views ;;
  }

  dimension: walk_up_views {
    type: number
    sql: ${TABLE}.Walk_up_Views ;;
  }

  dimension: coupons_printed {
    type: number
    sql: ${TABLE}.Coupons_Printed ;;
  }

  dimension: mute_press_count {
    type: number
    sql: ${TABLE}.Mute_Press_Count ;;
  }

  dimension: unmute_press_count {
    type: number
    sql: ${TABLE}.Unmute_Press_Count ;;
  }

  dimension_group: load_dttm {
    type: time
    sql: ${TABLE}.load_dttm ;;
  }

  dimension_group: upd_dttm {
    type: time
    sql: ${TABLE}.upd_dttm ;;
  }

  dimension: rec_sts_cd {
    type: yesno
    sql: ${TABLE}.rec_sts_cd ;;
  }

  set: detail {
    fields: [
      location_name,
      store_id,
      store_state,
      store_detail,
      promotion_name,
      brand,
      advertiser,
      date,
      hour,
      passive_customers,
      active_customers,
      passive_views,
      active_views,
      walk_up_views,
      coupons_printed,
      mute_press_count,
      unmute_press_count,
      load_dttm_time,
      upd_dttm_time,
      rec_sts_cd
    ]
  }
}

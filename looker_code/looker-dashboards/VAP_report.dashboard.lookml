---
- dashboard: _vap_report
  title: " VAP Report"
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: ImCNH4Blz54VHGaCMiEpxB
  elements:
  - title: " Promotional Data Summary"
    name: " Promotional Data Summary"
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    type: looker_grid
    fields: [rmn_vap_prm_report.promotion_name, sum_of_active_customers, sum_of_passive_customers,
      sum_of_active_views, sum_of_passive_views]
    sorts: [sum_of_passive_customers desc]
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_active_customers}+${sum_of_passive_customers}"
      label: Customer Visits
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: customer_visits
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_active_views}+${sum_of_passive_views}"
      label: Video Views
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: video_views
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.active_customers
      expression: ''
      label: Sum of Active Customers
      measure: sum_of_active_customers
      type: sum
    - category: measure
      expression: ''
      label: Sum of Passive Customers
      based_on: rmn_vap_prm_report.passive_customers
      _kind_hint: measure
      measure: sum_of_passive_customers
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.active_views
      expression: ''
      label: Sum of Active Views
      measure: sum_of_active_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.passive_views
      expression: ''
      label: Sum of Passive Views
      measure: sum_of_passive_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.coupons_printed
      expression: ''
      label: Sum of Coupons Printed
      measure: sum_of_coupons_printed
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.walk_up_views
      expression: ''
      label: Sum of Walk Up Views
      measure: sum_of_walk_up_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.mute_press_count
      expression: ''
      label: Sum of Mute Press Count
      measure: sum_of_mute_press_count
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.unmute_press_count
      expression: ''
      label: Sum of Unmute Press Count
      measure: sum_of_unmute_press_count
      type: sum
    - category: table_calculation
      expression: "${sum_of_active_customers}/${total_customers}"
      label: Active as % of Total Customers
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: active_as_of_total_customers
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_coupons_printed}/${sum_of_active_customers}"
      label: Printed as % of Active Customers
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: printed_as_of_active_customers
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_coupons_printed}/${total_customers}"
      label: Printed as % of Total Customers
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: printed_as_of_total_customers
      _type_hint: number
      is_disabled: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      sum_of_active_customers: Active Customers
      sum_of_active_views: Active Views
      sum_of_coupons_printed: Coupons Printed
      sum_of_walk_up_views: Walk-up Views
      sum_of_mute_press_count: Mute Pressed
      sum_of_unmute_press_count: Unmute Pressed
      sum_of_passive_customers: Passive Customers
      sum_of_passive_views: Passive Views
    series_text_format:
      customer_visits:
        align: right
      video_views:
        align: right
      rmn_vap_prm_report.promotion_name:
        align: left
    header_font_color: "#000000"
    header_background_color: "#9ADBE8"
    truncate_column_names: false
    defaults_version: 1
    hidden_fields: [sum_of_active_customers, sum_of_passive_customers, sum_of_active_views,
      sum_of_passive_views]
    hidden_pivots: {}
    column_order: ["$$$_row_numbers_$$$", rmn_vap_prm_report.promotion_name, video_views,
      customer_visits]
    listen:
      Promotion: rmn_vap_prm_report.promotion_name
      Location: rmn_vap_prm_report.store_detail
      Advertiser: rmn_vap_prm_report.advertiser
      Brand: rmn_vap_prm_report.brand
      Reporting Period: rmn_vap_prm_report.date
    row: 9
    col: 0
    width: 24
    height: 6
  - title: New Tile
    name: New Tile
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    type: single_value
    fields: [sum_of_active_views, sum_of_passive_views]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.active_views
      expression: ''
      label: Sum of Active Views
      measure: sum_of_active_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.passive_views
      expression: ''
      label: Sum of Passive Views
      measure: sum_of_passive_views
      type: sum
    - category: table_calculation
      expression: "${sum_of_active_views}+${sum_of_passive_views}"
      label: Video Views
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: video_views
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Video Views
    value_format: "#,##0"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_fields: [sum_of_active_views, sum_of_passive_views]
    listen:
      Promotion: rmn_vap_prm_report.promotion_name
      Location: rmn_vap_prm_report.store_detail
      Advertiser: rmn_vap_prm_report.advertiser
      Brand: rmn_vap_prm_report.brand
      Reporting Period: rmn_vap_prm_report.date
    row: 0
    col: 0
    width: 7
    height: 3
  - title: Untitled
    name: Untitled
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    type: single_value
    fields: [sum_of_passive_customers, sum_of_active_customers]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_active_customers}+${sum_of_passive_customers}"
      label: Customer Visits
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: customer_visits
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.active_customers
      expression: ''
      label: Sum of Active Customers
      measure: sum_of_active_customers
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.passive_customers
      expression: ''
      label: Sum of Passive Customers
      measure: sum_of_passive_customers
      type: sum
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Customer Visits
    value_format: "#,##0"
    hidden_fields: [sum_of_passive_customers, sum_of_active_customers]
    defaults_version: 1
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    listen:
      Promotion: rmn_vap_prm_report.promotion_name
      Location: rmn_vap_prm_report.store_detail
      Advertiser: rmn_vap_prm_report.advertiser
      Brand: rmn_vap_prm_report.brand
      Reporting Period: rmn_vap_prm_report.date
    row: 0
    col: 7
    width: 7
    height: 3
  - title: Video Views by Location
    name: Video Views by Location
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    type: looker_grid
    fields: [sum_of_active_views, sum_of_passive_views, sum_of_active_customers, sum_of_passive_customers,
      store_count, rmn_vap_prm_report.store_state]
    sorts: [sum_of_active_views desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_active_views}+${sum_of_passive_views}"
      label: Video Views
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: video_views
      _type_hint: number
      is_disabled: false
    - category: table_calculation
      expression: "${sum_of_active_customers}+${sum_of_passive_customers}"
      label: Customer Visits
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: customer_visits
      _type_hint: number
      is_disabled: false
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.active_customers
      expression: ''
      label: Sum of Active Customers
      measure: sum_of_active_customers
      type: sum
    - category: measure
      expression: ''
      label: Sum of Passive Customers
      based_on: rmn_vap_prm_report.passive_customers
      _kind_hint: measure
      measure: sum_of_passive_customers
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.active_views
      expression: ''
      label: Sum of Active Views
      measure: sum_of_active_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.passive_views
      expression: ''
      label: Sum of Passive Views
      measure: sum_of_passive_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.coupons_printed
      expression: ''
      label: Sum of Coupons Printed
      measure: sum_of_coupons_printed
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.walk_up_views
      expression: ''
      label: Sum of Walk Up Views
      measure: sum_of_walk_up_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.mute_press_count
      expression: ''
      label: Sum of Mute Press Count
      measure: sum_of_mute_press_count
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.unmute_press_count
      expression: ''
      label: Sum of Unmute Press Count
      measure: sum_of_unmute_press_count
      type: sum
    - category: measure
      expression: ''
      label: Store Count
      based_on: rmn_vap_prm_report.store_id
      _kind_hint: measure
      measure: store_count
      type: count_distinct
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      sum_of_active_customers: Active Customers
      sum_of_active_views: Active Views
      sum_of_coupons_printed: Coupons Printed
      sum_of_walk_up_views: Walk-up Views
      sum_of_mute_press_count: Mute Pressed
      sum_of_unmute_press_count: Unmute Pressed
      sum_of_passive_customers: Passive Customers
      sum_of_passive_views: Passive Views
      rmn_eps_store_feed.store_state: State
    series_cell_visualizations:
      store_count:
        is_active: true
        value_display: true
        palette:
          palette_id: 708dc7e8-ed15-e1e1-e2ed-72fe56371eb3
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#CE0E2D"
          - "#615DA0"
          - "#B52451"
          - "#4285F4"
          - "#4F6AB3"
    series_text_format:
      video_views:
        align: right
      customer_visits:
        align: right
    header_background_color: "#9ADBE8"
    truncate_column_names: false
    defaults_version: 1
    hidden_fields: [sum_of_active_views, sum_of_passive_views, sum_of_active_customers,
      sum_of_passive_customers]
    hidden_pivots: {}
    title_hidden: true
    listen:
      Promotion: rmn_vap_prm_report.promotion_name
      Location: rmn_vap_prm_report.store_detail
      Advertiser: rmn_vap_prm_report.advertiser
      Brand: rmn_vap_prm_report.brand
      Reporting Period: rmn_vap_prm_report.date
    row: 3
    col: 11
    width: 13
    height: 6
  - title: Video Views by Location
    name: Video Views by Location (2)
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    type: looker_geo_choropleth
    fields: [sum_of_active_views, sum_of_passive_views, sum_of_active_customers, sum_of_passive_customers,
      rmn_vap_prm_report.store_state]
    sorts: [video_views desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_active_views}+${sum_of_passive_views}"
      label: Video Views
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: video_views
      _type_hint: number
      is_disabled: false
    - category: table_calculation
      expression: "${sum_of_active_customers}+${sum_of_passive_customers}"
      label: Customer Visits
      value_format:
      value_format_name:
      _kind_hint: measure
      table_calculation: customer_visits
      _type_hint: number
      is_disabled: false
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.active_customers
      expression: ''
      label: Sum of Active Customers
      measure: sum_of_active_customers
      type: sum
    - category: measure
      expression: ''
      label: Sum of Passive Customers
      based_on: rmn_vap_prm_report.passive_customers
      _kind_hint: measure
      measure: sum_of_passive_customers
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.active_views
      expression: ''
      label: Sum of Active Views
      measure: sum_of_active_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.passive_views
      expression: ''
      label: Sum of Passive Views
      measure: sum_of_passive_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.coupons_printed
      expression: ''
      label: Sum of Coupons Printed
      measure: sum_of_coupons_printed
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.walk_up_views
      expression: ''
      label: Sum of Walk Up Views
      measure: sum_of_walk_up_views
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.mute_press_count
      expression: ''
      label: Sum of Mute Press Count
      measure: sum_of_mute_press_count
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_vap_prm_report.unmute_press_count
      expression: ''
      label: Sum of Unmute Press Count
      measure: sum_of_unmute_press_count
      type: sum
    map: auto
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    colors: ["#4285F4"]
    empty_color: "#e0ebf2"
    hidden_fields: [sum_of_active_views, sum_of_passive_views, sum_of_active_customers,
      sum_of_passive_customers, customer_visits, video_views]
    hidden_points_if_no: []
    series_labels:
      sum_of_active_customers: Active Customers
      sum_of_active_views: Active Views
      sum_of_coupons_printed: Coupons Printed
      sum_of_walk_up_views: Walk-up Views
      sum_of_mute_press_count: Mute Pressed
      sum_of_unmute_press_count: Unmute Pressed
      sum_of_passive_customers: Passive Customers
      sum_of_passive_views: Passive Views
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    truncate_column_names: false
    defaults_version: 1
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Promotion: rmn_vap_prm_report.promotion_name
      Location: rmn_vap_prm_report.store_detail
      Advertiser: rmn_vap_prm_report.advertiser
      Brand: rmn_vap_prm_report.brand
      Reporting Period: rmn_vap_prm_report.date
    row: 3
    col: 0
    width: 11
    height: 6
  filters:
  - name: Reporting Period
    title: Reporting Period
    type: field_filter
    default_value: 2024/12/01 to 2025/01/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    listens_to_filters: []
    field: rmn_vap_prm_report.date
  - name: Promotion
    title: Promotion
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    listens_to_filters: [Store Detail, Brand, Location, Advertiser, Date, Reporting
        Period]
    field: rmn_vap_prm_report.promotion_name
  - name: Location
    title: Location
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    listens_to_filters: [Brand, Promotion, Advertiser, Date, Reporting Period]
    field: rmn_vap_prm_report.store_detail
  - name: Advertiser
    title: Advertiser
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    listens_to_filters: [Brand, Location, Promotion, Date, Reporting Period]
    field: rmn_vap_prm_report.advertiser
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: sap_rmn_acc_wawa_vap
    explore: rmn_vap_prm_report
    listens_to_filters: [Location, Promotion, Advertiser, Date, Reporting Period]
    field: rmn_vap_prm_report.brand

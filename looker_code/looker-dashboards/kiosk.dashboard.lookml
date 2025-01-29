---
- dashboard: kiosk_report
  title: Kiosk Report
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: HPjtHa7Yca4EFTFj3i7LUQ
  elements:
  - title: CONVERSIONS
    name: CONVERSIONS
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [sum_of_conversion, rmn_kiosk_sales_transaction_v_prd_dly.conversion_sum]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Kiosk Sales Transaction Dly Ad Spend
        Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_rmn_kiosk_sales_transaction_v_prd_dly_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Kiosk Sales Transaction Dly Revenue
        Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      table_calculation: percent_change_from_previous_rmn_kiosk_sales_transaction_v_prd_dly_revenue_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.conversion
      expression: ''
      label: Sum of Conversion
      measure: sum_of_conversion
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.conversion_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.conversion_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Kiosk Sales Transaction Dly Conversion
        Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.conversion_sum
      table_calculation: percent_change_from_previous_rmn_kiosk_sales_transaction_v_prd_dly_conversion_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
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
    hidden_fields: [sum_of_conversion]
    note_state: collapsed
    note_display: hover
    note_text: The number of desired actions (e.g., purchases, sign-ups) completed
      by users after interacting with GMN Ads. This indicates the effectiveness of
      your campaign in driving specific outcomes.
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 0
    col: 18
    width: 6
    height: 3
  - title: REMAINING  WALLET
    name: REMAINING  WALLET
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes, sum_of_budget, rmn_kiosk_sales_transaction_v_prd_dly.budget_sum]
    fill_fields: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes]
    filters:
      rmn_kiosk_sales_transaction_v_prd_dly.store_id: ''
    sorts: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Kiosk Sales Transaction Dly Ad Spend
        Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_rmn_kiosk_sales_transaction_v_prd_dly_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Budget Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      table_calculation: percent_change_from_previous_kiosk_data_budget_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [sum_of_budget]
    note_state: collapsed
    note_display: hover
    note_text: The total amount allocated for GMN Ad campaigns. This helps manage
      and control your advertising expenditure.
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 3
    col: 6
    width: 6
    height: 3
  - title: CPT
    name: CPT
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes, sum_of_ad_spend, rmn_kiosk_sales_transaction_v_prd_dly.transactions_sum,
      rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum]
    fill_fields: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes]
    sorts: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpt Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpt_sum
      value_format:
      value_format_name: percent_0
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: table_calculation
      expression: "${sum_of_ad_spend}/${rmn_kiosk_sales_transaction_v_prd_dly.transactions_sum}"
      label: CPT
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpt
      _type_hint: number
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [sum_of_ad_spend, rmn_kiosk_sales_transaction_v_prd_dly.transactions_sum,
      cpt]
    note_state: collapsed
    note_display: hover
    note_text: The average cost incurred for each completed transaction. Calculated
      as (AD Spend ÷ Transactions). This helps measure the cost efficiency of GMN
      Ad campaigns.
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 3
    col: 12
    width: 6
    height: 3
  - title: CPM
    name: CPM
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes, rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum,
      rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum, rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum]
    fill_fields: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes]
    sorts: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${sum_of_ad_spend}/${sum_of_impressions})*1000"
      label: CPM
      value_format:
      value_format_name: decimal_2
      _kind_hint: dimension
      table_calculation: cpm
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: table_calculation
      expression: "(${rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum}/${rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum})*1000"
      label: CPM
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpm_1
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum_2
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum, rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum,
      cpm_1]
    note_state: collapsed
    note_display: hover
    note_text: The cost per thousand impressions of GMN Ads. Calculated as (AD Spend
      ÷ Impressions) * 1000. This helps measure the cost efficiency of your ad reach.
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 3
    col: 18
    width: 6
    height: 3
  - title: UNITS SOLD
    name: UNITS SOLD
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes, sum_of_units_sold,
      rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum]
    fill_fields: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes]
    filters:
      rmn_kiosk_sales_transaction_v_prd_dly.store_id: ''
    sorts: [rmn_kiosk_sales_transaction_v_prd_dly.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Kiosk Sales Transaction Dly Ad Spend
        Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_rmn_kiosk_sales_transaction_v_prd_dly_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Budget Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      table_calculation: percent_change_from_previous_kiosk_data_budget_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpt Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpt_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Units Sold Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      table_calculation: percent_change_from_previous_kiosk_data_units_sold_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [sum_of_units_sold]
    note_state: collapsed
    note_display: hover
    note_text: 'The total number of individual products sold as a result of GMN Ad
      campaigns. This helps measure the direct sales impact of your advertising.

      '
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 6
    col: 0
    width: 6
    height: 3
  - title: Campaign Spend, Revenue and ROAS
    name: Campaign Spend, Revenue and ROAS
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: looker_column
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.transaction_date, sum_of_ad_spendk,
      sum_of_revenuek]
    fill_fields: [rmn_kiosk_sales_transaction_v_prd_dly.transaction_date]
    filters:
      rmn_kiosk_sales_transaction_v_prd_dly.store_id: ''
      rmn_kiosk_sales_transaction_v_prd_dly.timeframes: Selected Period
    sorts: [rmn_kiosk_sales_transaction_v_prd_dly.transaction_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Kiosk Sales Transaction Dly Ad Spend
        Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_rmn_kiosk_sales_transaction_v_prd_dly_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Budget Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      table_calculation: percent_change_from_previous_kiosk_data_budget_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpt Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpt_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Units Sold Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      table_calculation: percent_change_from_previous_kiosk_data_units_sold_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Ad Spendk
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendk
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Revenuek
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuek
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_revenuek}/${sum_of_ad_spendk}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas_1
      _type_hint: number
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: SPEND  /  REVENUE, orientation: left, series: [{axisId: sum_of_ad_spendk,
            id: sum_of_ad_spendk, name: SPEND}, {axisId: sum_of_revenuek, id: sum_of_revenuek,
            name: REVENUE}], showLabels: true, showValues: true, valueFormat: "$0.00,\\\
          K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 16, type: linear},
      {label: ROAS, orientation: right, series: [{axisId: roas_1, id: roas_1, name: ROAS}],
        showLabels: true, showValues: true, maxValue: 2, minValue: 0, valueFormat: "$0",
        unpinAxis: true, tickDensity: custom, tickDensityCustom: 10, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      roas_1: line
    series_colors:
      roas_1: "#EA4335"
      sum_of_ad_spendk: "#00e6c3"
      sum_of_revenuek: "#4285F4"
    series_labels:
      sum_of_ad_spendk: SPEND
      sum_of_revenuek: REVENUE
    series_point_styles:
      roas_1: auto
    advanced_vis_config: |-
      {

        tooltip: {
          backgroundColor: '#FAF9F6', // White background only
          style: {
            color: '#000000', // value colrs only
          },
          format: '<span style="font-size: 1em; font-weight: medium;">DATE: {key}</span><br/>{#each points}<span style="color:{color}; font-weight: medium;">\u25CF {series.name}: </span><span style="font-weight: medium;">${y:,.2f}</span><br/>{/each}',

          shared: true
        },
        yAxis: [ // Add yAxis configuration
          {}, // Configuration for the left Y-axis (optional)
          {
            title: {
              text: 'ROAS', // Set the title for the right Y-axis
              style: {
                color: '#000000' // Set the color to black

              }
            }
          }
        ]
      }
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: []
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 9
    col: 0
    width: 24
    height: 7
  - title: Revenue by Brand
    name: Revenue by Brand
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: looker_pie
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.brand, sum_of_ad_spend_2, sum_of_impressions_2,
      sum_of_revenue, sum_of_units_sold_2]
    filters:
      rmn_kiosk_sales_transaction_v_prd_dly.store_id: ''
    sorts: [sum_of_revenue desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Kiosk Sales Transaction Dly Ad Spend
        Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_rmn_kiosk_sales_transaction_v_prd_dly_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Budget Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      table_calculation: percent_change_from_previous_kiosk_data_budget_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpt Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpt_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Units Sold Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      table_calculation: percent_change_from_previous_kiosk_data_units_sold_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Ad Spendk
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendk
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Revenuek
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuek
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_revenuek}/${sum_of_ad_spendk}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas_1
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend_2
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    value_labels: legend
    label_type: labPer
    inner_radius: 55
    series_colors:
      roas_1: "#EA4335"
      sum_of_ad_spendk: "#00e6c3"
      sum_of_revenuek: "#4285F4"
    series_labels:
      sum_of_ad_spendk: SPEND
      sum_of_revenuek: REVENUE
    advanced_vis_config: |-
      {
        tooltip: {
          backgroundColor: '#ffffff', // White background
          style: {
            color: '#000000', // Black text
            fontSize: '1em' // Font size 1em
          },
          format: '<span style="font-size: 1em">Brand: {key}</span><br/><span style="color:{point.color}; font-weight: medium;">\u25CF Revenue: </span>${point.y:,.2f}',
          shared: false
        }
      }
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: SPEND  /  REVENUE, orientation: left, series: [{axisId: sum_of_ad_spendk,
            id: sum_of_ad_spendk, name: Sum of Ad Spendk}, {axisId: sum_of_revenuek,
            id: sum_of_revenuek, name: Sum of Revenuek}], showLabels: true, showValues: true,
        valueFormat: "$0.00,\\K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 16,
        type: linear}, {label: ROAS, orientation: right, series: [{axisId: roas_1,
            id: roas_1, name: ROAS}], showLabels: true, showValues: true, maxValue: 2,
        minValue: 0, valueFormat: "$0", unpinAxis: true, tickDensity: custom, tickDensityCustom: 13,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [sum_of_ad_spend_2, sum_of_impressions_2, sum_of_units_sold_2]
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 16
    col: 0
    width: 12
    height: 6
  - title: Units Sold by Product
    name: Units Sold by Product
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: looker_pie
    fields: [sum_of_ad_spend_2, sum_of_impressions_2, sum_of_revenue, sum_of_units_sold_2,
      rmn_kiosk_sales_transaction_v_prd_dly.product_name]
    filters:
      rmn_kiosk_sales_transaction_v_prd_dly.store_id: ''
    sorts: [sum_of_ad_spend_2 desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Kiosk Sales Transaction Dly Ad Spend
        Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_rmn_kiosk_sales_transaction_v_prd_dly_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Budget Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.budget_sum
      table_calculation: percent_change_from_previous_kiosk_data_budget_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpt Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpt_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpt_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Units Sold Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.units_sold_sum
      table_calculation: percent_change_from_previous_kiosk_data_units_sold_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Ad Spendk
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendk
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Revenuek
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuek
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_revenuek}/${sum_of_ad_spendk}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas_1
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend_2
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    value_labels: legend
    label_type: labPer
    inner_radius: 55
    series_colors:
      roas_1: "#EA4335"
      sum_of_ad_spendk: "#00e6c3"
      sum_of_revenuek: "#4285F4"
    series_labels:
      sum_of_ad_spendk: SPEND
      sum_of_revenuek: REVENUE
    advanced_vis_config: |-
      {
        tooltip: {
          backgroundColor: '#ffffff', // White background
          style: {
            color: '#000000', // Black text
            fontSize: '1em' // Font size 1em
          },
          format: '<span style="font-size: 1em">Product: {key}</span><br/><span style="color:{point.color}; font-weight: medium;">\u25CF Revenue: </span>${point.y:,.2f}',
          shared: false
        }
      }
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: SPEND  /  REVENUE, orientation: left, series: [{axisId: sum_of_ad_spendk,
            id: sum_of_ad_spendk, name: Sum of Ad Spendk}, {axisId: sum_of_revenuek,
            id: sum_of_revenuek, name: Sum of Revenuek}], showLabels: true, showValues: true,
        valueFormat: "$0.00,\\K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 16,
        type: linear}, {label: ROAS, orientation: right, series: [{axisId: roas_1,
            id: roas_1, name: ROAS}], showLabels: true, showValues: true, maxValue: 2,
        minValue: 0, valueFormat: "$0", unpinAxis: true, tickDensity: custom, tickDensityCustom: 13,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [sum_of_impressions_2, sum_of_units_sold_2, sum_of_ad_spend_2]
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 16
    col: 12
    width: 12
    height: 6
  - title: Units Sold by Product
    name: Units Sold by Product (2)
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: looker_grid
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.product_name, sum_of_ad_spendp,
      sum_of_impressions_2, sum_of_revenuep, sum_of_units_sold_2, rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table]
    filters:
      rmn_kiosk_sales_transaction_v_prd_dly.store_id: ''
    sorts: [sum_of_ad_spendp desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - category: measure
      expression: ''
      label: Sum of Ad Spendk
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendk
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Revenuek
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuek
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad Spendp
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendp
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenuep
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuep
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenuep}/${sum_of_ad_spendp}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
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
      sum_of_ad_spendk: SPEND
      sum_of_revenuek: REVENUE
      sum_of_ad_spendp: Spend($)
      sum_of_impressions_2: Impressions
      sum_of_revenuep: Revenue($)
      sum_of_units_sold_2: Units Sold
      rmn_kiosk_sales_transaction_v_prd_dly.product_name: Product
      roas: ROAS($)
      rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table: ROAS($)
    series_cell_visualizations:
      sum_of_ad_spendp:
        is_active: false
        value_display: true
    series_text_format:
      rmn_kiosk_sales_transaction_v_prd_dly.product_name:
        align: left
      sum_of_ad_spendp:
        align: right
      sum_of_impressions_2:
        align: right
      sum_of_revenuep:
        align: right
      roas:
        align: right
    header_font_color: "#000000"
    header_background_color: "#9ADBE8"
    series_value_format:
      sum_of_ad_spendp:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
      sum_of_revenuep:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: SPEND  /  REVENUE, orientation: left, series: [{axisId: sum_of_ad_spendk,
            id: sum_of_ad_spendk, name: Sum of Ad Spendk}, {axisId: sum_of_revenuek,
            id: sum_of_revenuek, name: Sum of Revenuek}], showLabels: true, showValues: true,
        valueFormat: "$0.00,\\K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 16,
        type: linear}, {label: ROAS, orientation: right, series: [{axisId: roas_1,
            id: roas_1, name: ROAS}], showLabels: true, showValues: true, maxValue: 2,
        minValue: 0, valueFormat: "$0", unpinAxis: true, tickDensity: custom, tickDensityCustom: 13,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      roas_1: "#EA4335"
      sum_of_ad_spendk: "#00e6c3"
      sum_of_revenuek: "#4285F4"
    series_point_styles:
      roas_1: auto
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [sum_of_ad_spend_2, roas]
    value_labels: legend
    label_type: labPer
    title_hidden: true
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 22
    col: 12
    width: 12
    height: 5
  - title: Revenue by Brand
    name: Revenue by Brand (2)
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: looker_grid
    fields: [sum_of_ad_spendp, sum_of_impressions_2, sum_of_revenuep, sum_of_units_sold_2,
      rmn_kiosk_sales_transaction_v_prd_dly.brand, rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table]
    filters:
      rmn_kiosk_sales_transaction_v_prd_dly.store_id: ''
    sorts: [sum_of_ad_spendp desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - category: measure
      expression: ''
      label: Sum of Ad Spendk
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendk
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Revenuek
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuek
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad Spendp
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendp
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenuep
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuep
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenuep}/${sum_of_ad_spendp}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_revenuep}/${sum_of_ad_spendp}"
      label: r
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: r
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
      sum_of_ad_spendk: SPEND
      sum_of_revenuek: REVENUE
      sum_of_ad_spendp: Spend($)
      sum_of_impressions_2: Impressions
      sum_of_revenuep: Revenue($)
      sum_of_units_sold_2: Units Sold
      rmn_kiosk_sales_transaction_v_prd_dly.product_name: Product Name
      roas: ROAS($)
      rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table: ROAS($)
    series_cell_visualizations:
      sum_of_ad_spendp:
        is_active: false
        value_display: true
    series_text_format:
      sum_of_ad_spendp:
        align: right
      sum_of_impressions_2:
        align: right
      sum_of_revenuep:
        align: right
      roas:
        align: right
    header_background_color: "#9ADBE8"
    series_value_format:
      sum_of_ad_spendp:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
      sum_of_revenuep:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: SPEND  /  REVENUE, orientation: left, series: [{axisId: sum_of_ad_spendk,
            id: sum_of_ad_spendk, name: Sum of Ad Spendk}, {axisId: sum_of_revenuek,
            id: sum_of_revenuek, name: Sum of Revenuek}], showLabels: true, showValues: true,
        valueFormat: "$0.00,\\K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 16,
        type: linear}, {label: ROAS, orientation: right, series: [{axisId: roas_1,
            id: roas_1, name: ROAS}], showLabels: true, showValues: true, maxValue: 2,
        minValue: 0, valueFormat: "$0", unpinAxis: true, tickDensity: custom, tickDensityCustom: 13,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      roas_1: "#EA4335"
      sum_of_ad_spendk: "#00e6c3"
      sum_of_revenuek: "#4285F4"
    series_point_styles:
      roas_1: auto
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [sum_of_ad_spend_2, r]
    value_labels: legend
    label_type: labPer
    title_hidden: true
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 22
    col: 0
    width: 12
    height: 5
  - title: Performance by Placement
    name: Performance by Placement
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: looker_grid
    fields: [sum_of_ad_spendp, sum_of_impressions_2, sum_of_revenuep, sum_of_units_sold_2,
      rmn_kiosk_sales_transaction_v_prd_dly.placement, sum_of_unique_impressions,
      sum_of_units_sold_3, sum_of_transactions, rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table]
    filters:
      rmn_kiosk_sales_transaction_v_prd_dly.store_id: ''
    sorts: [sum_of_ad_spendp desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - category: measure
      expression: ''
      label: Sum of Ad Spendk
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendk
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Revenuek
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuek
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad Spendp
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendp
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenuep
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuep
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenuep}/${sum_of_ad_spendp}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_3
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.transactions
      expression: ''
      label: Sum of Transactions
      measure: sum_of_transactions
      type: sum
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
      sum_of_ad_spendk: SPEND
      sum_of_revenuek: REVENUE
      sum_of_ad_spendp: Spend($)
      sum_of_impressions_2: Impressions
      sum_of_revenuep: Revenue($)
      sum_of_units_sold_2: Units Sold
      rmn_kiosk_sales_transaction_v_prd_dly.product_name: Product Name
      sum_of_unique_impressions: Unique Impressions
      sum_of_transactions: Transactions
      rmn_kiosk_sales_transaction_v_prd_dly.placement: Placement
      roas: ROAS($)
      sum_of_units_sold_3: Units Sold
      rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table: ROAS($)
    series_cell_visualizations:
      sum_of_ad_spendp:
        is_active: false
        value_display: true
    series_text_format:
      sum_of_ad_spendp:
        align: right
      sum_of_impressions_2:
        align: right
      sum_of_revenuep:
        align: right
      roas:
        align: right
      sum_of_transactions:
        align: right
      sum_of_unique_impressions:
        align: right
      rmn_kiosk_sales_transaction_v_prd_dly.placement:
        align: left
    header_background_color: "#9ADBE8"
    series_value_format:
      sum_of_ad_spendp:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
      sum_of_revenuep:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: SPEND  /  REVENUE, orientation: left, series: [{axisId: sum_of_ad_spendk,
            id: sum_of_ad_spendk, name: Sum of Ad Spendk}, {axisId: sum_of_revenuek,
            id: sum_of_revenuek, name: Sum of Revenuek}], showLabels: true, showValues: true,
        valueFormat: "$0.00,\\K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 16,
        type: linear}, {label: ROAS, orientation: right, series: [{axisId: roas_1,
            id: roas_1, name: ROAS}], showLabels: true, showValues: true, maxValue: 2,
        minValue: 0, valueFormat: "$0", unpinAxis: true, tickDensity: custom, tickDensityCustom: 13,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      roas_1: "#EA4335"
      sum_of_ad_spendk: "#00e6c3"
      sum_of_revenuek: "#4285F4"
    series_point_styles:
      roas_1: auto
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [sum_of_ad_spend_2, roas]
    value_labels: legend
    label_type: labPer
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 33
    col: 0
    width: 24
    height: 4
  - title: Map Table
    name: Map Table
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: looker_grid
    fields: [rmn_eps_store_feed_prd.store_state, count_of_store_id, sum_of_revenuem,
      sum_of_ad_spendm, sum_of_impressions, sum_of_units_sold, rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table]
    sorts: [rmn_eps_store_feed_prd.store_state]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenuem}/${sum_of_ad_spendm}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue_2
      type: sum
    - category: dimension
      description: ''
      label: Test1
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: test1
      args:
      - rmn_eps_store_feed_prd.store_state
      - - label: Test
          filter: AL,DC
          __FILE: sap-rmn-acc-wawa-prd/dashboards/kiosk.dashboard.lookml
          __LINE_NUM: 2172
      -
      _kind_hint: dimension
      _type_hint: string
    - category: measure
      expression: ''
      label: Sum of RevenueM
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: sum_of_revenuem
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad SpendM
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spendm
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.store_id
      expression: ''
      label: Count of Store ID
      measure: count_of_store_id
      type: count_distinct
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
    column_order: ["$$$_row_numbers_$$$", rmn_eps_store_feed_prd.store_state, count_of_store_id,
      sum_of_ad_spendm, sum_of_impressions, sum_of_revenuem, sum_of_units_sold, rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rmn_eps_store_feed_prd.store_state: State
      sum_of_revenuem: Revenue($)
      sum_of_ad_spendm: Spend($)
      sum_of_impressions: Impressions
      sum_of_units_sold: Units Sold
      roas: ROAS($)
      rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table: ROAS($)
      count_of_store_id: Store Count
    series_cell_visualizations:
      sum_of_revenuem:
        is_active: false
      count_of_store_id:
        is_active: true
        palette:
          palette_id: 880526b3-37c6-e3af-a97c-b62dd340069b
          collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
          custom_colors:
          - "#CE0E2D"
          - "#4285F4"
    series_text_format:
      rmn_eps_store_feed_prd.store_state:
        align: left
    header_background_color: "#9ADBE8"
    series_value_format:
      sum_of_revenuem:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
      sum_of_ad_spendm:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
    map: auto
    map_projection: ''
    quantize_colors: false
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: [roas]
    title_hidden: true
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 27
    col: 12
    width: 12
    height: 6
  - title: Revenue by Market
    name: Revenue by Market
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: looker_geo_choropleth
    fields: [rmn_eps_store_feed_prd.store_state, revenue, ad_spend, sum_of_impressions,
      sum_of_units_sold, rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table]
    filters:
      rmn_eps_store_feed_prd.store_name: ''
    sorts: [revenue desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue_2
      type: sum
    - category: dimension
      description: ''
      label: Test1
      value_format:
      value_format_name:
      calculation_type: group_by
      dimension: test1
      args:
      - rmn_eps_store_feed_prd.store_state
      - - label: Test
          filter: AL,DC
          __FILE: sap-rmn-acc-wawa-prd/dashboards/kiosk.dashboard.lookml
          __LINE_NUM: 2354
      -
      _kind_hint: dimension
      _type_hint: string
    - category: measure
      expression: ''
      label: Revenue
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue
      _kind_hint: measure
      measure: revenue
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: " Ad Spend"
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      _kind_hint: measure
      measure: ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - category: table_calculation
      expression: "${revenue}/${ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    map: auto
    map_projection: ''
    show_view_names: false
    quantize_colors: false
    inner_border_width: 1
    colors: ["#4285F4"]
    empty_color: "#e0ebf2"
    hidden_pivots: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    hidden_fields: [sum_of_ad_spendm, sum_of_impressions, sum_of_units_sold, ad_spend,
      revenue, rmn_kiosk_sales_transaction_v_prd_dly.roas_sum_table, roas]
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 27
    col: 0
    width: 12
    height: 6
  - title: AD SPEND
    name: AD SPEND
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum, rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum,
      rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum]
    filters:
      rmn_eps_store_feed_prd.store_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${sum_of_ad_spend}/${sum_of_impressions})*1000"
      label: CPM
      value_format:
      value_format_name: decimal_2
      _kind_hint: dimension
      table_calculation: cpm
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: table_calculation
      expression: "(${rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum}/${rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum})*1000"
      label: CPM
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpm_1
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum_2
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Ad Spend Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_kiosk_data_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum, cpm_1,
      rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum]
    note_state: collapsed
    note_display: above
    note_text: The total amount spent on GMN Ad campaigns for both auction based and
      lockout campaigns. This helps track your advertising investment.
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 0
    col: 6
    width: 6
    height: 3
  - title: IMPRESSIONS
    name: IMPRESSIONS
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum, rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum,
      rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum]
    filters:
      rmn_eps_store_feed_prd.store_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${sum_of_ad_spend}/${sum_of_impressions})*1000"
      label: CPM
      value_format:
      value_format_name: decimal_2
      _kind_hint: dimension
      table_calculation: cpm
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: table_calculation
      expression: "(${rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum}/${rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum})*1000"
      label: CPM
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpm_1
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum_2
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Ad Spend Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_kiosk_data_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Impressions Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      table_calculation: percent_change_from_previous_kiosk_data_impressions_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [cpm_1, rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum, rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum]
    note_state: collapsed
    note_display: above
    note_text: The total number of times GMN Ads have been displayed to users. This
      helps measure the reach of your campaign.
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 0
    col: 0
    width: 6
    height: 3
  - title: REVENUE
    name: REVENUE
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum, rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum,
      rmn_kiosk_sales_transaction_v_prd_dly.roas_sum]
    filters:
      rmn_eps_store_feed_prd.store_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${sum_of_ad_spend}/${sum_of_impressions})*1000"
      label: CPM
      value_format:
      value_format_name: decimal_2
      _kind_hint: dimension
      table_calculation: cpm
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: table_calculation
      expression: "(${rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum}/${rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum})*1000"
      label: CPM
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpm_1
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum_2
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Ad Spend Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_kiosk_data_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Impressions Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      table_calculation: percent_change_from_previous_kiosk_data_impressions_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum}/${rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum}"
      label: ROAS($)
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Revenue Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      table_calculation: percent_change_from_previous_kiosk_data_revenue_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum, rmn_kiosk_sales_transaction_v_prd_dly.roas_sum,
      roas]
    note_state: collapsed
    note_display: above
    note_text: The total revenue generated from GMN Ad campaigns, specifically if
      a customer purchased the SKU that was associated to the ad. This helps measure
      the financial return from your advertising efforts.
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 0
    col: 12
    width: 6
    height: 3
  - title: ROAS
    name: ROAS
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    type: single_value
    fields: [rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum, rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum,
      rmn_kiosk_sales_transaction_v_prd_dly.roas_sum]
    filters:
      rmn_eps_store_feed_prd.store_name: ''
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "(${sum_of_ad_spend}/${sum_of_impressions})*1000"
      label: CPM
      value_format:
      value_format_name: decimal_2
      _kind_hint: dimension
      table_calculation: cpm
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: table_calculation
      expression: "(${rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum}/${rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum})*1000"
      label: CPM
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpm_1
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Cpm Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.cpm_sum
      table_calculation: percent_change_from_previous_kiosk_data_cpm_sum_2
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Ad Spend Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum
      table_calculation: percent_change_from_previous_kiosk_data_ad_spend_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Impressions Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.impressions_sum
      table_calculation: percent_change_from_previous_kiosk_data_impressions_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum}/${rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum}"
      label: ROAS($)
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      based_on: rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Kiosk Data Revenue Sum
      source_field: rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum
      table_calculation: percent_change_from_previous_kiosk_data_revenue_sum
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - roas
      based_on: roas
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  ROAS($)
      source_field: roas
      table_calculation: percent_change_from_previous_roas
      value_format:
      value_format_name: percent_0
      is_disabled: true
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    defaults_version: 1
    hidden_fields: [rmn_kiosk_sales_transaction_v_prd_dly.ad_spend_sum, rmn_kiosk_sales_transaction_v_prd_dly.revenue_sum,
      roas]
    note_state: collapsed
    note_display: above
    note_text: 'A measure of the revenue generated for every dollar spent on GMN Ads.
      Calculated as (Revenue ÷ AD Spend). This helps assess the profitability of your
      ad campaigns.

      '
    listen:
      Store: rmn_eps_store_feed_prd.store_detail
      Advertiser: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
      Brand: rmn_kiosk_sales_transaction_v_prd_dly.brand
      'Campaign ': rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
      Product: rmn_kiosk_sales_transaction_v_prd_dly.product_name
      Reporting Period: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
    row: 3
    col: 0
    width: 6
    height: 3
  filters:
  - name: Reporting Period
    title: Reporting Period
    type: field_filter
    default_value: 2024/11/01 to 2024/11/28
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    listens_to_filters: []
    field: rmn_kiosk_sales_transaction_v_prd_dly.transaction_date
  - name: Advertiser
    title: Advertiser
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    listens_to_filters: [Store, Product, 'Campaign ', Brand, Reporting Period]
    field: rmn_kiosk_sales_transaction_v_prd_dly.supplier_name
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    listens_to_filters: [Store, Product, 'Campaign ', Advertiser, Reporting Period]
    field: rmn_kiosk_sales_transaction_v_prd_dly.brand
  - name: 'Campaign '
    title: 'Campaign '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    listens_to_filters: [Store, Product, Brand, Advertiser, Reporting Period]
    field: rmn_kiosk_sales_transaction_v_prd_dly.campaign_name
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    listens_to_filters: [Store, 'Campaign ', Brand, Advertiser, Reporting Period]
    field: rmn_kiosk_sales_transaction_v_prd_dly.product_name
  - name: Store
    title: Store
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: rmn_kiosk_sales_transaction_v_prd_dly
    explore: rmn_kiosk_sales_transaction_v_prd_dly
    listens_to_filters: [Product, 'Campaign ', Brand, Advertiser, Reporting Period]
    field: rmn_eps_store_feed_prd.store_detail

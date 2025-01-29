---
- dashboard: uat_main_2_0
  title: Wawa Insights Report UAT_2.0
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  preferred_slug: 4lzvToR2QELNItJygs0a1K
  elements:
  - title: IMPRESSIONS
    name: IMPRESSIONS
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.impressions_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_impressions
      based_on: sum_of_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Impressions
      source_field: sum_of_impressions
      table_calculation: percent_change_from_previous_sum_of_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.impressions_sum
      based_on: rmn_sales_transaction_dly_uat_2.impressions_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Impressions
        Sum
      source_field: rmn_sales_transaction_dly_uat_2.impressions_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_impressions_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#202124"
    single_value_title: IMPRESSIONS
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: The total number of times GMN Ads have been displayed to users. This
      helps measure the reach of your campaign.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 0
    col: 18
    width: 6
    height: 3
  - title: CLICKS
    name: CLICKS
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.clicks_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_impressions
      based_on: sum_of_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Impressions
      source_field: sum_of_impressions
      table_calculation: percent_change_from_previous_sum_of_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_clicks
      based_on: sum_of_clicks
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Clicks
      source_field: sum_of_clicks
      table_calculation: percent_change_from_previous_sum_of_clicks
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.clicks_sum
      based_on: rmn_sales_transaction_dly_uat_2.clicks_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Clicks Sum
      source_field: rmn_sales_transaction_dly_uat_2.clicks_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_clicks_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: ''
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: The number of times users have clicked on GMN Ads. This indicates the
      level of interest GMN Ads have generated among viewers.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 3
    col: 6
    width: 6
    height: 3
  - title: UNIQUE IMPRESSIONS
    name: UNIQUE IMPRESSIONS
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.unique_impressions_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_impressions
      based_on: sum_of_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Impressions
      source_field: sum_of_impressions
      table_calculation: percent_change_from_previous_sum_of_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_clicks
      based_on: sum_of_clicks
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Clicks
      source_field: sum_of_clicks
      table_calculation: percent_change_from_previous_sum_of_clicks
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_unique_impressions
      based_on: sum_of_unique_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Unique Impressions
      source_field: sum_of_unique_impressions
      table_calculation: percent_change_from_previous_sum_of_unique_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.unique_impressions_sum
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Unique Impressions
        Sum
      source_field: rmn_sales_transaction_dly_uat_2.unique_impressions_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_unique_impressions_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The number of individual users who have seen GMN Ads at least once.
      This helps you understand the unique reach of your campaign.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 3
    col: 0
    width: 6
    height: 3
  - title: CTR
    name: CTR
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_clicks, sum_of_impressions,
      rmn_sales_transaction_dly_uat_2.ctr_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_impressions
      based_on: sum_of_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Impressions
      source_field: sum_of_impressions
      table_calculation: percent_change_from_previous_sum_of_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_clicks
      based_on: sum_of_clicks
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Clicks
      source_field: sum_of_clicks
      table_calculation: percent_change_from_previous_sum_of_clicks
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_unique_impressions
      based_on: sum_of_unique_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Unique Impressions
      source_field: sum_of_unique_impressions
      table_calculation: percent_change_from_previous_sum_of_unique_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_clicks}/${sum_of_impressions}"
      label: CTR
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ctr
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - ctr
      based_on: ctr
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  CTR
      source_field: ctr
      table_calculation: percent_change_from_previous_ctr
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_clicks, sum_of_impressions, ctr]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The percentage of ad impressions that resulted in clicks. Calculated
      as (Clicks ÷ Impressions) * 100. This indicates how effectively GMN Ads are
      driving user engagement.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 3
    col: 12
    width: 6
    height: 3
  - title: AD SPEND
    name: AD SPEND
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [sum_of_ad_spend, rmn_sales_transaction_dly_uat_2.ad_spend_sum, rmn_sales_transaction_dly_uat_2.timeframes]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_impressions
      based_on: sum_of_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Impressions
      source_field: sum_of_impressions
      table_calculation: percent_change_from_previous_sum_of_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_clicks
      based_on: sum_of_clicks
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Clicks
      source_field: sum_of_clicks
      table_calculation: percent_change_from_previous_sum_of_clicks
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_unique_impressions
      based_on: sum_of_unique_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Unique Impressions
      source_field: sum_of_unique_impressions
      table_calculation: percent_change_from_previous_sum_of_unique_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_clicks}/${sum_of_impressions}"
      label: CTR
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ctr
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - ctr
      based_on: ctr
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  CTR
      source_field: ctr
      table_calculation: percent_change_from_previous_ctr
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: ''
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_ad_spend
      based_on: sum_of_ad_spend
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Ad Spend
      source_field: sum_of_ad_spend
      table_calculation: percent_change_from_previous_sum_of_ad_spend
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.ad_spend_sum
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Ad Spend Sum
      source_field: rmn_sales_transaction_dly_uat_2.ad_spend_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_ad_spend_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_ad_spend]
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: The total amount spent on GMN Ad campaigns for both auction based and
      lockout campaigns. This helps track your advertising investment.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 0
    col: 0
    width: 6
    height: 3
  - title: REVENUE
    name: REVENUE
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.revenue_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_impressions
      based_on: sum_of_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Impressions
      source_field: sum_of_impressions
      table_calculation: percent_change_from_previous_sum_of_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_clicks
      based_on: sum_of_clicks
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Clicks
      source_field: sum_of_clicks
      table_calculation: percent_change_from_previous_sum_of_clicks
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_unique_impressions
      based_on: sum_of_unique_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Unique Impressions
      source_field: sum_of_unique_impressions
      table_calculation: percent_change_from_previous_sum_of_unique_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_clicks}/${sum_of_impressions}"
      label: CTR
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ctr
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - ctr
      based_on: ctr
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  CTR
      source_field: ctr
      table_calculation: percent_change_from_previous_ctr
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_ad_spend
      based_on: sum_of_ad_spend
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Ad Spend
      source_field: sum_of_ad_spend
      table_calculation: percent_change_from_previous_sum_of_ad_spend
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue
      type: sum
      _type_hint: number
    - _kind_hint: dimension
      _type_hint: number
      args:
      - sum_of_revenue
      based_on: sum_of_revenue
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Revenue
      source_field: sum_of_revenue
      table_calculation: percent_change_from_previous_sum_of_revenue
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.revenue_sum
      based_on: rmn_sales_transaction_dly_uat_2.revenue_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Revenue Sum
      source_field: rmn_sales_transaction_dly_uat_2.revenue_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_revenue_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The total revenue generated from GMN Ad campaigns, specifically if
      a customer purchased the SKU that was associated to the ad. This helps measure
      the financial return from your advertising efforts.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 0
    col: 6
    width: 6
    height: 3
  - title: CONVERSIONS
    name: CONVERSIONS
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.conversion_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_impressions
      based_on: sum_of_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Impressions
      source_field: sum_of_impressions
      table_calculation: percent_change_from_previous_sum_of_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_clicks
      based_on: sum_of_clicks
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Clicks
      source_field: sum_of_clicks
      table_calculation: percent_change_from_previous_sum_of_clicks
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_unique_impressions
      based_on: sum_of_unique_impressions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Unique Impressions
      source_field: sum_of_unique_impressions
      table_calculation: percent_change_from_previous_sum_of_unique_impressions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_clicks}/${sum_of_impressions}"
      label: CTR
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ctr
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - ctr
      based_on: ctr
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  CTR
      source_field: ctr
      table_calculation: percent_change_from_previous_ctr
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_ad_spend
      based_on: sum_of_ad_spend
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Ad Spend
      source_field: sum_of_ad_spend
      table_calculation: percent_change_from_previous_sum_of_ad_spend
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_revenue
      based_on: sum_of_revenue
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Revenue
      source_field: sum_of_revenue
      table_calculation: percent_change_from_previous_sum_of_revenue
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      expression: ''
      label: Sum of Conversion
      measure: sum_of_conversion
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_conversion
      based_on: sum_of_conversion
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Conversion
      source_field: sum_of_conversion
      table_calculation: percent_change_from_previous_sum_of_conversion
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.conversion_sum
      based_on: rmn_sales_transaction_dly_uat_2.conversion_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Conversion Sum
      source_field: rmn_sales_transaction_dly_uat_2.conversion_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_conversion_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: []
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The number of desired actions (e.g., purchases, sign-ups) completed
      by users after interacting with GMN Ads. This indicates the effectiveness of
      your campaign in driving specific outcomes.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 3
    col: 18
    width: 6
    height: 3
  - title: ROAS
    name: ROAS
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_revenue, sum_of_ad_spend,
      rmn_sales_transaction_dly_uat_2.roas_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - roas
      based_on: roas
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  ROAS
      source_field: roas
      table_calculation: percent_change_from_previous_roas
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.roas_sum
      based_on: rmn_sales_transaction_dly_uat_2.roas_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Roas Sum
      source_field: rmn_sales_transaction_dly_uat_2.roas_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_roas_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_revenue, sum_of_ad_spend, roas]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: 'A measure of the revenue generated for every dollar spent on GMN Ads.
      Calculated as (Revenue ÷ AD Spend). This helps assess the profitability of your
      ad campaigns.

      '
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 0
    col: 12
    width: 6
    height: 3
  - title: UNITS SOLD
    name: UNITS SOLD
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_units_sold, rmn_sales_transaction_dly_uat_2.units_sold_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_units_sold
      based_on: sum_of_units_sold
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Units Sold
      source_field: sum_of_units_sold
      table_calculation: percent_change_from_previous_sum_of_units_sold
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.units_sold_sum
      based_on: rmn_sales_transaction_dly_uat_2.units_sold_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Units Sold Sum
      source_field: rmn_sales_transaction_dly_uat_2.units_sold_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_units_sold_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_units_sold]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: 'The total number of individual products sold as a result of GMN Ad
      campaigns. This helps measure the direct sales impact of your advertising.

      '
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 6
    col: 12
    width: 6
    height: 3
  - title: TRANSACTIONS
    name: TRANSACTIONS
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_transactions, rmn_sales_transaction_dly_uat_2.transactions_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_units_sold
      based_on: sum_of_units_sold
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Units Sold
      source_field: sum_of_units_sold
      table_calculation: percent_change_from_previous_sum_of_units_sold
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.transactions
      expression: ''
      label: Sum of Transactions
      measure: sum_of_transactions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_transactions
      based_on: sum_of_transactions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Transactions
      source_field: sum_of_transactions
      table_calculation: percent_change_from_previous_sum_of_transactions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.transactions_sum
      based_on: rmn_sales_transaction_dly_uat_2.transactions_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Transactions
        Sum
      source_field: rmn_sales_transaction_dly_uat_2.transactions_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_transactions_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_transactions]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The total number of completed purchase events for advertised SKU's.
      This helps gauge the conversion effectiveness of GMN Ad campaigns.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 6
    col: 6
    width: 6
    height: 3
  - title: REMAINING  WALLET
    name: REMAINING  WALLET
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_budget, rmn_sales_transaction_dly_uat_2.budget_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_units_sold
      based_on: sum_of_units_sold
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Units Sold
      source_field: sum_of_units_sold
      table_calculation: percent_change_from_previous_sum_of_units_sold
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.transactions
      expression: ''
      label: Sum of Transactions
      measure: sum_of_transactions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_transactions
      based_on: sum_of_transactions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Transactions
      source_field: sum_of_transactions
      table_calculation: percent_change_from_previous_sum_of_transactions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_budget
      based_on: sum_of_budget
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Budget
      source_field: sum_of_budget
      table_calculation: percent_change_from_previous_sum_of_budget
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.budget_sum
      based_on: rmn_sales_transaction_dly_uat_2.budget_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Budget Sum
      source_field: rmn_sales_transaction_dly_uat_2.budget_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_budget_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_budget]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The total amount allocated for GMN Ad campaigns. This helps manage
      and control your advertising expenditure.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 9
    col: 12
    width: 6
    height: 3
  - title: CVR
    name: CVR
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_conversion, sum_of_clicks,
      rmn_sales_transaction_dly_uat_2.conversion_rate_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_units_sold
      based_on: sum_of_units_sold
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Units Sold
      source_field: sum_of_units_sold
      table_calculation: percent_change_from_previous_sum_of_units_sold
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.transactions
      expression: ''
      label: Sum of Transactions
      measure: sum_of_transactions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_transactions
      based_on: sum_of_transactions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Transactions
      source_field: sum_of_transactions
      table_calculation: percent_change_from_previous_sum_of_transactions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_budget
      based_on: sum_of_budget
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Budget
      source_field: sum_of_budget
      table_calculation: percent_change_from_previous_sum_of_budget
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Conversion Rate
      value_format:
      value_format_name: decimal_2
      based_on: rmn_sales_transaction_dly_uat_2.conversion_rate
      _kind_hint: measure
      measure: sum_of_conversion_rate
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "(${sum_of_conversion}/${sum_of_clicks})"
      label: Conversion Rate
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: conversion_rate
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - conversion_rate
      based_on: conversion_rate
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Conversion Rate
      source_field: conversion_rate
      table_calculation: percent_change_from_previous_conversion_rate
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.conversion_rate_sum
      based_on: rmn_sales_transaction_dly_uat_2.conversion_rate_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Conversion Rate
        Sum
      source_field: rmn_sales_transaction_dly_uat_2.conversion_rate_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_conversion_rate_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_conversion, sum_of_clicks, conversion_rate]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The percentage of ad interactions that resulted in conversions. Calculated
      as (Conversions ÷ Clicks) * 100. This indicates the efficiency of GMN Ads in
      generating desired actions.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 6
    col: 0
    width: 6
    height: 3
  - title: CPT
    name: CPT
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_transactions, sum_of_impressions,
      sum_of_ad_spend, sum_of_cpt, average_of_cpt, rmn_sales_transaction_dly_uat_2.cpt_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_units_sold
      based_on: sum_of_units_sold
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Units Sold
      source_field: sum_of_units_sold
      table_calculation: percent_change_from_previous_sum_of_units_sold
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.transactions
      expression: ''
      label: Sum of Transactions
      measure: sum_of_transactions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_transactions
      based_on: sum_of_transactions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Transactions
      source_field: sum_of_transactions
      table_calculation: percent_change_from_previous_sum_of_transactions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_budget
      based_on: sum_of_budget
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Budget
      source_field: sum_of_budget
      table_calculation: percent_change_from_previous_sum_of_budget
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Conversion Rate
      value_format:
      value_format_name: decimal_2
      based_on: rmn_sales_transaction_dly_uat_2.conversion_rate
      _kind_hint: measure
      measure: sum_of_conversion_rate
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_conversion}/${sum_of_clicks}"
      label: Conversion Rate
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: conversion_rate
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - conversion_rate
      based_on: conversion_rate
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Conversion Rate
      source_field: conversion_rate
      table_calculation: percent_change_from_previous_conversion_rate
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: measure
      expression: ''
      label: Average of Cpt
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.cpt
      _kind_hint: measure
      measure: average_of_cpt
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_ad_spend}/${sum_of_transactions}"
      label: CPT
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpt
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - average_of_cpt
      based_on: average_of_cpt
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Average of Cpt
      source_field: average_of_cpt
      table_calculation: percent_change_from_previous_average_of_cpt
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.cpt_sum
      based_on: rmn_sales_transaction_dly_uat_2.cpt_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Cpt Sum
      source_field: rmn_sales_transaction_dly_uat_2.cpt_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_cpt_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_transactions, sum_of_impressions, sum_of_ad_spend, sum_of_cpt,
      average_of_cpt]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The average cost incurred for each completed transaction. Calculated
      as (AD Spend ÷ Transactions). This helps measure the cost efficiency of GMN
      Ad campaigns.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 9
    col: 0
    width: 6
    height: 3
  - title: CPC
    name: CPC
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_clicks, sum_of_ad_spend,
      rmn_sales_transaction_dly_uat_2.cpc_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_units_sold
      based_on: sum_of_units_sold
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Units Sold
      source_field: sum_of_units_sold
      table_calculation: percent_change_from_previous_sum_of_units_sold
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.transactions
      expression: ''
      label: Sum of Transactions
      measure: sum_of_transactions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_transactions
      based_on: sum_of_transactions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Transactions
      source_field: sum_of_transactions
      table_calculation: percent_change_from_previous_sum_of_transactions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_budget
      based_on: sum_of_budget
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Budget
      source_field: sum_of_budget
      table_calculation: percent_change_from_previous_sum_of_budget
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Conversion Rate
      value_format:
      value_format_name: decimal_2
      based_on: rmn_sales_transaction_dly_uat_2.conversion_rate
      _kind_hint: measure
      measure: sum_of_conversion_rate
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_conversion}/${sum_of_clicks}"
      label: Conversion Rate
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: conversion_rate
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - conversion_rate
      based_on: conversion_rate
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Conversion Rate
      source_field: conversion_rate
      table_calculation: percent_change_from_previous_conversion_rate
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: measure
      expression: ''
      label: Average of Cpt
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.cpt
      _kind_hint: measure
      measure: average_of_cpt
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_ad_spend}/${sum_of_transactions}"
      label: CPT
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpt
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - average_of_cpt
      based_on: average_of_cpt
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Average of Cpt
      source_field: average_of_cpt
      table_calculation: percent_change_from_previous_average_of_cpt
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_ad_spend}/${sum_of_clicks}"
      label: CPC
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpc
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - cpc
      based_on: cpc
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  CPC
      source_field: cpc
      table_calculation: percent_change_from_previous_cpc
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.cpc_sum
      based_on: rmn_sales_transaction_dly_uat_2.cpc_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Cpc Sum
      source_field: rmn_sales_transaction_dly_uat_2.cpc_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_cpc_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_clicks, sum_of_ad_spend, cpc]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The average amount brands pay for each click on GMN Ads. Calculated
      as (AD Spend ÷ Clicks). This helps evaluate the cost-efficiency of ad clicks.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 9
    col: 6
    width: 6
    height: 3
  - title: CPM
    name: CPM
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: single_value
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_ad_spend, sum_of_impressions,
      rmn_sales_transaction_dly_uat_2.cpm_sum]
    fill_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    sorts: [rmn_sales_transaction_dly_uat_2.timeframes]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_units_sold
      based_on: sum_of_units_sold
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Units Sold
      source_field: sum_of_units_sold
      table_calculation: percent_change_from_previous_sum_of_units_sold
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.transactions
      expression: ''
      label: Sum of Transactions
      measure: sum_of_transactions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_transactions
      based_on: sum_of_transactions
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Transactions
      source_field: sum_of_transactions
      table_calculation: percent_change_from_previous_sum_of_transactions
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.budget
      expression: ''
      label: Sum of Budget
      measure: sum_of_budget
      type: sum
    - _kind_hint: measure
      _type_hint: number
      args:
      - sum_of_budget
      based_on: sum_of_budget
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Sum of Budget
      source_field: sum_of_budget
      table_calculation: percent_change_from_previous_sum_of_budget
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: measure
      expression: ''
      label: Sum of Conversion Rate
      value_format:
      value_format_name: decimal_2
      based_on: rmn_sales_transaction_dly_uat_2.conversion_rate
      _kind_hint: measure
      measure: sum_of_conversion_rate
      type: sum
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_conversion}/${sum_of_clicks}"
      label: Conversion Rate
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: conversion_rate
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - conversion_rate
      based_on: conversion_rate
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Conversion Rate
      source_field: conversion_rate
      table_calculation: percent_change_from_previous_conversion_rate
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.cpt
      expression: ''
      label: Sum of Cpt
      measure: sum_of_cpt
      type: sum
    - category: measure
      expression: ''
      label: Average of Cpt
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.cpt
      _kind_hint: measure
      measure: average_of_cpt
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_ad_spend}/${sum_of_transactions}"
      label: CPT
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpt
      _type_hint: number
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - average_of_cpt
      based_on: average_of_cpt
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  Average of Cpt
      source_field: average_of_cpt
      table_calculation: percent_change_from_previous_average_of_cpt
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_ad_spend}/${sum_of_clicks}"
      label: CPC
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpc
      _type_hint: number
      is_disabled: true
    - _kind_hint: dimension
      _type_hint: number
      args:
      - cpc
      based_on: cpc
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  CPC
      source_field: cpc
      table_calculation: percent_change_from_previous_cpc
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - category: table_calculation
      expression: "${sum_of_ad_spend}/${sum_of_impressions}*1000"
      label: CPM
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: cpm
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      args:
      - cpm
      based_on: cpm
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous -  CPM
      source_field: cpm
      table_calculation: percent_change_from_previous_cpm
      value_format:
      value_format_name: percent_0
      is_disabled: true
    - _kind_hint: measure
      _type_hint: number
      args:
      - rmn_sales_transaction_dly_uat_2.cpm_sum
      based_on: rmn_sales_transaction_dly_uat_2.cpm_sum
      calculation_type: percent_difference_from_previous
      category: table_calculation
      label: Percent change from previous - Rmn Sales Transaction Dly Cpm Sum
      source_field: rmn_sales_transaction_dly_uat_2.cpm_sum
      table_calculation: percent_change_from_previous_rmn_sales_transaction_dly_uat_2_cpm_sum
      value_format:
      value_format_name: percent_0
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
    hidden_fields: [sum_of_ad_spend, sum_of_impressions, cpm]
    hidden_pivots: {}
    note_state: collapsed
    note_display: above
    note_text: The cost per thousand impressions of GMN Ads. Calculated as (AD Spend
      ÷ Impressions) * 1000. This helps measure the cost efficiency of your ad reach.
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 6
    col: 18
    width: 6
    height: 3
  - title: Campaign Spend, Revenue and ROAS
    name: Campaign Spend, Revenue and ROAS
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_column
    fields: [rmn_sales_transaction_dly_uat_2.transaction_date, sum_of_ad_spend, sum_of_revenue]
    fill_fields: [rmn_sales_transaction_dly_uat_2.transaction_date]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [rmn_sales_transaction_dly_uat_2.transaction_date]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Conversion
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.conversion
      _kind_hint: measure
      measure: sum_of_conversion
      type: sum
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: f4ca6d01-0d9c-0aad-8722-eefcddef34ae
        label: Custom
        type: discrete
        colors:
        - "#4285F4"
        - "#FBBC05"
        - "#34A853"
        - "#E8710A"
        - "#F9AB00"
        - "#7CB342"
        - "#9334E6"
        - "#80868B"
        - "#079c98"
        - "#A8A116"
        - "#EA4335"
        - "#FF8168"
      options:
        steps: 5
    y_axes: [{label: SPEND ‎/  REVENUE, orientation: left, series: [{axisId: sum_of_ad_spend,
            id: sum_of_ad_spend, name: SPEND}, {axisId: sum_of_revenue, id: sum_of_revenue,
            name: REVENUE}], showLabels: true, showValues: true, maxValue: !!null '',
        minValue: !!null '', valueFormat: "$0.00,\\K", unpinAxis: false, tickDensity: custom,
        tickDensityCustom: 17, type: linear}, {label: ROAS, orientation: right, series: [
          {axisId: roas, id: roas, name: ROAS}], showLabels: true, showValues: true,
        maxValue: 5, minValue: 0, valueFormat: "$0", unpinAxis: true, tickDensity: custom,
        tickDensityCustom: 17, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    font_size: ''
    series_types:
      roas: line
    series_colors:
      sum_of_revenue: "#4285F4"
      sum_of_ad_spend: "#00e6c3"
      roas: "#EA4335"
    series_labels:
      sum_of_ad_spend: SPEND
      sum_of_revenue: REVENUE
    series_point_styles:
      roas: auto
    label_color: []
    column_group_spacing_ratio: 0
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
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: []
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 12
    col: 0
    width: 24
    height: 7
  - title: Spend by Channel
    name: Spend by Channel
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_bar
    fields: [rmn_sales_transaction_dly_uat_2.channel, sum_of_ad_spend, sum_of_revenue]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [sum_of_ad_spend desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd_0
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
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
    x_axis_reversed: true
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: fcf7b01c-24b4-9cd8-724b-cb54829e0da8
        label: Custom
        type: continuous
        stops:
        - color: "#4285F4"
          offset: 0
        - color: "#A8C7FA"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: Spend($), orientation: bottom, series: [{axisId: sum_of_ad_spend,
            id: sum_of_ad_spend, name: Spend($)}], showLabels: true, showValues: true,
        valueFormat: "$0,\\K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 6,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      sum_of_ad_spend: "#00e6c3"
    series_labels:
      sum_of_ad_spend: Spend($)
    x_axis_datetime_label: ''
    column_group_spacing_ratio: 0.6
    advanced_vis_config: |-
      {
        tooltip: {
          backgroundColor: '#FAF9F6', // White background
          style: {
            color: '#000000', // Black text
            fontWeight: 'medium', // Bold for all text
          },
          format: '<span style="font-size: 1em">Channel: {key}</span><br/>{#each points}<span style="color:{color}; font-weight: medium;">\u25CF {series.name}: </span>{y:,.2f}<br/>{/each}',
          shared: true
        }
      }
    defaults_version: 1
    hidden_fields: [sum_of_revenue, roas]
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 19
    col: 0
    width: 8
    height: 6
  - title: Units Sold by Channel
    name: Units Sold by Channel
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_bar
    fields: [rmn_sales_transaction_dly_uat_2.channel, sum_of_ad_spend, sum_of_revenue,
      units_sold]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [sum_of_ad_spend desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd_0
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - category: measure
      expression: ''
      label: Units Sold
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      _kind_hint: measure
      measure: units_sold
      type: sum
      _type_hint: number
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 2ebc1673-a70f-4442-8b28-e005b75cd336
        label: Custom
        type: continuous
        stops:
        - color: "#34A853"
          offset: 0
        - color: "#77C58C"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: Units Sold, orientation: bottom, series: [{axisId: units_sold,
            id: units_sold, name: Units Sold}], showLabels: true, showValues: true,
        valueFormat: '0,\K', unpinAxis: false, tickDensity: custom, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    series_labels:
      sum_of_ad_spend: Spend($)
    column_group_spacing_ratio: 0.6
    advanced_vis_config: |-
      {
        tooltip: {
          backgroundColor: '#FAF9F6', // White background
          style: {
            color: '#000000', // Black text
            fontWeight: 'Medium', // Bold for all text
          },
          format: '<span style="font-size: 1em">Channel: {key}</span><br/>{#each points}<span style="color:{color}; font-weight: medium;">\u25CF {series.name}: </span>{y:,2f}<br/>{/each}',
          shared: true
        },
      }
    defaults_version: 1
    hidden_fields: [sum_of_revenue, roas, sum_of_ad_spend]
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 19
    col: 8
    width: 8
    height: 6
  - title: ROAS by Channel
    name: ROAS by Channel
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_bar
    fields: [rmn_sales_transaction_dly_uat_2.channel, sum_of_ad_spend, sum_of_revenue,
      sum_of_units_sold]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [sum_of_ad_spend desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd_0
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 33bc9fe5-dcda-897c-adac-f2855e5d125e
        label: Custom
        type: continuous
        stops:
        - color: "#EA4335"
          offset: 0
        - color: "#F18178"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: ROAS($), orientation: bottom, series: [{axisId: roas, id: roas,
            name: ROAS($)}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 7, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      roas: "#EA4335"
    series_labels:
      sum_of_ad_spend: Spend($)
      roas: ROAS($)
    column_group_spacing_ratio: 0.6
    advanced_vis_config: |-
      {
        tooltip: {
          backgroundColor: '#FAF9F6', // White background
          style: {
            color: '#000000', // Black text
            fontWeight: 'medium', // Bold for all text
          },
          format: '<span style="font-size: 1em">Channel: {key}</span><br/>{#each points}<span style="color:{color}; font-weight: medium;">\u25CF {series.name}: </span>{y:.2f}<br/>{/each}',
          shared: true
        },
      }
    defaults_version: 1
    hidden_fields: [sum_of_revenue, sum_of_ad_spend, sum_of_units_sold]
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 19
    col: 16
    width: 8
    height: 6
  - title: Performance by Placement
    name: Performance by Placement
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_grid
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.channel,
      rmn_sales_transaction_dly_uat_2.Tactic, rmn_sales_transaction_dly_uat_2.placement,
      spend, impression, sum_of_clicks, sum_of_unique_impressions, sum_of_units_sold_2,
      revenue, sum_of_transactions]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [rmn_sales_transaction_dly_uat_2.placement]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_clicks}/${impression}"
      label: CTR
      value_format:
      value_format_name: percent_2
      _kind_hint: measure
      table_calculation: ctr_1
      _type_hint: number
    - category: table_calculation
      expression: "${revenue}/${spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas_1
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: measure
      expression: ''
      label: spend
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: spend
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Impression
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      _kind_hint: measure
      measure: impression
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.unique_impressions
      expression: ''
      label: Sum of Unique Impressions
      measure: sum_of_unique_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    - category: measure
      expression: ''
      label: revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: revenue
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.transactions
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
    column_order: ["$$$_row_numbers_$$$", rmn_sales_transaction_dly_uat_2.placement,
      rmn_sales_transaction_dly_uat_2.channel, rmn_sales_transaction_dly_uat_2.Tactic,
      impression, sum_of_clicks, sum_of_unique_impressions, sum_of_units_sold_2, sum_of_transactions,
      ctr_1, roas_1, spend, revenue]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      rmn_sales_transaction_dly_uat_2.placement: Placement
      sum_of_ad_spend_2: Spend($)
      impression: Impressions
      sum_of_clicks: Clicks
      sum_of_unique_impressions: Unique Impressions
      sum_of_units_sold_2: Units Sold
      sum_of_revenue_2: Revenue($)
      sum_of_transactions: Transactions
      roas_1: ROAS($)
      spend: Spend($)
      revenue: Revenue($)
    series_cell_visualizations:
      sum_of_revenue:
        is_active: false
    series_text_format:
      rmn_sales_transaction_dly_uat_2.placement:
        align: left
      spend:
        align: left
      impression:
        align: left
      sum_of_clicks:
        align: left
      sum_of_unique_impressions:
        align: left
      sum_of_units_sold_2:
        align: left
      revenue:
        align: left
      sum_of_transactions:
        align: left
      ctr_1:
        align: left
      roas_1:
        align: left
    value_labels: legend
    label_type: labPer
    inner_radius: 55
    hidden_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
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
    hidden_pivots: {}
    pinned_columns:
      "$$$_row_numbers_$$$": left
    listen:
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 44
    col: 0
    width: 24
    height: 7
  - title: Revenue by Brand
    name: Revenue by Brand
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_grid
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.channel,
      rmn_sales_transaction_dly_uat_2.Tactic, rmn_sales_transaction_dly_uat_2.brand,
      sum_of_ad_spend_1, sum_of_impressions_2, sum_of_revenue_1, sum_of_units_sold_2]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [sum_of_revenue_1 desc]
    limit: 50
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue_1}/${sum_of_ad_spend_1}"
      label: ROAS($)
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd_0
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend_1
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue_1
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Roas
      based_on: rmn_sales_transaction_dly_uat_2.roas
      _kind_hint: measure
      measure: sum_of_roas
      type: average
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
    column_order: ["$$$_row_numbers_$$$", rmn_sales_transaction_dly_uat_2.brand, rmn_sales_transaction_dly_uat_2.channel,
      rmn_sales_transaction_dly_uat_2.Tactic, sum_of_ad_spend_1, sum_of_impressions_2,
      sum_of_revenue_1, sum_of_units_sold_2, roas]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      sum_of_revenue: Revenue($)
      sum_of_ad_spend: Spend($)
      sum_of_impressions: Impressions
      sum_of_units_sold: Units Sold
      roas: ROAS($)
      rmn_sales_transaction_dly_uat_2.impressions_sum: Impressions
      rmn_sales_transaction_dly_uat_2.revenue_sum: Revenue($)
      rmn_sales_transaction_dly_uat_2.ad_spend_sum: Spend($)
      rmn_sales_transaction_dly_uat_2.clicks_sum: Clicks
      rmn_sales_transaction_dly_uat_2.roas_sum: ROAS($)
      rmn_sales_transaction_dly_uat_2.units_sold_sum: Units Sold
      sum_of_ad_spend_1: Spend($)
      sum_of_impressions_2: Impressions
      sum_of_revenue_1: Revenue($)
      sum_of_units_sold_2: Units Sold
    series_cell_visualizations:
      sum_of_revenue:
        is_active: false
    series_text_format:
      rmn_sales_transaction_dly_uat_2.brand: {}
      roas: {}
      sum_of_ad_spend_1:
        align: left
      sum_of_impressions_2:
        align: left
      sum_of_revenue_1:
        align: left
      sum_of_units_sold_2:
        align: left
    value_labels: legend
    label_type: labPer
    inner_radius: 55
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
    hidden_pivots: {}
    hidden_fields: [rmn_sales_transaction_dly_uat_2.timeframes]
    listen:
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 38
    col: 0
    width: 12
    height: 6
  - title: Units Sold by Product
    name: Units Sold by Product
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_grid
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.channel,
      rmn_sales_transaction_dly_uat_2.Tactic, rmn_sales_transaction_dly_uat_2.brand,
      rmn_sales_transaction_dly_uat_2.product_name, sum_of_ad_spend_1, sum_of_impressions_2,
      sum_of_revenue_1, sum_of_units_sold_2]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [sum_of_units_sold_2 desc]
    limit: 50
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue_1}/${sum_of_ad_spend_1}"
      label: ROAS($)
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend_1
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue_1
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Roas
      based_on: rmn_sales_transaction_dly_uat_2.roas
      _kind_hint: measure
      measure: sum_of_roas
      type: average
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
    pinned_columns:
      "$$$_row_numbers_$$$": left
      rmn_sales_transaction_dly_uat_2.product_name: left
      rmn_sales_transaction_dly_uat_2.Tactic: left
      rmn_sales_transaction_dly_uat_2.channel: left
      sum_of_ad_spend_1: left
    column_order: ["$$$_row_numbers_$$$", rmn_sales_transaction_dly_uat_2.product_name,
      rmn_sales_transaction_dly_uat_2.channel, rmn_sales_transaction_dly_uat_2.Tactic,
      sum_of_ad_spend_1, sum_of_impressions_2, sum_of_revenue_1, sum_of_units_sold_2,
      roas]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      sum_of_revenue: Revenue($)
      sum_of_ad_spend: Spend($)
      sum_of_impressions: Impressions
      sum_of_units_sold: Units Sold
      roas: ROAS($)
      rmn_sales_transaction_dly_uat_2.impressions_sum: Impressions
      rmn_sales_transaction_dly_uat_2.revenue_sum: Revenue($)
      rmn_sales_transaction_dly_uat_2.ad_spend_sum: Spend($)
      rmn_sales_transaction_dly_uat_2.clicks_sum: Clicks
      rmn_sales_transaction_dly_uat_2.roas_sum: ROAS($)
      rmn_sales_transaction_dly_uat_2.units_sold_sum: Units Sold
      sum_of_ad_spend_1: Spend($)
      sum_of_impressions_2: Impressions
      sum_of_revenue_1: Revenue($)
      sum_of_units_sold_2: Units Sold
      rmn_sales_transaction_dly_uat_2.product_name: Product
    series_cell_visualizations:
      sum_of_revenue:
        is_active: false
    series_text_format:
      rmn_sales_transaction_dly_uat_2.brand:
        align: left
      roas: {}
      sum_of_ad_spend_1:
        align: left
      sum_of_impressions_2:
        align: left
      sum_of_revenue_1:
        align: left
      sum_of_units_sold_2:
        align: left
    value_labels: legend
    label_type: labPer
    inner_radius: 55
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
    hidden_pivots: {}
    hidden_fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.brand]
    listen:
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 38
    col: 12
    width: 12
    height: 6
  - title: Revenue by Brand
    name: Revenue by Brand (2)
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_pie
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, rmn_sales_transaction_dly_uat_2.brand,
      sum_of_ad_spend_1, sum_of_impressions_2, revenue, sum_of_units_sold_2]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [revenue desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd_0
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend_1
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - category: measure
      expression: ''
      label: Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: revenue
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Roas
      based_on: rmn_sales_transaction_dly_uat_2.roas
      _kind_hint: measure
      measure: sum_of_roas
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_revenue_1}/${sum_of_ad_spend_1}"
      label: ROAS($)
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    value_labels: legend
    label_type: labPer
    inner_radius: 55
    series_colors:
      Mountain Dew: "#3B8AFF"
      Celsius: "#7F64CB"
      Deer Park: "#00B6CB"
      Nerds: "#EA4335"
      Red Bull: "#FFA800"
      Fiji: "#34A853"
      Nabisco: "#E01E5A"
      Smartwater: "#36C5F0"
      Welchs: "#FF9E0F"
      Core Power: "#FF59FE"
    series_labels:
      sum_of_revenue: Revenue($)
      sum_of_ad_spend: Spend($)
      sum_of_impressions: Impressions
      sum_of_units_sold: Units Sold
      roas: ROAS($)
      rmn_sales_transaction_dly_uat_2.impressions_sum: Impressions
      rmn_sales_transaction_dly_uat_2.revenue_sum: Revenue($)
      rmn_sales_transaction_dly_uat_2.ad_spend_sum: Spend($)
      rmn_sales_transaction_dly_uat_2.clicks_sum: Clicks
      rmn_sales_transaction_dly_uat_2.roas_sum: ROAS($)
      rmn_sales_transaction_dly_uat_2.units_sold_sum: Units Sold
      sum_of_ad_spend_1: Spend($)
      sum_of_impressions_2: Impressions
      sum_of_revenue_1: Revenue($)
      sum_of_units_sold_2: Units Sold
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
    column_order: ["$$$_row_numbers_$$$", rmn_sales_transaction_dly_uat_2.brand, sum_of_ad_spend_1,
      sum_of_impressions_2, sum_of_revenue_1, sum_of_units_sold_2, roas]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      sum_of_revenue:
        is_active: false
    series_text_format:
      rmn_sales_transaction_dly_uat_2.brand: {}
      sum_of_revenue:
        align: left
      roas: {}
      sum_of_ad_spend_1:
        align: left
      sum_of_impressions_2:
        align: left
      sum_of_revenue_1:
        align: left
      sum_of_units_sold_2:
        align: left
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
    hidden_pivots: {}
    hidden_fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_impressions_2,
      sum_of_ad_spend_1, sum_of_units_sold_2, roas]
    listen:
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 31
    col: 0
    width: 12
    height: 7
  - title: Units Sold by Product
    name: Units Sold by Product (2)
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_pie
    fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_ad_spend_1, sum_of_impressions_2,
      sum_of_revenue_1, units_sold, rmn_sales_transaction_dly_uat_2.product_name]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [units_sold desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend_1
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions_2
      type: sum
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      _kind_hint: measure
      measure: sum_of_revenue_1
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Units Sold
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      _kind_hint: measure
      measure: units_sold
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Roas
      based_on: rmn_sales_transaction_dly_uat_2.roas
      _kind_hint: measure
      measure: sum_of_roas
      type: average
      _type_hint: number
    - category: table_calculation
      expression: "${sum_of_revenue_1}/${sum_of_ad_spend_1}"
      label: ROAS($)
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    value_labels: legend
    label_type: labPer
    inner_radius: 55
    series_colors:
      Mtn Dew Baja Blast 20 Oz-Ea: "#3B8AFF"
      Deer Park Water 1l-Ea: "#7F64CB"
      Mtn Dew 20oz-Ea: "#00B6CB"
      Deer Park Water 1.5l-Ea: "#EA4335"
      Nerds Clusters 5oz-Ea: "#FFA800"
      Red Bull Sugar Free 12oz-Ea: "#34A853"
      Mtn Dew Code Red 20oz-Ea: "#E01E5A"
      Celsius Peach Vibe 12oz-Ea: "#36C5F0"
      Mtn Dew Baja Blast Zero 20oz-Ea: "#FF9E0F"
      Celsius Green Tea Peach Mango 12oz-Ea: "#FF59FE"
    series_labels:
      sum_of_revenue: Revenue($)
      sum_of_ad_spend: Spend($)
      sum_of_impressions: Impressions
      sum_of_units_sold: Units Sold
      roas: ROAS($)
      rmn_sales_transaction_dly_uat_2.impressions_sum: Impressions
      rmn_sales_transaction_dly_uat_2.revenue_sum: Revenue($)
      rmn_sales_transaction_dly_uat_2.ad_spend_sum: Spend($)
      rmn_sales_transaction_dly_uat_2.clicks_sum: Clicks
      rmn_sales_transaction_dly_uat_2.roas_sum: ROAS($)
      rmn_sales_transaction_dly_uat_2.units_sold_sum: Units Sold
      sum_of_ad_spend_1: Spend($)
      sum_of_impressions_2: Impressions
      sum_of_revenue_1: Revenue($)
      sum_of_units_sold_2: Units Sold
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
    pinned_columns:
      "$$$_row_numbers_$$$": left
      rmn_sales_transaction_dly_uat_2.product_name: left
      sum_of_ad_spend_1: left
    column_order: ["$$$_row_numbers_$$$", rmn_sales_transaction_dly_uat_2.product_name,
      sum_of_ad_spend_1, sum_of_impressions_2, sum_of_revenue_1, sum_of_units_sold_2,
      roas]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_column_widths:
      rmn_sales_transaction_dly_uat_2.product_name: 244.33299999999997
    series_cell_visualizations:
      sum_of_revenue:
        is_active: false
    series_text_format:
      sum_of_units_sold:
        align: left
      roas: {}
      sum_of_ad_spend_1:
        align: left
      sum_of_impressions_2:
        align: left
      sum_of_revenue_1:
        align: left
      sum_of_units_sold_2:
        align: left
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
    hidden_pivots: {}
    hidden_fields: [rmn_sales_transaction_dly_uat_2.timeframes, sum_of_ad_spend_1,
      sum_of_impressions_2, sum_of_revenue_1, roas]
    listen:
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 31
    col: 12
    width: 12
    height: 7
  - title: Spend by Tactic
    name: Spend by Tactic
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_bar
    fields: [sum_of_ad_spend, sum_of_revenue, rmn_sales_transaction_dly_uat_2.Tactic]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [sum_of_ad_spend desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd_0
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
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
    x_axis_reversed: true
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: fcf7b01c-24b4-9cd8-724b-cb54829e0da8
        label: Custom
        type: continuous
        stops:
        - color: "#4285F4"
          offset: 0
        - color: "#A8C7FA"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: Spend($), orientation: bottom, series: [{axisId: sum_of_ad_spend,
            id: sum_of_ad_spend, name: Spend($)}], showLabels: true, showValues: true,
        valueFormat: "$0,\\K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    hide_legend: false
    series_colors:
      sum_of_ad_spend: "#00e6c3"
    series_labels:
      sum_of_ad_spend: Spend($)
    x_axis_datetime_label: ''
    column_group_spacing_ratio: 0.6
    advanced_vis_config: |-
      {
        tooltip: {
          backgroundColor: '#FAF9F6', // White background
          style: {
            color: '#000000', // Black text
            fontWeight: 'medium', // Bold for all text
          },
          format: '<span style="font-size: 1em">Tactic: {key}</span><br/>{#each points}<span style="color:{color}; font-weight: medium;">\u25CF {series.name}: </span>{y:,.2f}<br/>{/each}',
          shared: true
        }
      }
    defaults_version: 1
    hidden_fields: [sum_of_revenue, roas]
    listen:
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 25
    col: 0
    width: 8
    height: 6
  - title: Units Sold by Tactic
    name: Units Sold by Tactic
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_bar
    fields: [sum_of_ad_spend, sum_of_revenue, units_sold, rmn_sales_transaction_dly_uat_2.Tactic]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [sum_of_ad_spend desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd_0
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - category: measure
      expression: ''
      label: Units Sold
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      _kind_hint: measure
      measure: units_sold
      type: sum
      _type_hint: number
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 2ebc1673-a70f-4442-8b28-e005b75cd336
        label: Custom
        type: continuous
        stops:
        - color: "#34A853"
          offset: 0
        - color: "#77C58C"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: Units Sold, orientation: bottom, series: [{axisId: units_sold,
            id: units_sold, name: Units Sold}], showLabels: true, showValues: true,
        valueFormat: '0,\K', unpinAxis: false, tickDensity: custom, tickDensityCustom: 7,
        type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors: {}
    series_labels:
      sum_of_ad_spend: Spend($)
    column_group_spacing_ratio: 0.6
    advanced_vis_config: |-
      {
        tooltip: {
          backgroundColor: '#FAF9F6', // White background
          style: {
            color: '#000000', // Black text
            fontWeight: 'Medium', // Bold for all text
          },
          format: '<span style="font-size: 1em">Tactic: {key}</span><br/>{#each points}<span style="color:{color}; font-weight: medium;">\u25CF {series.name}: </span>{y:,2f}<br/>{/each}',
          shared: true
        },
      }
    defaults_version: 1
    hidden_fields: [sum_of_revenue, roas, sum_of_ad_spend]
    listen:
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 25
    col: 8
    width: 8
    height: 6
  - title: ROAS by Tactic
    name: ROAS by Tactic
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    type: looker_bar
    fields: [sum_of_ad_spend, sum_of_revenue, sum_of_units_sold, rmn_sales_transaction_dly_uat_2.Tactic]
    filters:
      rmn_sales_transaction_dly_uat_2.timeframes: Selected Period
    sorts: [sum_of_ad_spend desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd_0
      based_on: rmn_sales_transaction_dly_uat_2.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: rmn_sales_transaction_dly_uat_2.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
      type: sum
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
    x_axis_reversed: true
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
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
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      custom:
        id: 33bc9fe5-dcda-897c-adac-f2855e5d125e
        label: Custom
        type: continuous
        stops:
        - color: "#EA4335"
          offset: 0
        - color: "#F18178"
          offset: 100
      options:
        steps: 5
    y_axes: [{label: ROAS($), orientation: bottom, series: [{axisId: roas, id: roas,
            name: ROAS($)}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 8, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      roas: "#EA4335"
    series_labels:
      sum_of_ad_spend: Spend($)
      roas: ROAS($)
    column_group_spacing_ratio: 0.6
    advanced_vis_config: |-
      {
        tooltip: {
          backgroundColor: '#FAF9F6', // White background
          style: {
            color: '#000000', // Black text
            fontWeight: 'medium', // Bold for all text
          },
          format: '<span style="font-size: 1em">Tactic: {key}</span><br/>{#each points}<span style="color:{color}; font-weight: medium;">\u25CF {series.name}: </span>{y:.2f}<br/>{/each}',
          shared: true
        },
      }
    defaults_version: 1
    hidden_fields: [sum_of_revenue, sum_of_ad_spend, sum_of_units_sold]
    listen:
      Reporting Period: rmn_sales_transaction_dly_uat_2.date_filter
      Brand: rmn_sales_transaction_dly_uat_2.brand
      Channel: rmn_sales_transaction_dly_uat_2.channel
      Campaign: rmn_sales_transaction_dly_uat_2.campaign_name
      Product: rmn_sales_transaction_dly_uat_2.product_name
      'Advertiser ': rmn_sales_transaction_dly_uat_2.supplier_name
      Tactic: rmn_sales_transaction_dly_uat_2.Tactic
    row: 25
    col: 16
    width: 8
    height: 6
  filters:
  - name: Reporting Period
    title: Reporting Period
    type: field_filter
    default_value: 2024/07/01 to 2024/08/01
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    listens_to_filters: []
    field: rmn_sales_transaction_dly_uat_2.date_filter
  - name: Channel
    title: Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    listens_to_filters: [DATE, Reporting Period, Tactic, 'Advertiser ', Brand, Campaign,
      Product]
    field: rmn_sales_transaction_dly_uat_2.channel
  - name: Tactic
    title: Tactic
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    listens_to_filters: [Reporting Period, Channel, 'Advertiser ', Brand, Campaign,
      Product]
    field: rmn_sales_transaction_dly_uat_2.Tactic
  - name: 'Advertiser '
    title: 'Advertiser '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    listens_to_filters: [DATE, Reporting Period, Channel, Tactic, Brand, Campaign,
      Product]
    field: rmn_sales_transaction_dly_uat_2.supplier_name
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    listens_to_filters: [DATE, Reporting Period, Channel, Tactic, 'Advertiser ', Campaign,
      Product]
    field: rmn_sales_transaction_dly_uat_2.brand
  - name: Campaign
    title: Campaign
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    listens_to_filters: [DATE, Reporting Period, Channel, Tactic, 'Advertiser ', Brand,
      Product]
    field: rmn_sales_transaction_dly_uat_2.campaign_name
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: rmn_sales_transaction_dly_uat_2
    explore: rmn_sales_transaction_dly_uat_2
    listens_to_filters: [DATE, Reporting Period, Channel, Tactic, 'Advertiser ', Brand,
      Campaign]
    field: rmn_sales_transaction_dly_uat_2.product_name

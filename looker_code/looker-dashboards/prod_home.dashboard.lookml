---
- dashboard: __
  title: " ‎ "
  layout: newspaper
  description: ''
  preferred_slug: vt8DqrOBxDfV1K1zfdCXUc
  elements:
  - title: IMPRESSSIONS
    name: IMPRESSSIONS
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    type: single_value
    fields: [home_prd_sql_runner.impressions_formatted_value]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    defaults_version: 1
    note_state: collapsed
    note_display: hover
    note_text: The total number of times GMN Ads have been displayed to users. This
      helps measure the reach of your campaign.
    listen:
      Reporting Period: home_prd_sql_runner.transaction_date
      Channel: home_prd_sql_runner.channel
      Tactic: home_prd_sql_runner.adtypename
      'Advertiser ': home_prd_sql_runner.supplier_name
    row: 0
    col: 0
    width: 6
    height: 3
  - title: AD SPEND
    name: AD SPEND
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    type: single_value
    fields: [home_prd_sql_runner.ad_spend_formatted_value]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    defaults_version: 1
    hidden_pivots: {}
    note_state: collapsed
    note_display: hover
    note_text: The total amount spent on GMN Ad campaigns for both auction based and
      lockout campaigns. This helps track your advertising investment.
    listen:
      Reporting Period: home_prd_sql_runner.transaction_date
      Channel: home_prd_sql_runner.channel
      Tactic: home_prd_sql_runner.adtypename
      'Advertiser ': home_prd_sql_runner.supplier_name
    row: 0
    col: 6
    width: 6
    height: 3
  - title: REVENUE
    name: REVENUE
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    type: single_value
    fields: [home_prd_sql_runner.revenue_formatted_value]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    note_state: collapsed
    note_display: hover
    note_text: The total revenue generated from GMN Ad campaigns, specifically if
      a customer purchased the SKU that was associated to the ad. This helps measure
      the financial return from your advertising efforts.
    listen:
      Reporting Period: home_prd_sql_runner.transaction_date
      Channel: home_prd_sql_runner.channel
      Tactic: home_prd_sql_runner.adtypename
      'Advertiser ': home_prd_sql_runner.supplier_name
    row: 0
    col: 12
    width: 6
    height: 3
  - title: ROAS
    name: ROAS
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    type: single_value
    fields: [home_prd_sql_runner.roas_formatted_value]
    limit: 500
    column_limit: 50
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    note_state: collapsed
    note_display: hover
    note_text: A measure of the revenue generated for every dollar spent on GMN Ads.
      Calculated as (Revenue ÷ AD Spend). This helps assess the profitability of your
      ad campaigns.
    listen:
      Reporting Period: home_prd_sql_runner.transaction_date
      Channel: home_prd_sql_runner.channel
      Tactic: home_prd_sql_runner.adtypename
      'Advertiser ': home_prd_sql_runner.supplier_name
    row: 0
    col: 18
    width: 6
    height: 3
  - title: Campaign Spend, Revenue and ROAS
    name: Campaign Spend, Revenue and ROAS
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    type: looker_column
    fields: [home_prd_sql_runner.transaction_date, sum_of_ad_spend, sum_of_revenue]
    fill_fields: [home_prd_sql_runner.transaction_date]
    sorts: [home_prd_sql_runner.transaction_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: "${sum_of_revenue}/${sum_of_ad_spend}"
      label: ROAS
      value_format:
      value_format_name: usd
      _kind_hint: measure
      table_calculation: roas_1
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Ad Spend
      value_format:
      value_format_name: usd
      based_on: home_prd_sql_runner.ad_spend
      _kind_hint: measure
      measure: sum_of_ad_spend
      type: sum
      _type_hint: number
    - category: measure
      expression: ''
      label: Sum of Revenue
      value_format:
      value_format_name: usd
      based_on: home_prd_sql_runner.revenue
      _kind_hint: measure
      measure: sum_of_revenue
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
    y_axes: [{label: SPEND  / REVENUE, orientation: left, series: [{axisId: sum_of_ad_spend,
            id: sum_of_ad_spend, name: AD SPEND}, {axisId: sum_of_revenue, id: sum_of_revenue,
            name: REVENUE}], showLabels: true, showValues: true, valueFormat: "$0.00,\\\
          K", unpinAxis: false, tickDensity: custom, tickDensityCustom: 18, type: linear},
      {label: ROAS, orientation: right, series: [{axisId: roas_1, id: roas_1, name: ROAS}],
        showLabels: true, showValues: true, maxValue: 3, minValue: 0, valueFormat: "$0\\",
        unpinAxis: true, tickDensity: custom, tickDensityCustom: 9, type: linear}]
    x_axis_label: ''
    x_axis_zoom: true
    y_axis_zoom: true
    series_types:
      roas_1: line
    series_colors:
      roas_1: "#EA4335"
      home_prd_sql_runner.revenue_sum: "#4285F4"
      home_prd_sql_runner.ad_spend_sum: "#00e6c3"
      sum_of_revenue: "#4285F4"
      sum_of_ad_spend: "#00e6c3"
    series_labels:
      home_prd_sql_runner.ad_spend_sum: AD SPEND
      roas_1: ROAS
      home_prd_sql_runner.revenue_sum: REVENUE
      sum_of_ad_spend: AD SPEND
      sum_of_revenue_2: REVENUE
      sum_of_revenue: REVENUE
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
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
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
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Reporting Period: home_prd_sql_runner.transaction_date
      Channel: home_prd_sql_runner.channel
      Tactic: home_prd_sql_runner.adtypename
      'Advertiser ': home_prd_sql_runner.supplier_name
    row: 3
    col: 0
    width: 24
    height: 8
  - title: Performance by Channel
    name: Performance by Channel
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    type: looker_grid
    fields: [home_prd_sql_runner.channel, sum_of_clicks, home_prd_sql_runner.adtypename,
      sum_of_ad_spend, sum_of_revenue, sum_of_impressions, sum_of_units_sold, home_prd_sql_runner.roas_sum,
      home_prd_sql_runner.ctr_sum]
    sorts: [sum_of_ad_spend desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: home_prd_sql_runner.clicks
      expression: ''
      label: Sum of Clicks
      measure: sum_of_clicks
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: home_prd_sql_runner.ad_spend
      expression: ''
      label: Sum of Ad Spend
      measure: sum_of_ad_spend
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: home_prd_sql_runner.revenue
      expression: ''
      label: Sum of Revenue
      measure: sum_of_revenue
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: home_prd_sql_runner.impressions
      expression: ''
      label: Sum of Impressions
      measure: sum_of_impressions
      type: sum
    - _kind_hint: measure
      _type_hint: number
      based_on: home_prd_sql_runner.units_sold
      expression: ''
      label: Sum of Units Sold
      measure: sum_of_units_sold
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
    column_order: ["$$$_row_numbers_$$$", home_prd_sql_runner.channel, home_prd_sql_runner.adtypename,
      sum_of_ad_spend, sum_of_impressions, sum_of_clicks, home_prd_sql_runner.ctr_sum,
      sum_of_units_sold, sum_of_revenue, home_prd_sql_runner.roas_sum]
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      home_prd_sql_runner.channel: Channel
      home_prd_sql_runner.adtypename: Tactics
      sum_of_clicks: Clicks
      sum_of_ad_spend: Spend($)
      sum_of_impressions: Impressions
      sum_of_units_sold: Units Sold
      home_prd_sql_runner.roas_sum: ROAS($)
      home_prd_sql_runner.ctr_sum: CTR(%)
      sum_of_revenue: Revenue($)
    series_cell_visualizations:
      sum_of_clicks:
        is_active: false
    header_background_color: "#9ADBE8"
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
    listen:
      Reporting Period: home_prd_sql_runner.transaction_date
      Channel: home_prd_sql_runner.channel
      Tactic: home_prd_sql_runner.adtypename
      'Advertiser ': home_prd_sql_runner.supplier_name
    row: 11
    col: 0
    width: 24
    height: 5
  filters:
  - name: Reporting Period
    title: Reporting Period
    type: field_filter
    default_value: 2024/10/01 to 2024/10/29
    allow_multiple_values: true
    required: false
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    listens_to_filters: []
    field: home_prd_sql_runner.transaction_date
  - name: Channel
    title: Channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    listens_to_filters: ['Advertiser ', Reporting Period, Tactic]
    field: home_prd_sql_runner.channel
  - name: Tactic
    title: Tactic
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options: []
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    listens_to_filters: ['Advertiser ', Reporting Period, Channel]
    field: home_prd_sql_runner.adtypename
  - name: 'Advertiser '
    title: 'Advertiser '
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options: []
    model: home_prd_sql_runner
    explore: home_prd_sql_runner
    listens_to_filters: [Reporting Period, Channel, Tactic]
    field: home_prd_sql_runner.supplier_name

- dashboard: simple_test_db
  title: simple test DB
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: MAwdCd3kaTF4jnsq7jnEnJ
  elements:
  - title: simple test DB
    name: simple test DB
    model: rmn_accelerator_project
    explore: sales_transaction
    type: looker_grid
    fields: [sales_transaction.channel_id, sales_transaction.placement_id, sales_transaction.product_id,
      sales_transaction.transaction_quantity, sales_transaction.transaction_month,
      sales_transaction.transaction_quarter, sales_transaction.transaction_year, sales_transaction.total_transaction_amount,
      sales_transaction.count, sales_transaction.transaction_date]
    filters: {}
    sorts: [sales_transaction.transaction_date desc]
    limit: 500
    column_limit: 50
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    minimum_column_width: 75
    defaults_version: 1
    series_column_widths:
      sales_transaction.count: 76
    listen:
      Transaction Month: sales_transaction.transaction_month
      Transaction Quarter: sales_transaction.transaction_quarter
      Transaction Year: sales_transaction.transaction_year
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Transaction Month
    title: Transaction Month
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: rmn_accelerator_project
    explore: sales_transaction
    listens_to_filters: []
    field: sales_transaction.transaction_month
  - name: Transaction Year
    title: Transaction Year
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: rmn_accelerator_project
    explore: sales_transaction
    listens_to_filters: []
    field: sales_transaction.transaction_year
  - name: Transaction Quarter
    title: Transaction Quarter
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: rmn_accelerator_project
    explore: sales_transaction
    listens_to_filters: []
    field: sales_transaction.transaction_quarter


- dashboard: 01__satsipari_zet_dashboard
  title: 01 - Satış&Sipariş Özet Dashboard
  layout: newspaperr
  preferred_viewer: dashboards-next
  description: ''
  filters_bar_collapsed: true
  preferred_slug: sUKtwj3tWfRksKc8acnp1I
  elements:
  - name: 01 - Toplam Satış (Bu Ay)
    title: 01 - Toplam Satış (Bu Ay)
    model: eren_poc
    explore: order_data
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [net_amount_july_2023, net_amount_june_2023]
    limit: 100
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Net Amount (July 2023)
      value_format:
      value_format_name:
      based_on: order_data.net_amount
      _kind_hint: measure
      measure: net_amount_july_2023
      type: sum
      _type_hint: number
      filters:
        order_data.order_date_month: 2023-07
    - category: measure
      expression:
      label: Net Amount (June 2023)
      value_format:
      value_format_name:
      based_on: order_data.net_amount
      _kind_hint: measure
      measure: net_amount_june_2023
      type: sum
      _type_hint: number
      filters:
        order_data.order_date_month: 2023-06
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '16'
    orientation: auto
    style_net_amount_july_2023: "#3A4245"
    show_title_net_amount_july_2023: true
    title_override_net_amount_july_2023: Toplam Satış (Bu Ay)
    title_placement_net_amount_july_2023: above
    value_format_net_amount_july_2023: 0.0,, " M"
    show_comparison_net_amount_june_2023: true
    comparison_style_net_amount_june_2023: percentage_change
    comparison_show_label_net_amount_june_2023: true
    pos_is_bad_net_amount_june_2023: false
    comparison_label_net_amount_june_2023: Geçen Aya Göre Siparişler
    comparison_label_placement_net_amount_june_2023: below
    show_title_net_amount_june_2023: false
    value_format_net_amount_june_2023: 0.0,, " M"
    style_net_amount_this_month: "#3A4245"
    show_title_net_amount_this_month: true
    title_override_net_amount_this_month: Toplam Satış (Bu Ay)
    title_placement_net_amount_this_month: above
    value_format_net_amount_this_month: 0.0,, " M"
    show_comparison_net_amount_prev_month: true
    comparison_style_net_amount_prev_month: percentage_change
    comparison_show_label_net_amount_prev_month: true
    comparison_label_net_amount_prev_month: Geçen Aya Göre Satışlar
    style_net_amount_prev_month: "#3A4245"
    show_title_net_amount_prev_month: true
    title_placement_net_amount_prev_month: above
    value_format_net_amount_prev_month: ''
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Toplam Satış
    value_format: 0.0,, " M"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    defaults_version: 0
    hidden_pivots: {}
    title_hidden: true
    listen:
      Brand: order_data.brand
    row: 0
    col: 0
    width: 6
    height: 4
  - name: 03 - Toplam Satış (Geçen Ay)
    title: 03 - Toplam Satış (Geçen Ay)
    model: eren_poc
    explore: order_data
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [order_data.net_amount]
    filters:
      order_data.order_date_date: 2023-06
    limit: 100
    column_limit: 50
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '16'
    show_title_order_data.net_amount: true
    title_override_order_data.net_amount: Toplam Satış Tutarı (Geçen Ay)
    title_placement_order_data.net_amount: above
    value_format_order_data.net_amount: 0.0,, " M"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Toplam Satış
    value_format: 0.0,, " M"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 0
    title_hidden: true
    listen:
      Brand: order_data.brand
    row: 0
    col: 12
    width: 6
    height: 4
  - name: 02 - Toplam Sipariş (Bu Ay)
    title: 02 - Toplam Sipariş (Bu Ay)
    model: eren_poc
    explore: order_data
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [toplam_siparis_temmuz_2023, toplam_siparis_haziran_2023]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Toplam Sipariş (Temmuz 2023)
      value_format:
      value_format_name:
      based_on: order_data.order_item_count
      _kind_hint: measure
      measure: toplam_siparis_temmuz_2023
      type: sum
      _type_hint: number
      filters:
        order_data.order_date_month: 2023-07
    - category: measure
      expression:
      label: Toplam Sipariş (Haziran 2023)
      value_format:
      value_format_name:
      based_on: order_data.order_item_count
      _kind_hint: measure
      measure: toplam_siparis_haziran_2023
      type: sum
      _type_hint: number
      filters:
        order_data.order_date_month: 2023-06
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: '16'
    orientation: auto
    style_toplam_siparis_temmuz_2023: "#3A4245"
    show_title_toplam_siparis_temmuz_2023: true
    title_override_toplam_siparis_temmuz_2023: Toplam Sipariş (Bu Ay)
    title_placement_toplam_siparis_temmuz_2023: above
    value_format_toplam_siparis_temmuz_2023: ''
    show_comparison_toplam_siparis_haziran_2023: true
    comparison_style_toplam_siparis_haziran_2023: percentage_change
    comparison_show_label_toplam_siparis_haziran_2023: true
    pos_is_bad_toplam_siparis_haziran_2023: false
    comparison_label_toplam_siparis_haziran_2023: Geçen Aya Göre Siparişler
    comparison_label_placement_toplam_siparis_haziran_2023: below
    style_toplam_siparis_haziran_2023: "#3A4245"
    show_title_toplam_siparis_haziran_2023: true
    title_placement_toplam_siparis_haziran_2023: above
    value_format_toplam_siparis_haziran_2023: ''
    style_toplam_siparis_bu_ay: "#3A4245"
    show_title_toplam_siparis_bu_ay: false
    title_placement_toplam_siparis_bu_ay: above
    value_format_toplam_siparis_bu_ay: 0.0,, " M"
    show_comparison_toplam_siparis_gecen_ay: true
    comparison_style_toplam_siparis_gecen_ay: percentage_change
    comparison_show_label_toplam_siparis_gecen_ay: true
    pos_is_bad_toplam_siparis_gecen_ay: false
    comparison_label_toplam_siparis_gecen_ay: Geçen Aya Göre Siparişler
    comparison_label_placement_toplam_siparis_gecen_ay: below
    style_toplam_siparis_gecen_ay: "#3A4245"
    show_title_toplam_siparis_gecen_ay: true
    title_placement_toplam_siparis_gecen_ay: above
    value_format_toplam_siparis_gecen_ay: ''
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Sipariş Adedi
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    defaults_version: 0
    hidden_pivots: {}
    title_hidden: true
    listen:
      Brand: order_data.brand
    row: 0
    col: 6
    width: 6
    height: 4
  - name: 04 - Toplam Sipariş (Geçen Ay)
    title: 04 - Toplam Sipariş (Geçen Ay)
    model: eren_poc
    explore: order_data
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [toplam_siparis_gecen_ay]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Toplam Sipariş (Geçen Ay)
      value_format:
      value_format_name:
      based_on: order_data.order_item_count
      _kind_hint: measure
      measure: toplam_siparis_gecen_ay
      type: sum
      _type_hint: number
      filters:
        order_data.order_date_month: 2023-06
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    font_size_main: '16'
    orientation: auto
    style_toplam_siparis_gecen_ay: "#3A4245"
    show_title_toplam_siparis_gecen_ay: true
    title_override_toplam_siparis_gecen_ay: Toplam Sipariş Adedi (Geçen Ay)
    title_placement_toplam_siparis_gecen_ay: above
    value_format_toplam_siparis_gecen_ay: ''
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Sipariş Adedi
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
    show_null_points: true
    interpolation: linear
    defaults_version: 0
    hidden_pivots: {}
    title_hidden: true
    listen:
      Brand: order_data.brand
    row: 0
    col: 18
    width: 6
    height: 4
  - name: Aylık Satışlar (Forecast)
    title: Aylık Satışlar (Forecast)
    model: eren_poc
    explore: order_data
    type: looker_line
    fields: [order_data.order_date_month, order_data.net_amount]
    fill_fields: [order_data.order_date_month]
    sorts: [order_data.order_date_month desc]
    limit: 36
    column_limit: 50
    query_timezone: UTC
    analysis_config:
      forecasting:
      - confidence_interval: 0.95
        field_name: order_data.net_amount
        forecast_n: 6
        forecast_interval: month
        seasonality: 4
    x_axis_gridlines: true
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: order_data.net_amount,
            id: order_data.net_amount, name: Net Amount}], showLabels: false, showValues: true,
        valueFormat: '0,, " M"', unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    label_value_format: 0.0,, " M"
    label_color: [black]
    defaults_version: 1
    listen:
      Brand: order_data.brand
    row: 4
    col: 0
    width: 18
    height: 7
  - name: Status Bazlı Satışlar (Bu Yıl)
    title: Status Bazlı Satışlar (Bu Yıl)
    model: eren_poc
    explore: order_data
    type: looker_pie
    fields: [order_data.order_date_year, order_data.order_status, order_data.net_amount]
    filters:
      order_data.order_date_year: '2023'
    sorts: [order_data.net_amount desc 0]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    series_colors:
      Teslim Edildi: "#1A73E8"
      İade edildi: "#F9AB00"
      İptal Edildi: "#EA5D2C"
      Kargolandı: "#7FBACC"
      Hazırlanıyor: "#12B5CB"
      Teslim Edilemedi: "#9334E6"
      Onaylandı: "#079c98"
      Kargolandı ve bilgilendirildi: "#425267"
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
    hidden_fields: [order_data.order_date_year]
    listen:
      Brand: order_data.brand
    row: 4
    col: 18
    width: 6
    height: 7
  - name: Category Bazlı Satışlar (Bu Yıl)
    title: Category Bazlı Satışlar (Bu Yıl)
    model: eren_poc
    explore: order_data
    type: looker_grid
    fields: [order_data.kategori, order_data.net_amount]
    filters:
      order_data.order_date_year: '2023'
    sorts: [order_data.net_amount desc]
    limit: 100
    column_limit: 50
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      order_data.net_amount: Toplam Satış
      order_data.kategori: Kategori
    series_cell_visualizations:
      order_data.net_amount:
        is_active: true
        palette:
          palette_id: c665e7f5-224e-0dd3-2dd6-b793d72a3bb1
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
          custom_colors:
          - "#F9AB00"
          - "#12B5CB"
          - "#1A73E8"
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
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: true
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
    listen:
      Brand: order_data.brand
    row: 11
    col: 16
    width: 8
    height: 8
  - name: Brand Bazlı Satışlar (Bu Yıl)
    title: Brand Bazlı Satışlar (Bu Yıl)
    model: eren_poc
    explore: order_data
    type: looker_grid
    fields: [order_data.brand, order_data.net_amount]
    filters:
      order_data.order_date_date: '2023'
    sorts: [order_data.net_amount desc 0]
    limit: 100
    column_limit: 50
    query_timezone: UTC
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_labels:
      order_data.net_amount: Toplam Satış
    series_cell_visualizations:
      order_data.net_amount:
        is_active: true
        palette:
          palette_id: 0625b0a9-fa6e-2454-8fc5-34e7c1229569
          collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
          custom_colors:
          - "#F9AB00"
          - "#12B5CB"
          - "#1A73E8"
    header_font_color: "#000000"
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
      Brand: order_data.brand
    row: 11
    col: 8
    width: 8
    height: 8
  - name: Channel Bazlı Satış&Sipariş (Bu Yıl)
    title: Channel Bazlı Satış&Sipariş (Bu Yıl)
    model: eren_poc
    explore: order_data
    type: looker_bar
    fields: [order_data.net_amount, order_data.order_item_count, channel]
    filters:
      order_data.order_date_year: '2023'
    sorts: [order_data.net_amount desc 0]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: |
        case(
          when(${order_data.channel}="Fashion Federation UNIFIED","Fashion Federation"),
          when(${order_data.channel}="OCC HepsiBurada","Hepsiburada"),
          when(${order_data.channel}="Sanal Çadır Hepsiburada","Hepsiburada"),
          ${order_data.channel}
        )
      label: Channel
      value_format:
      value_format_name:
      dimension: channel
      _kind_hint: dimension
      _type_hint: string
    query_timezone: UTC
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Sipariş, orientation: top, series: [{axisId: order_data.order_item_count,
            id: order_data.order_item_count, name: Toplam Sipariş}], showLabels: false,
        showValues: false, valueFormat: '0, " K"', unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: Satış, orientation: bottom, series: [
          {axisId: order_data.net_amount, id: order_data.net_amount, name: Toplam
              Satış}], showLabels: false, showValues: false, valueFormat: '0,, " M"',
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    hidden_series: [order_data.order_item_count]
    series_colors:
      order_data.order_item_count: "#F9AB00"
    series_labels:
      order_data.net_amount: Toplam Satış
      order_data.order_item_count: Toplam Sipariş
    label_color: [Black]
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    listen:
      Brand: order_data.brand
    row: 11
    col: 0
    width: 8
    height: 8
  - name: Status Bazlı Satışlar
    title: Status Bazlı Satışlar
    model: eren_poc
    explore: order_data
    type: looker_waterfall
    fields: [status, order_data.net_amount]
    filters:
      order_data.order_date_year: '2023'
    sorts: [net_amount_wf desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: if(${order_data.order_status} = "Kargolandı" OR ${order_data.order_status}="Hazırlanıyor"
        OR ${order_data.order_status}="Teslim Edilemedi" OR ${order_data.order_status}="Onaylandı"
        OR ${order_data.order_status}="Kargolandı ve bilgilendirildi","Diğer",${order_data.order_status})
      label: Status
      value_format:
      value_format_name:
      dimension: status
      _kind_hint: dimension
      _type_hint: string
    - category: table_calculation
      expression: |-
        case(
          when(${status}="İade edildi",${order_data.net_amount}*-1),
          when(${status}="İptal Edildi",${order_data.net_amount}*-1),
          ${order_data.net_amount}
        )
      label: Net Amount WF
      value_format: 0.0,, " M"
      value_format_name: __custom
      _kind_hint: measure
      table_calculation: net_amount_wf
      _type_hint: number
    query_timezone: UTC
    up_color: "#1A73E8"
    down_color: "#f56776"
    total_color: "#8b99a1"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: false
    x_axis_scale: auto
    show_y_axis_labels: false
    show_y_axis_ticks: false
    y_axis_gridlines: true
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: e34425a5-3228-4f76-b45d-2e7cd13a6766
      options:
        steps: 5
    label_color: [black]
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    hidden_fields: [order_data.net_amount]
    listen:
      Brand: order_data.brand
    row: 29
    col: 15
    width: 9
    height: 9
  - name: Günlük Bazda Satışlar
    title: Günlük Bazda Satışlar
    model: eren_poc
    explore: order_data
    type: marketplace_viz_calendar_heatmap::calendar_heatmap-marketplace
    fields: [order_data.order_date_date, order_data.net_amount]
    fill_fields: [order_data.order_date_date]
    sorts: [order_data.order_date_date desc]
    limit: 600
    column_limit: 50
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    color_picker: ["#E7AF75", "#E5C877", "#E2DF78", "#CADF79", "#B1DB7A", "#9AD97B",
      "#85D67C", "#2ab299"]
    formatting_override: ''
    rounded: false
    outline: month
    label_year: 'true'
    label_month: 'false'
    viz_show_legend: 'true'
    focus_tooltip: 'true'
    outline_weight: 1
    cell_color: "#fff"
    outline_color: "#000"
    cell_reducer: 1
    axis_label_color: "#282828"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen:
      Brand: order_data.brand
    row: 29
    col: 0
    width: 15
    height: 9
  - title: Channel&Platform Bazlı Satışlar
    name: Channel&Platform Bazlı Satışlar
    model: eren_poc
    explore: order_data
    type: marketplace_viz_sankey::sankey-marketplace
    fields: [order_data.net_amount, channel, order_data.platform]
    sorts: [order_data.net_amount desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: |
        case(
          when(${order_data.channel}="Fashion Federation UNIFIED","Fashion Federation"),
          when(${order_data.channel}="OCC HepsiBurada","Hepsiburada"),
          when(${order_data.channel}="Sanal Çadır Hepsiburada","Hepsiburada"),
          ${order_data.channel}
        )
      label: Channel
      value_format:
      value_format_name:
      dimension: channel
      _kind_hint: dimension
      _type_hint: string
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    show_null_points: false
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
    defaults_version: 0
    listen:
      Brand: order_data.brand
    row: 19
    col: 15
    width: 9
    height: 10
  - name: Şehir Bazında Siparişler
    title: Şehir Bazında Siparişler
    model: eren_poc
    explore: order_data
    type: looker_google_map
    fields: [order_data.city, d_city.city_lat_long, order_data.order_item_count]
    sorts: [order_data.order_item_count desc]
    limit: 500
    column_limit: 50
    query_timezone: UTC
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: false
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: pixels
    map_marker_proportional_scale_type: log
    map_marker_color_mode: value
    show_legend: true
    map_value_colors: ["#FFA200", "#DEFF00", "#00FF09"]
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 0
    listen:
      Brand: order_data.brand
    row: 19
    col: 0
    width: 15
    height: 10
  filters:
  - name: Brand
    title: Brand
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: eren_poc
    explore: order_data
    listens_to_filters: []
    field: order_data.brand

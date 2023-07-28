# The name of this view in Looker is "Customer Data"
view: customer_data {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `occasion-364007.looker_poc.customer_data` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Ad Soyad" in Explore.

  dimension: ad_soyad {
    type: string
    sql: ${TABLE}.AdSoyad ;;
  }

  dimension: cinsiyet {
    type: string
    sql: ${TABLE}.Cinsiyet ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: dogum_tarihi {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Dogum_Tarihi ;;
  }

  dimension: email_allowed {
    type: yesno
    sql: ${TABLE}.Email_Allowed ;;
  }

  dimension: mail {
    type: string
    sql: ${TABLE}.Mail ;;
  }

  dimension: membership_buyer_type {
    type: string
    sql: ${TABLE}.Membership_Buyer_Type ;;
  }

  dimension: membership_type {
    type: string
    sql: ${TABLE}.Membership_Type ;;
  }

  dimension_group: registered {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.RegisteredDate ;;
  }

  dimension_group: registered_date {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    datatype: datetime
    sql: ${TABLE}.RegisteredDateTime ;;
  }

  dimension: sms_allowed {
    type: yesno
    sql: ${TABLE}.SMS_Allowed ;;
  }

  dimension_group: son_giris_tarihi {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Son_Giris_Tarihi ;;
  }

  dimension: son_siparis_ay {
    type: string
    sql: ${TABLE}.Son_Siparis_Ay ;;
  }

  dimension: son_siparis_gun {
    type: string
    sql: ${TABLE}.Son_Siparis_Gun ;;
  }

  dimension: son_siparis_tarihi {
    type: string
    sql: concat (${son_siparis_gun}, ".", ${son_siparis_ay},".",${son_siparis_yili});;
  }

  dimension: son_siparis_il {
    type: string
    sql: ${TABLE}.Son_Siparis_Il ;;
  }

  measure: son_siparis_tutari {
    type: sum
    sql: ${TABLE}.Son_Siparis_Tutari ;;
  }

  measure: son_siparis_urun_adedi {
    type: sum
    sql: ${TABLE}.Son_Siparis_Urun_Adedi ;;
  }

  dimension: son_siparis_yili {
    type: string
    sql: ${TABLE}.Son_Siparis_Yili ;;
  }

  dimension: tel {
    type: string
    sql: ${TABLE}.Tel ;;
  }

  measure: toplam_alinan_urun_adedi {
    type: sum
    sql: ${TABLE}.Toplam_Alinan_Urun_Adedi ;;
  }

  measure: toplam_indirim_tutari {
    type: sum
    sql: ${TABLE}.Toplam_Indirim_Tutari ;;
    value_format: "#,##0.00"
  }

  measure: toplam_sepet_ortalamasi {
    type: sum
    sql: ${TABLE}.Toplam_Sepet_Ortalamasi ;;
    value_format: "#,##0.00"
  }

  measure: toplam_siparis_adedi {
    type: sum
    sql: ${TABLE}.Toplam_Siparis_Adedi ;;
  }

  measure: toplam_siparis_tutari {
    type: sum
    sql: ${TABLE}.Toplam_Siparis_Tutari ;;
    value_format: "#,##0.00"
  }

  measure: toplam_urun_basina_odenen_ortalama_tutar {
    type: sum
    sql: ${TABLE}.Toplam_Urun_Basina_Odenen_Ortalama_Tutar ;;
    value_format: "#,##0.00"
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}.UserID ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}.UserType ;;
  }
  measure: count {
    type: count
  }
}

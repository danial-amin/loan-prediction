view: credit_full {
  sql_table_name: `loans.CreditFull`
    ;;

  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }

  dimension: all_devices_count {
    type: number
    sql: ${TABLE}.all_devices_count ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}.amount ;;
  }

  dimension: bank_sms_count {
    type: number
    sql: ${TABLE}.bank_sms_count ;;
  }

  dimension: cc_american_express_count {
    type: number
    sql: ${TABLE}.cc_american_express_count ;;
  }

  dimension: current_dpd {
    type: number
    sql: ${TABLE}.current_dpd ;;
  }

  dimension: emi_amount {
    type: number
    sql: ${TABLE}.emi_amount ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: is_non_starter {
    type: number
    sql: ${TABLE}.is_non_starter ;;
  }

  dimension: line_amount {
    type: number
    sql: ${TABLE}.line_amount ;;
  }

  dimension: max_dpd {
    type: number
    sql: ${TABLE}.max_dpd ;;
  }

  dimension: no_of_missed_installments {
    type: number
    sql: ${TABLE}.no_of_missed_installments ;;
  }

  dimension: no_of_paid_installments {
    type: number
    sql: ${TABLE}.no_of_paid_installments ;;
  }

  dimension: pca1 {
    type: number
    sql: ${TABLE}.PCA1 ;;
  }

  dimension: pca10 {
    type: number
    sql: ${TABLE}.PCA10 ;;
  }

  dimension: pca2 {
    type: number
    sql: ${TABLE}.PCA2 ;;
  }

  dimension: pca3 {
    type: number
    sql: ${TABLE}.PCA3 ;;
  }

  dimension: pca4 {
    type: number
    sql: ${TABLE}.PCA4 ;;
  }

  dimension: pca5 {
    type: number
    sql: ${TABLE}.PCA5 ;;
  }

  dimension: pca6 {
    type: number
    sql: ${TABLE}.PCA6 ;;
  }

  dimension: pca7 {
    type: number
    sql: ${TABLE}.PCA7 ;;
  }

  dimension: pca8 {
    type: number
    sql: ${TABLE}.PCA8 ;;
  }

  dimension: pca9 {
    type: number
    sql: ${TABLE}.PCA9 ;;
  }

  dimension: period {
    type: number
    sql: ${TABLE}.period ;;
  }

  dimension: product_type {
    type: string
    sql: ${TABLE}.product_type ;;
  }

  dimension: reason_flexi {
    type: string
    sql: ${TABLE}.reason_flexi ;;
  }

  dimension: reason_premium {
    type: string
    sql: ${TABLE}.reason_premium ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}

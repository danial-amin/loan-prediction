view: prediction {
  parameter: EMIAmount{type: number}
  parameter: LineAmount{type: number}
  parameter: MaxDPD{type: number}
  parameter: PaidInstallments{type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `card-loans.loans.GBModel1`,
    (SELECT {% parameter EMIAmount %} AS emi_amount,
            {% parameter LineAmount %} AS line_amount,
            {% parameter MaxDPD %} AS max_dpd,
            {% parameter PaidInstallments %} AS no_of_paid_installments));;
  }
  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_amount ;;
  }

  dimension: emi_amount {
    type: number
    sql: ${TABLE}.emi_amount ;;
  }
  dimension: line_amount {
    type: number
    sql: ${TABLE}.line_amount ;;
  }
  dimension: max_dpd {
    type: number
    sql: ${TABLE}.max_dpd ;;
  }
  dimension: no_of_paid_installments {
    type: number
    sql: ${TABLE}.no_of_paid_installments ;;
  }
}

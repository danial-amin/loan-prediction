view: prediction {
  parameter: EMIAmount{type: number}
  parameter: LineAmount{type: number}
  parameter: MaxDPD{type: number}
  parameter: CustomerAge{type: number}

  derived_table: {
    sql:
    SELECT * FROM ML.PREDICT(MODEL `card-loans.loans.GBModel1`,
    (SELECT {% parameter EMIAmount %} AS emi_amount,
            {% parameter LineAmount %} AS line_amount,
            {% parameter MaxDPD %} AS max_dpd,
            {% parameter CustomerAge %} AS age))
            UNION ALL
    SELECT predicted_period as predicted_amount,emi_amount,line_amount,age,max_dpd,period as amount
    FROM ML.PREDICT(MODEL `card-loans.loans.GBModel2`,
    (SELECT {% parameter EMIAmount %} AS emi_amount,
            {% parameter LineAmount %} AS line_amount,
            {% parameter MaxDPD %} AS max_dpd,
            {% parameter CustomerAge %} AS age));;
  }
  dimension: predict_prob {
    type: number
    sql: ${TABLE}.predicted_amount ;;
  }
  dimension: predict_prob1 {
    type: number
    sql: ${TABLE}.predicted_period ;;
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
  dimension: age {
    type: number
    sql: ${TABLE}.age ;;
  }
}

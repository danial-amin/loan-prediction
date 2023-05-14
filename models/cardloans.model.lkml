connection: "card-loans"

# include all the views
include: "/views/**/*.view"

datagroup: cardloans_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cardloans_default_datagroup

explore: credit_model {}

explore: credit_full {}

explore: prediction {}

explore: featureimportance {}

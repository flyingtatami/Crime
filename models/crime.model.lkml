connection: "yutaro_crime"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: crime_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: crime_default_datagroup

explore: crime {}


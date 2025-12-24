# The name of this view in Looker is "Newly Created Daily Wallets"
view: newly_created_daily_wallets {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Solana.Newly Created Daily Wallets` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: block {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.block_date ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Count of New Wallets" in Explore.

  dimension: count_of_new_wallets {
    type: number
    sql: ${TABLE}.count_of_new_wallets ;;
  }
  measure: count {
    type: count
  }
}

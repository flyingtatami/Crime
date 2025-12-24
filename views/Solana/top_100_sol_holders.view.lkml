# The name of this view in Looker is "Top 100 Sol Holders"
view: top_100_sol_holders {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Solana.top_100_sol_holders` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Pubkey" in Explore.

  dimension: pubkey {
    type: string
    sql: ${TABLE}.pubkey ;;
  }

  dimension: sol {
    type: number
    sql: ${TABLE}.SOL ;;
  }
  measure: count {
    type: count
  }
}

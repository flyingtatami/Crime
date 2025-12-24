# The name of this view in Looker is "Nft Mints"
view: nft_mints {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Solana.NFT Mints` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Creator Address" in Explore.

  dimension: creator_address {
    type: string
    sql: ${TABLE}.creator_address ;;
  }

  dimension: mint_count {
    type: number
    sql: ${TABLE}.mint_count ;;
  }
  measure: count {
    type: count
  }
}

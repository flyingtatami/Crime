# The name of this view in Looker is "Polygon Transactions"
view: polygon_transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Polygon.Polygon_Transactions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Block Hash" in Explore.

  dimension: block_hash {
    type: string
    sql: ${TABLE}.block_hash ;;
  }

  dimension: block_number {
    type: number
    sql: ${TABLE}.block_number ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: block_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.block_timestamp ;;
  }

  dimension: from_address {
    type: string
    sql: ${TABLE}.from_address ;;
  }

  dimension: gas {
    type: number
    sql: ${TABLE}.gas ;;
  }

  dimension: gas_price {
    type: number
    sql: ${TABLE}.gas_price ;;
  }

  dimension: hash {
    type: string
    sql: ${TABLE}.`hash` ;;
  }

  dimension: input {
    type: string
    sql: ${TABLE}.input ;;
  }

  dimension: max_fee_per_gas {
    type: number
    sql: ${TABLE}.max_fee_per_gas ;;
  }

  dimension: max_priority_fee_per_gas {
    type: number
    sql: ${TABLE}.max_priority_fee_per_gas ;;
  }

  dimension: nonce {
    type: number
    sql: ${TABLE}.nonce ;;
  }

  dimension: receipt_contract_address {
    type: string
    sql: ${TABLE}.receipt_contract_address ;;
  }

  dimension: receipt_cumulative_gas_used {
    type: number
    sql: ${TABLE}.receipt_cumulative_gas_used ;;
  }

  dimension: receipt_effective_gas_price {
    type: number
    sql: ${TABLE}.receipt_effective_gas_price ;;
  }

  dimension: receipt_gas_used {
    type: number
    sql: ${TABLE}.receipt_gas_used ;;
  }

  dimension: receipt_root {
    type: string
    sql: ${TABLE}.receipt_root ;;
  }

  dimension: receipt_status {
    type: number
    sql: ${TABLE}.receipt_status ;;
  }

  dimension: to_address {
    type: string
    sql: ${TABLE}.to_address ;;
  }

  dimension: transaction_index {
    type: number
    sql: ${TABLE}.transaction_index ;;
  }

  dimension: transaction_type {
    type: number
    sql: ${TABLE}.transaction_type ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }
  measure: count {
    type: count
  }
}

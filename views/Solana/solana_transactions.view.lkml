# The name of this view in Looker is "Solana Transactions"
view: solana_transactions {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Solana.Solana_Transactions` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: accounts {
    hidden: yes
    sql: ${TABLE}.accounts ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Balance Changes" in Explore.

  dimension: balance_changes {
    hidden: yes
    sql: ${TABLE}.balance_changes ;;
  }

  dimension: block_hash {
    type: string
    sql: ${TABLE}.block_hash ;;
  }

  dimension: block_slot {
    type: number
    sql: ${TABLE}.block_slot ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: block_timestamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.block_timestamp ;;
  }

  dimension: compute_units_consumed {
    type: number
    sql: ${TABLE}.compute_units_consumed ;;
  }

  dimension: err {
    type: string
    sql: ${TABLE}.err ;;
  }

  dimension: fee {
    type: number
    sql: ${TABLE}.fee ;;
  }

  dimension: index {
    type: number
    sql: ${TABLE}.index ;;
  }

  dimension: log_messages {
    hidden: yes
    sql: ${TABLE}.log_messages ;;
  }

  dimension: post_token_balances {
    hidden: yes
    sql: ${TABLE}.post_token_balances ;;
  }

  dimension: pre_token_balances {
    hidden: yes
    sql: ${TABLE}.pre_token_balances ;;
  }

  dimension: recent_block_hash {
    type: string
    sql: ${TABLE}.recent_block_hash ;;
  }

  dimension: signature {
    type: string
    sql: ${TABLE}.signature ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  measure: count {
    type: count
  }
}

# The name of this view in Looker is "Solana Transactions Accounts"
view: solana_transactions__accounts {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Pubkey" in Explore.

  dimension: pubkey {
    type: string
    sql: pubkey ;;
  }

  dimension: signer {
    type: yesno
    sql: signer ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: solana_transactions__accounts {
    type: string
    hidden: yes
    sql: solana_transactions__accounts ;;
  }

  dimension: writable {
    type: yesno
    sql: writable ;;
  }
}

# The name of this view in Looker is "Solana Transactions Log Messages"
view: solana_transactions__log_messages {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Solana Transactions Log Messages" in Explore.

  dimension: solana_transactions__log_messages {
    type: string
    sql: solana_transactions__log_messages ;;
  }
}

# The name of this view in Looker is "Solana Transactions Balance Changes"
view: solana_transactions__balance_changes {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account" in Explore.

  dimension: account {
    type: string
    sql: account ;;
  }

  dimension: after {
    type: number
    sql: after ;;
  }

  dimension: before {
    type: number
    sql: before ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: solana_transactions__balance_changes {
    type: string
    hidden: yes
    sql: solana_transactions__balance_changes ;;
  }
}

# The name of this view in Looker is "Solana Transactions Pre Token Balances"
view: solana_transactions__pre_token_balances {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account Index" in Explore.

  dimension: account_index {
    type: number
    sql: account_index ;;
  }

  dimension: amount {
    type: number
    sql: amount ;;
  }

  dimension: decimals {
    type: number
    sql: decimals ;;
  }

  dimension: mint {
    type: string
    sql: mint ;;
  }

  dimension: owner {
    type: string
    sql: owner ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: solana_transactions__pre_token_balances {
    type: string
    hidden: yes
    sql: solana_transactions__pre_token_balances ;;
  }
}

# The name of this view in Looker is "Solana Transactions Post Token Balances"
view: solana_transactions__post_token_balances {

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account Index" in Explore.

  dimension: account_index {
    type: number
    sql: account_index ;;
  }

  dimension: amount {
    type: number
    sql: amount ;;
  }

  dimension: decimals {
    type: number
    sql: decimals ;;
  }

  dimension: mint {
    type: string
    sql: mint ;;
  }

  dimension: owner {
    type: string
    sql: owner ;;
  }
  # This field is hidden, which means it will not show up in Explore.
  # If you want this field to be displayed, remove "hidden: yes".

  dimension: solana_transactions__post_token_balances {
    type: string
    hidden: yes
    sql: solana_transactions__post_token_balances ;;
  }
}

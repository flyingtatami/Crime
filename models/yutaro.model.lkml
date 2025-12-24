# Define the database connection to be used for this model.
connection: "yutaro"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: yutaro_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: yutaro_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Yutaro"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: fundraiser_in_usd {}

explore: liquor_info {}

explore: all {}

explore: polygon_transactions {}

explore: solana_transactions {
    join: solana_transactions__accounts {
      view_label: "Solana Transactions: Accounts"
      sql: LEFT JOIN UNNEST(${solana_transactions.accounts}) as solana_transactions__accounts ;;
      relationship: one_to_many
    }
    join: solana_transactions__log_messages {
      view_label: "Solana Transactions: Log Messages"
      sql: LEFT JOIN UNNEST(${solana_transactions.log_messages}) as solana_transactions__log_messages ;;
      relationship: one_to_many
    }
    join: solana_transactions__balance_changes {
      view_label: "Solana Transactions: Balance Changes"
      sql: LEFT JOIN UNNEST(${solana_transactions.balance_changes}) as solana_transactions__balance_changes ;;
      relationship: one_to_many
    }
    join: solana_transactions__pre_token_balances {
      view_label: "Solana Transactions: Pre Token Balances"
      sql: LEFT JOIN UNNEST(${solana_transactions.pre_token_balances}) as solana_transactions__pre_token_balances ;;
      relationship: one_to_many
    }
    join: solana_transactions__post_token_balances {
      view_label: "Solana Transactions: Post Token Balances"
      sql: LEFT JOIN UNNEST(${solana_transactions.post_token_balances}) as solana_transactions__post_token_balances ;;
      relationship: one_to_many
    }
}

explore: top_100_sol_holders {}

explore: nft_mints {}

explore: newly_created_daily_wallets {}


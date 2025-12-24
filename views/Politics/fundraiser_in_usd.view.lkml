# The name of this view in Looker is "Fundraiser In USD"
view: fundraiser_in_usd {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `Politics.Fundraiser in USD` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Advertiser ID" in Explore.

  dimension: advertiser_id {
    type: string
    sql: ${TABLE}.advertiser_id ;;
  }

  dimension: advertiser_name {
    type: string
    sql: ${TABLE}.advertiser_name ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension: country_subdivision_primary {
    type: string
    sql: ${TABLE}.country_subdivision_primary ;;
  }

  dimension: spend_ars {
    type: number
    sql: ${TABLE}.spend_ars ;;
  }

  dimension: spend_aud {
    type: number
    sql: ${TABLE}.spend_aud ;;
  }

  dimension: spend_bgn {
    type: number
    sql: ${TABLE}.spend_bgn ;;
  }

  dimension: spend_brl {
    type: number
    sql: ${TABLE}.spend_brl ;;
  }

  dimension: spend_clp {
    type: number
    sql: ${TABLE}.spend_clp ;;
  }

  dimension: spend_czk {
    type: number
    sql: ${TABLE}.spend_czk ;;
  }

  dimension: spend_dkk {
    type: number
    sql: ${TABLE}.spend_dkk ;;
  }

  dimension: spend_eur {
    type: number
    sql: ${TABLE}.spend_eur ;;
  }

  dimension: spend_gbp {
    type: number
    sql: ${TABLE}.spend_gbp ;;
  }

  dimension: spend_huf {
    type: number
    sql: ${TABLE}.spend_huf ;;
  }

  dimension: spend_ils {
    type: number
    sql: ${TABLE}.spend_ils ;;
  }

  dimension: spend_inr {
    type: number
    sql: ${TABLE}.spend_inr ;;
  }

  dimension: spend_mxn {
    type: number
    sql: ${TABLE}.spend_mxn ;;
  }

  dimension: spend_nzd {
    type: number
    sql: ${TABLE}.spend_nzd ;;
  }

  dimension: spend_pln {
    type: number
    sql: ${TABLE}.spend_pln ;;
  }

  dimension: spend_ron {
    type: number
    sql: ${TABLE}.spend_ron ;;
  }

  dimension: spend_sek {
    type: number
    sql: ${TABLE}.spend_sek ;;
  }

  dimension: spend_twd {
    type: number
    sql: ${TABLE}.spend_twd ;;
  }

  dimension: spend_usd {
    type: number
    sql: ${TABLE}.spend_usd ;;
  }

  dimension: spend_zar {
    type: number
    sql: ${TABLE}.spend_zar ;;
  }
  measure: count {
    type: count
    drill_fields: [advertiser_name]
  }
}

# The name of this view in Looker is "Looker List"
view: looker_list {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `dayanepadilha-477-202302281139.prototipando_looker.looker_list` ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Cargo" in Explore.

  dimension: cargo {
    type: string
    sql: ${TABLE}.cargo ;;
  }

  dimension: checkparceiro {
    type: string
    sql: ${TABLE}.checkparceiro ;;
  }

  dimension: contacts {
    type: string
    sql: ${TABLE}.contacts ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: create {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.create_time ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}.email ;;
  }

  dimension: empresa {
    type: string
    sql: ${TABLE}.empresa ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: guest_type {
    type: string
    sql: ${TABLE}.guest_type ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: full_name {
    type: string
    sql: concat(${first_name},'', ${last_name}) ;;
  }

  dimension: marketing_opt_in {
    type: string
    sql: ${TABLE}.marketing_opt_in ;;
  }

  dimension: personal_code {
    type: string
    sql: ${TABLE}.personal_code ;;
  }

  dimension: region_code {
    type: string
    sql: ${TABLE}.region_code ;;
  }

  dimension: registration_code {
    type: string
    sql: ${TABLE}.registration_code ;;
  }

  dimension_group: registration {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.registration_time ;;
  }

  dimension: rsvp_status {
    type: string
    sql: ${TABLE}.rsvp_status ;;
  }

  dimension: source {
    type: string
    sql: ${TABLE}.source ;;
  }

  dimension: subscribers {
    type: string
    sql: ${TABLE}.subscribers ;;
  }

  dimension_group: update {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.update_time ;;
  }

  dimension: uso_de_imagem {
    type: string
    sql: ${TABLE}.uso_de_imagem ;;
  }

  dimension: vaipresencial {
    type: string
    sql: ${TABLE}.vaipresencial ;;
  }
  measure: count {
    type: count
    drill_fields: [last_name, first_name]
  }

}

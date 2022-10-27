# The name of this view in Looker is "Estimatelines 01 2020"
view: estimatelines_01_2020 {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `EstimateLines.Estimatelines_01_2020`
    ;;
  drill_fields: [id]
  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.Id ;;
  }

  # Here's what a typical dimension looks like in LookML.
  # A dimension is a groupable field that can be used to filter query results.
  # This dimension will be called "Car Make" in Explore.

  dimension: car_make {
    type: string
    sql: ${TABLE}.CarMake ;;
  }

  dimension: database_labor_hours {
    type: string
    sql: ${TABLE}.DatabaseLaborHours ;;
  }

  dimension: line_desc {
    type: string
    sql: ${TABLE}.LineDesc ;;
  }

  dimension: line_item_category_code {
    type: string
    sql: ${TABLE}.LineItemCategoryCode ;;
  }

  dimension: line_memo {
    type: string
    sql: ${TABLE}.LineMemo ;;
  }

  dimension: part_price {
    type: string
    sql: ${TABLE}.PartPrice ;;
  }

  dimension: ronumber {
    type: number
    sql: ${TABLE}.RONumber ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_ronumber {
    type: sum
    sql: ${ronumber} ;;
  }

  measure: average_ronumber {
    type: average
    sql: ${ronumber} ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

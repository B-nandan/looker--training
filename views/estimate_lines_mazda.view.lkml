# The name of this view in Looker is "Estimate Lines Mazda"
view: estimate_lines_mazda {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: `EstimateLines.EstimateLines_Mazda`
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
  # This dimension will be called "Adjustment Amt" in Explore.

  dimension: adjustment_amt {
    type: string
    sql: ${TABLE}.AdjustmentAmt ;;
  }

  dimension: adjustment_pct {
    type: string
    sql: ${TABLE}.AdjustmentPct ;;
  }

  dimension: adjustment_type {
    type: string
    sql: ${TABLE}.AdjustmentType ;;
  }

  dimension: alternate_part_ind {
    type: string
    sql: ${TABLE}.AlternatePartInd ;;
  }

  dimension: automated_entry {
    type: string
    sql: ${TABLE}.AutomatedEntry ;;
  }

  dimension: center_id {
    type: number
    sql: ${TABLE}.CenterId ;;
  }

  dimension: certification_type {
    type: string
    sql: ${TABLE}.CertificationType ;;
  }

  dimension: database_labor_hours {
    type: string
    sql: ${TABLE}.DatabaseLaborHours ;;
  }

  dimension: database_labor_type {
    type: string
    sql: ${TABLE}.DatabaseLaborType ;;
  }

  dimension: desc_judgment_ind {
    type: string
    sql: ${TABLE}.DescJudgmentInd ;;
  }

  dimension: estimate_ver_code {
    type: string
    sql: ${TABLE}.EstimateVerCode ;;
  }

  dimension: glass_part_ind {
    type: string
    sql: ${TABLE}.GlassPartInd ;;
  }

  dimension: labor_amt {
    type: string
    sql: ${TABLE}.LaborAmt ;;
  }

  dimension: labor_drilling_ind {
    type: string
    sql: ${TABLE}.LaborDrillingInd ;;
  }

  dimension: labor_hours {
    type: string
    sql: ${TABLE}.LaborHours ;;
  }

  dimension: labor_hours_judgment_ind {
    type: string
    sql: ${TABLE}.LaborHoursJudgmentInd ;;
  }

  dimension: labor_incl_ind {
    type: string
    sql: ${TABLE}.LaborInclInd ;;
  }

  dimension: labor_operation {
    type: string
    sql: ${TABLE}.LaborOperation ;;
  }

  dimension: labor_taxable_ind {
    type: string
    sql: ${TABLE}.LaborTaxableInd ;;
  }

  dimension: labor_type {
    type: string
    sql: ${TABLE}.LaborType ;;
  }

  dimension: labor_type_judgment_ind {
    type: string
    sql: ${TABLE}.LaborTypeJudgmentInd ;;
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

  dimension: line_number {
    type: number
    sql: ${TABLE}.LineNumber ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_line_number {
    type: sum
    sql: ${line_number} ;;
  }

  measure: average_line_number {
    type: average
    sql: ${line_number} ;;
  }

  dimension: manual_line_ind {
    type: string
    sql: ${TABLE}.ManualLineInd ;;
  }

  dimension: message_code {
    type: string
    sql: ${TABLE}.MessageCode ;;
  }

  dimension: non_oempart_desc {
    type: string
    sql: ${TABLE}.NonOEMPartDesc ;;
  }

  dimension: non_oempart_num {
    type: string
    sql: ${TABLE}.NonOEMPartNum ;;
  }

  dimension: non_oempart_selected_ind {
    type: string
    sql: ${TABLE}.NonOEMPartSelectedInd ;;
  }

  dimension: non_oempart_type {
    type: string
    sql: ${TABLE}.NonOEMPartType ;;
  }

  dimension: non_oemsupplier_ref_num {
    type: string
    sql: ${TABLE}.NonOEMSupplierRefNum ;;
  }

  dimension: oempart_num {
    type: string
    sql: ${TABLE}.OEMPartNum ;;
  }

  dimension: other_charges_price {
    type: string
    sql: ${TABLE}.OtherChargesPrice ;;
  }

  dimension: other_charges_price_incl_ind {
    type: string
    sql: ${TABLE}.OtherChargesPriceInclInd ;;
  }

  dimension: other_charges_quantity {
    type: string
    sql: ${TABLE}.OtherChargesQuantity ;;
  }

  dimension: other_charges_type {
    type: string
    sql: ${TABLE}.OtherChargesType ;;
  }

  dimension: other_charges_unit_of_measure {
    type: string
    sql: ${TABLE}.OtherChargesUnitOfMeasure ;;
  }

  dimension: parent_line_num {
    type: string
    sql: ${TABLE}.ParentLineNum ;;
  }

  dimension: part_num {
    type: string
    sql: ${TABLE}.PartNum ;;
  }

  dimension: part_price {
    type: string
    sql: ${TABLE}.PartPrice ;;
  }

  dimension: part_type {
    type: string
    sql: ${TABLE}.PartType ;;
  }

  dimension: price_incl_ind {
    type: string
    sql: ${TABLE}.PriceInclInd ;;
  }

  dimension: price_judgment_ind {
    type: string
    sql: ${TABLE}.PriceJudgmentInd ;;
  }

  dimension: quantity {
    type: string
    sql: ${TABLE}.Quantity ;;
  }

  dimension: refinish_database_labor_hours {
    type: string
    sql: ${TABLE}.RefinishDatabaseLaborHours ;;
  }

  dimension: refinish_labor_amt {
    type: string
    sql: ${TABLE}.RefinishLaborAmt ;;
  }

  dimension: refinish_labor_hours {
    type: string
    sql: ${TABLE}.RefinishLaborHours ;;
  }

  dimension: refinish_labor_hours_judgment_ind {
    type: string
    sql: ${TABLE}.RefinishLaborHoursJudgmentInd ;;
  }

  dimension: refinish_labor_incl_ind {
    type: string
    sql: ${TABLE}.RefinishLaborInclInd ;;
  }

  dimension: refinish_labor_operation {
    type: string
    sql: ${TABLE}.RefinishLaborOperation ;;
  }

  dimension: refinish_labor_type {
    type: string
    sql: ${TABLE}.RefinishLaborType ;;
  }

  dimension: repair_order_id {
    type: number
    sql: ${TABLE}.RepairOrderId ;;
  }

  dimension: ronumber {
    type: number
    sql: ${TABLE}.RONumber ;;
  }

  dimension: sublet_info_part_sublet_ind {
    type: string
    sql: ${TABLE}.SubletInfoPartSubletInd ;;
  }

  dimension: supplement_num {
    type: number
    sql: ${TABLE}.SupplementNum ;;
  }

  dimension: taxable_ind {
    type: string
    sql: ${TABLE}.TaxableInd ;;
  }

  dimension: unique_sequence_num {
    type: string
    sql: ${TABLE}.UniqueSequenceNum ;;
  }

  dimension: unit_part_price {
    type: string
    sql: ${TABLE}.UnitPartPrice ;;
  }

  dimension: vendor_ref_num {
    type: string
    sql: ${TABLE}.VendorRefNum ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}

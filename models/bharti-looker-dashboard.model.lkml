# Define the database connection to be used for this model.
connection: "adas-calibration-dev"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: bharti-looker-dashboard_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bharti-looker-dashboard_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Bharti-looker-dashboard"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: estimate_lines_nissan {}

explore: estimate_lines_general_motors {}

explore: estimate_lines_fiat_chrysler_automobiles {}

explore: estimate_lines_hyundai_kia {}

explore: estimate_lines_honda {}

explore: estimate_lines_ford {}

explore: estimate_lines_sample {}

explore: estimate_lines_mazda {}

explore: estimate_lines_toyota {}

explore: estimate_lines_subaru {}

explore: estimate_lines_volkswagen {}

explore: estimatelines_01_2020_preds {}

explore: estimatelines_01_2020 {}

explore: estimatelines_02_2020_preds {}

explore: estimatelines_02_2020 {}

explore: estimatelines_03_2020 {}

explore: estimatelines_04_2020 {}

explore: estimatelines_04_2020_preds {}

explore: estimatelines_06_2020 {}

explore: estimatelines_03_2020_preds {}

explore: estimatelines_05_2020_preds {}

explore: estimatelines_06_2020_preds {}

explore: estimatelines_05_2020 {}

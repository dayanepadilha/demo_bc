# Define the database connection to be used for this model.
connection: "demo_sura"

include: "/views/*"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: demo_bc_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: demo_bc_default_datagroup

explore: looker_list {
  group_label: "BC"
  view_label: "Looker"
}

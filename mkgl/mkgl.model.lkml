connection: "mkgl_connection"

include: "/views/*.view.lkml"                # include all views in the views/ folder in this project
# include: "/**/*.view.lkml"                 # include all views in this project
# include: "my_dashboard.dashboard.lookml"   # include a LookML dashboard called my_dashboard

# # Select the views that should be a part of this model,
# # and define the joins that connect them together.
#
 explore: order_items {
   join: orders {
     relationship: many_to_one
     sql_on: ${orders.order_id} = ${order_items.order_id} ;;
   }

   join: users {
     relationship: many_to_one
     sql_on: ${users.id} = ${orders.user_id} ;;
   }

  join: products {
    relationship: one_to_many
    sql_on: ${products.id} = ${order_items.product_id} ;;
  }
 }

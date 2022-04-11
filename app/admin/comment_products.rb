ActiveAdmin.register CommentProduct, :as => "Valoraciones" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  actions :index, :show
  permit_params :comment, :star, :product_id

  filter :product_id, label: "Producto"
  filter :comment, label: "Comentario"


  #
  # or
  #
  # permit_params do
  #   permitted = [:comment, :star, :product_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end

ActiveAdmin.register Client, :as => "Clientes" do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  actions :index, :show
  permit_params :name, :email

  filter :client_id, label: "id del cliente"
  filter :name, label: "Nombre del cliente"
  filter :email, label: "Correo electrónico"


  #
  # or
  #
  # permit_params do
  #   permitted = [:comment, :star, :product_id]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end

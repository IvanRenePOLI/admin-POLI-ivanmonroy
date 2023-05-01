ActiveAdmin.register AdminUser, :as => "Usuarios" do
  permit_params :name, :email, :password, :password_confirmation

  index do
    selectable_column
    id_column
    column "Nombre", :name
    column "Correo", :email
    column "Último inicio de sesión", :current_sign_in_at
    column "Cantidad de ingresos", :sign_in_count
    column "Fecha creación", :created_at
    actions
  end


  filter :name, label: "Nombre"
  filter :email, label: "Correo electronico"

  form do |f|
    f.inputs do
      f.input :name, label: "Nombre"
      f.input :email, label: "Correo electrónico"
      f.input :password, label: "Contraseña"
      f.input :password_confirmation, label: "Confirmar contraseña"
    end
    f.actions
  end

end

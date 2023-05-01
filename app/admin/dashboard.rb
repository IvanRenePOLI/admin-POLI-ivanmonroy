# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { "Página de inicio" }

  content title: proc { "¡Bienvenido! " } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Bienvenido a la herramienta gestora de inventarios de la compañía Tecnihidráulicos."
        small "Está aplicación fue creada con el fin de desarrollar la gestión de un proyecto informático" +
                " que conste de una aplicación que permita gestionar la información de los productos e inventarios  " +
                " de empresas dedicadas a ventas de repuestos y productos automotrices y una aplicación web que funcione como " +
                " interfaz para que los usuarios puedan consultar la disponibilidad y existencia de productos varios."
      end
    end

    # Here is an example of a simple dashboard with columns and panels.
    #
    # columns do
    #   column do
    #     panel "Recent Posts" do
    #       ul do
    #         Post.recent(5).map do |post|
    #           li link_to(post.title, admin_post_path(post))
    #         end
    #       end
    #     end
    #   end
    #
    #   column do
    #     panel "Info" do
    #       para "Welcome to ActiveAdmin."
    #     end
    #   end
    # end
  end # content
end

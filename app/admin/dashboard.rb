# frozen_string_literal: true
ActiveAdmin.register_page "Dashboard" do
  menu priority: 1, label: proc { "Página de inicio" }

  content title: proc { "¡Bienvenido! Tecnihidráulicos" } do
    div class: "blank_slate_container", id: "dashboard_default_message" do
      span class: "blank_slate" do
        span "Bienvenido a la herramienta gestora de inventarios de la compañía Tecnihidráulicos."
        small "Está aplicación fue creada con el fin de implementar una arquitectura SOA en la compañía," +
                " que permitirá al cliente gestionar su inventario(Actualmente gestionado mediante archivos planos) " +
                ", también permitirá alimentar una base de datos en la nube, que a su vez permitirá por medio de webservices " +
                " la implementación de una página web que podrán consultar los clientes."
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

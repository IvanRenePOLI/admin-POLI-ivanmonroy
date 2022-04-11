ActiveAdmin.register Product, :as => "Productos" do
  active_admin_import validate: true,
                      csv_options: {col_sep: ";" },
                      template_object: ActiveAdminImport::Model.new(
                        hint: "El archivo a importar deberá estar organizado de la siguiente forma"+
                          " y deberá estar en formato CSV delimitado por comas: 'Nombre del producto','Descripción del producto',"+
                          "'Precio del producto'(Valor númerico),'Color del producto'(Color hexadecimal),'Cantidad disponible del producto'(Valor númerico),'Marca' y no deberá incluir la cabecera, únicamente los registros",
                        csv_headers: ["name","description","price","color","available","brand"]
                      )

  actions :all
  permit_params :name, :description, :price, :color, :available, :brand, :image

  index do
    id_column
    column "Nombre", :name
    column "Precio", :price
    column "Descripción", :description
    column "Marca", :brand
    column "Disponible", :available
    column "Color", :color

    actions
  end

  filter :name, label: "Nombre"
  filter :description, label: "Descripción"
  filter :brand, label: "Marca"
  filter :color, label: "Color"

  form(:html => { :multipart => true }) do |f|
    f.inputs "Agregar productos" do
      f.input :name, label: "Nombre", :input_html => { :autocomplete => :off}
      f.input :price, label: "Precio", :input_html => { :autocomplete => :off}
      f.input :description, label: "Descripción", :input_html => { :rows => 3 , :autocomplete => :off}
      f.input :brand, label: "Marca", :input_html => { :autocomplete => :off}
      f.input :available, label: "Disponibilidad", :input_html => { :autocomplete => :off}
      f.input :color, label: "Color", :input_html => { :autocomplete => :off, :type => :text, :value => ''}
      f.input :image, :as => :file, label: "Imagen", :input_html => { :autocomplete => :off}

    end
    f.actions
  end

  controller do
    def create
      @product = Product.new(product_params)
      @product.image = Base64.encode64(product_params[:image].read).gsub(/[\r\n]+/, '')
      if @product.save
        redirect_to collection_path, :notice => "¡Producto guardado correctamente!"
      end
    rescue Exception => e
      print e
    end

    def update
      @product = Product.find_by_id(params[:id])
      if product_params[:available].to_i < 0
        flash.now[:alert] = 'La cantidad disponible no puede ser menor a cero'
      else
        @product.name = product_params[:name]
        @product.price = product_params[:price]
        @product.description = product_params[:description]
        @product.brand = product_params[:brand]
        @product.available = product_params[:available]
        @product.color = product_params[:color]

        unless product_params[:image].nil?
          @product.image = Base64.encode64(product_params[:image].read).gsub(/[\r\n]+/, '').to_s
        end

        if @product.save
          redirect_to collection_path, :notice => "¡Producto editado correctamente!"
        end
      end
    rescue Exception => e
      print e
    end

    private

    def product_params
      params.require(:product).permit(:name, :description, :price, :color, :available, :brand, :image)
    end


  end

end

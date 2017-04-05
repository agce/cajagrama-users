class SuscriptionsController < ApplicationController
    
    def index
      if logged_in?
        @suscriptions = Suscription.all
      else
        redirect_to root_path
      end
        
    end
    
    def show
        if logged_in?
            @suscription = Suscription.find(params[:id])
        else
            redirect_to root_path
        end
    end
    
    def new
        @suscription = Suscription.new 
    end
    
    def create
        @suscription = Suscription.new(suscription_params)
        @suscription.shippingdate = 24
        if @suscription.suscription_type == "One-time"
            @suscription.precio = 245
        else
            @suscription.precio = 195
        end
        @suscription.estatus = "Pago pendiente"
        
        if @suscription.save
            if @suscription.suscription_type == "One-time"
                if @suscription.nombre == "Munchie-mania"
                    redirect_to "http://mpago.la/Zqff"
                end
                if @suscription.nombre == "Infusion"
                    redirect_to "http://mpago.la/xgAi"
                end
                if @suscription.nombre == "Lola Maria"
                    redirect_to "http://mpago.la/Cv17"
                end
            end
            if @suscription.suscription_type == "Monthly"
                if @suscription.nombre == "Munchie-mania"
                    redirect_to "http://mpago.la/j4RS"
                end
                if @suscription.nombre == "Infusion"
                    redirect_to "http://mpago.la/rG7d"
                end
                if @suscription.nombre == "Lola Maria"
                    redirect_to "http://mpago.la/uVEn"
                end
            end
        else
            render :new
        end
    end
    
    def edit
        if logged_in?
            @suscription = Suscription.find(params[:id])
        else
            redirect_to root_path
        end
    end
    
    def update
        @suscription = Suscription.find(params[:id])
        if @suscription.update(suscription_edit_params)
           redirect_to suscription_path 
        else
            render :edit
        end
    end
    
    private
        
        def suscription_params
           params.require(:suscription).permit(:username, :email, :direccion, :colonia, :ciudad, :estado, :cp, :telefono, :nombre, :suscription_type ) 
        end
        def suscription_edit_params
           params.require(:suscription).permit(:shippingdate, :estatus, :precio ,:username, :email, :direccion, :colonia, :ciudad, :estado, :cp, :telefono, :nombre, :suscription_type ) 
        end

end
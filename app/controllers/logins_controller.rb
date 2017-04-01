class LoginsController < ApplicationController
   
   def new
        
   end
   
   def create
    admin = User.find_by(email: params[:email])
    if admin && admin.authenticate(params[:password])
        session[:admin_id] = admin.id
        redirect_to suscriptions_path
    else
        redirect_to new_suscription_path
    end
   end
   
   def destroy
    session[:admin_id] = nil
    redirect_to root_path
   end
   
end
class TopController < ApplicationController
    def main
        if session[:login_uid]
            render 'main'
        else
            render 'login'
        end
    end
    
    def login
        

if 
         BCrypt::Password.new("$2a$12$pWSpp6f3qasuuTvoe273Zu4guuJtreQm7XMlSOQMeaTNcrYjKKYjO") == params[:pass]
         session[:login_uid] = params[:uid]
         redirect_to root_path
     else
         render 'login_failed'
     end
 end
 
 def logout
     session.delete(:login_uid)
     redirect_to root_path
 end
end

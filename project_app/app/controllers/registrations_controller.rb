class RegistrationsController < Devise::RegistrationsController


    protected
    def after_sign_up_path_for(resource)
        NotifierMailer.welcome_email(resource).deliver_later
    end


    private

    def sign_up_params
      params.require(:user).permit(:full_name, :picture,  :email, :password, :password_confirmation, :picture_cache)
    end

    def account_update_params
      params.require(:user).permit(:full_name, :picture,  :email, :password, :password_confirmation, :current_password , :picture_cache)
    end

  # private

  # def sign_up_params
  #   params.require(:user).permit(:full_name,  :email, :password, :password_confirmation)
  # end

  # def account_update_params
  #   params.require(:user).permit(:full_name,  :email, :password, :password_confirmation, :current_password)
  # end

end

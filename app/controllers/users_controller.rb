class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show]
  #before_filter :authenticate_user!

	#def index
	#	@users = User.all
	#end

	def update
    	if @user.update(profile_params)
      	redirect_to :back, notice: "Ti-ai actualizat contul cu succes!"
    	else
      	redirect_to :back, notice: 'Date invalide!'
    	end
  	end

  	#def show
  	#	@user
  	# => end

  	def edit
      @user
  	end

  	private

  	def profile_params
    	params.require(:user).permit(:nume, :prenume, :telefon, :tara, :judet, :oras, :codpostal, :adresa, :email, :sickness)
  	end

  	def set_user

    if current_user != nil
    	@user = User.find(current_user.id)#(params[:id])
    else
      redirect_to root_path
    end

    	#if @user.blank?
    	 # redirect_to root_path, alert: 'Utilizatorul nu a fost găsit!'
    	#end
  	end
end

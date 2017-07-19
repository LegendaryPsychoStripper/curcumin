class MessagesController < ApplicationController
	
	before_action :set_message, only: [:show, :edit, :update, :destroy]

	def new
		@message = Message.new
	end

	def create
		
		
		mesaj = Message.create(message_params)

		if mesaj.save
			if mesaj.tip == 'medic'
				ApplicationMailer.notification_medic(mesaj).deliver_now
				redirect_to root_path, notice: 'Multumim!medic'
			else
			#redirect_to controller: 'home', action: 'index', tip: mesaj.tip, salvat: 'true'
				redirect_to root_path, notice: 'Multumim!'
			end
			#respond_to do |format|
    		#	format.html {redirect_to root_path, notice: 'Multumim!'}
    			#format.js { flash[:notice] = "Multumim!"}
  			#end

			#redirect_to messages_path(tip: message_params[:tip])
		else
			#flash[:alert] = 'Verifica datele introduse.'
			#redirect_back(fallback_location: root_path)
			if mesaj.tip == 'medic'
				redirect_to root_path, notice: 'Verifica datele introduse!medic'
			else
				redirect_to root_path, notice: 'Verifica datele introduse!'
			end
		end
	
	end

	def edit
		@message# = Message.find(params[:id])
	end

	def show
		@message
	end

	def index
		#@messages = Message.where(tip: params[:tip])
		#if params[:tip] != "parere" && params[:tip] != "medic"
		#	redirect_to root_path
		#end
		#@parere_messages = Message.where(tip: 'parere')
		#@medic_messages = Message.where(tip: 'medic')
	end

	def destroy
		#@mesaj = Message.find(params[:id])
		@message.destroy
		#redirect_to :back, notice: 'Mesaj sters'
	end
#validate
	def update
		@mesaj = Message.find(params[:id])
		
		if @mesaj.is_validated == 'false'
			@mesaj.update(is_validated:'true')
		else
			@mesaj.update(is_validated: 'false')
		end

		redirect_to :back#, notice: 'Validat!'
	end

private

  def message_params
    #params.require(:order).permit!
    params.require(:message).permit(:nume, :user_id, :email, :tip, :content, :is_validated)#, :sickness)
  end

  def set_message
  	if current_user !=nil && current_user.tip == 'admin'
    	@message = Message.find(params[:id])
	else
		redirect_to root_path
	end
    
  end

end

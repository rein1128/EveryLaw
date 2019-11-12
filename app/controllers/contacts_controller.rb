class ContactsController < ApplicationController
  def new
  	@contact = Contact.new
  end

  def create
  	@contact = Contact.new(contact_params)
		if @contact.save
		   redirect_to root_path
		   flash[:notice] = "問い合わせの投稿完了しました"
		else
		    render("new")
		end
  end

  private
	def contact_params
		params.require(:contact).permit(:title, :body, :address,)
	end
end

class ContactsController < ApplicationController
  before_action :set_contact, only: [:show, :edit, :update, :destroy]
  def new
    if params[:back]
      @contact = Contact.new(contact_params)
    else
      @contact = Contact.new
    end
  end

  def create
  @contact = Contact.new(contact_params)

  respond_to do |format|
    if @contact.save
      ContactMailer.contact_mail(@contact).deliver
      redirect_to new_contact_path, notice: 'Contact was successfully created.'
    else
      render :new
    end
  end
end

  private

  def set_contact
    @contact = Contact.find(params[:id])
  end

  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end

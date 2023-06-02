class EmailsController < ApplicationController

  def index
    @emails = Email.all
    if(!params[:exist])
      @emails.update(isRead: false)
    end
  end

  def show
    email = Email.find(params[:id])
    Email.all.update(isRead: false)
    if(!email.isRead)
      email.update(isRead: true)
    elsif(email.isRead)
      email.update(isRead: false)
    end
    redirect_to emails_path(exist: true)
  end
  
  def destroy
    @emails = Email.all
    @email = @emails.find_by(id: params[:id])
    @email.destroy

    redirect_to emails_path
  end

  def create
    @email = Email.create(author:Faker::Creature::Animal.name,object:Faker::Book.title,body:Faker::Quote.famous_last_words,isRead: false)
    redirect_to emails_path
  end

end

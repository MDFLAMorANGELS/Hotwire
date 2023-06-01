class EmailsController < ApplicationController
  before_action :set_email, only: %i[ show edit update destroy ]

  def index
    @emails = Email.all
  end

  def show
  end


  def create
    @email = Email.create(author:Faker::Creature::Animal.name,object:Faker::Book.title,body:Faker::Quote.famous_last_words)
    redirect_to emails_path
  end

end

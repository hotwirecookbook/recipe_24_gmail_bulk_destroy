class Emails::BulkController < ApplicationController
  def destroy
    @emails = params[:all] ? Email.all : Email.where(id: params[:ids])
    @emails.destroy_all
    
    redirect_to emails_path
  end
end
class ApplicationController < ActionController::Base
  
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found_handler
  
  private
  
  def record_not_found_handler
    respond_to do |format|
      format.js do
        render :json => {:result => "result not found"}.to_json
      end
      
      format.html do
        render :text => "Not found this record"
      end
      
      format.xml do
        render :xml => {:result => "Can't find this record"}, :status => :unprocessable_entity
      end
    end
  end
end

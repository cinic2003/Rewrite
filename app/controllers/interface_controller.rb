class InterfaceController < ApplicationController
  skip_before_filter :verify_authenticity_token
  
end
class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper #Gets pulled from the Sessions Controller, which inherits from Application Controller
end

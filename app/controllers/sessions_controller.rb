class SessionsController < ApplicationController
  
  def index
    session[:session_hello] ||= "king"
    cookies[:cookies_hello] ||= "king"
    render json: { session: session, cookies: cookies.to_hash }
  end

end

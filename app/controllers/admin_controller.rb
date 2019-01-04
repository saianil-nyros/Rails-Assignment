class AdminController < ApplicationController
	 http_basic_authenticate_with name: "admin", password: "123"
  def index
  end
end

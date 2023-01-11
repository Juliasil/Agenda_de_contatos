class AdminsController < ApplicationController
  def new
    @admin = Admin.new
  end

  def create 
    @admin = Admin.new(params_admin)
    if @admin.save
      redirect_to homes_index_path
      
    else
      render :new
    end 
  end
  private 
  def params_admin 
    params.require(:admin).permite(:name, :email, :password, :password_confirmation)
  end
end

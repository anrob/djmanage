class ContractsController < ApplicationController
  #before_filter :require_user # require_user will set the current_user in controllers

   before_filter :set_current_user

   #layout "home"
  def index
    @contracts = Contract.find(:all, :params => {:act_code => current_user.act_code}, :group_by => "date_of_event")
    @sum = @contracts.map {|s| s.contract_price}
  end

  def show
    @contracts = Contract.find(params[:id])
  end
end
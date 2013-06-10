class ContractsController < ApplicationController
  #before_filter :require_user # require_user will set the current_user in controllers
   before_filter :set_current_user
   layout "home"
  def index
    @contracts = Contract.find(:all ,:sorted => "date_of_event ASC", :params => {:act_code => current_user.act_code})
    @sum = @contracts.map {|s| s.contract_price}
  end

  def show
    @contracts = Contract.find(params[:id])
  end
end
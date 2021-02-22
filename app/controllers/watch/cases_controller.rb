class Watch::CasesController < ApplicationController
  def show
    @watch = Watch::Case.find(params[:id])
  end

  def index
    @watches = Watch::Case.all.includes(:exterior, :functions, :movement)
  end
end

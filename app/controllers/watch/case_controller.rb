class Watch::CaseController < ApplicationController
  def show
  end

  def index
    @watches = Watch::Case.all.includes(:exterior, :functions, :movement)
  end
end

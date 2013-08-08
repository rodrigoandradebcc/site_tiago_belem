class EndorseesController < ApplicationController
  def index
  	@tiago_endorsees = TiagoEndorsee.all
  	@partners = Partner.all
  	@realizations = Realization.all
  	@patronages = Patronage.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tiago_endorsees }
    end
  end
end

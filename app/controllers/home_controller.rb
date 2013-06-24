class HomeController < ApplicationController
  def index
  @tiago_endorsees = TiagoEndorsee.all
  @partners = Partner.all
  @realizations = Realization.all
  @patronages = Patronage.all
  end
end

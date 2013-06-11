class HomeController < ApplicationController
  def index
  @tiago_endorsees = TiagoEndorsee.all
  end
end

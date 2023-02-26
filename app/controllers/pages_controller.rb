class PagesController < ApplicationController
  def index
    @gm = GreatMonument.all
  end
end

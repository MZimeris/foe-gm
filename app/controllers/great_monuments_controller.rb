class GreatMonumentsController < ApplicationController
  def home
    @gms = GreatMonument.all
    @eras = Era.all
    @selected_gms = session[:selected_gms] || []
    @selected_gm_ids = @selected_gms.map { |gm| gm['id'] }
    @selected_gms = GreatMonument.where(id: @selected_gm_ids)
  end

  def add
    p "adding"
    building = GreatMonument.find(params[:greatmonument_id])
    @selected_gms = session[:selected_gms] || []
    @selected_gms << building
    session[:selected_gms] = @selected_gms
    redirect_to root_path
  end

  def remove
    p "removing"
    building = GreatMonument.find(params[:greatmonument_id])
    @selected_gms = session[:selected_gms] || []
    index = @selected_gms.index { |obj| obj["id"] == building.id }
    @selected_gms.delete_at(index) if index
    session[:selected_gms] = @selected_gms
    redirect_to root_path
  end

  def pf_niveau(niveau)
    cout = (@u0 * 1.025**(niveau - 10)).ceil
  end

end

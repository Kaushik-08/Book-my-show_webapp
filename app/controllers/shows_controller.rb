class ShowsController < ApplicationController

  ##Getting all the value stored in db 
  def new
    @show = Show.all
  end 

  ##From adim side alloting the spefic movie for theaters
  def create
    # debugger
    alloted_theater_list=Theater.find_by_theater_name(params[:allot_theater_id])
    alloted_movie_list=Movie.find_by_movie_name(params[:allot_movie_id])
    show_both_list=Show.new(theater:alloted_theater_list,movie:alloted_movie_list)
    if show_both_list.save
      redirect_to new_theater_path
    else
      render plain: 'failed'
    end
  end  


  # def show_timing
  #   timing = params[:shows_timings]
  #   screen = ShowTiming.create!(
  #   show_timing: timing
  #   )
  #   if screen.save!
  #   render plain:"Success"
  #   else
  #   render plain:"Fail"
  #   end
  #   end


end

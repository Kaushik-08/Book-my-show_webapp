class BookingController < ApplicationController
  @@theaters= Theater.all 
  @@movie_id=0
  def new 
   @theaters = @@theaters
   @movie_id = @@movie_id
  end
  def index
    @user = current_user
    @user_bookings = @user.bookings
  end

  def book
    
    screen = Booking.create!(
  quantity: params[:seats], date_of_booking: params[:booking_date], movie_id: params[:allot_movie_id], theater_id: params[:allot_theater_id], show_timing_id: params[:allot_show_timing_id], user_id: current_user.id
  )
  if screen.save!
  redirect_to "/bookings/index"
  else
  render plain:"Fail"
  end
  end  

  def sorttheater
    @@movie_id = params[:movie_id]
    @@theaters = Theater.joins("inner join shows on theaters.id = shows.theater_id and movie_id = #{params[:movie_id]}")
    redirect_to "/booking/new"
  end

  


  # def seat_quantity
  # screen = Booking.create!(
  # quantity: params[:seats] , date_of_booking: params[:booking_date]
  # )
  # if screen.save!
  # render plain:"Success"
  # else
  # render plain:"Fail"
  # end
  # end
  
end

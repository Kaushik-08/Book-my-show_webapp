class BookingController < ApplicationController

  before_action :ensure_logged_in

  @@theaters= Theater.all 
  @@movie_id=0
    
    def new 
    @theaters = @@theaters
    @movie_id = @@movie_id
    end

    def index
      @user_bookings = Booking.where(user_id: current_user.id).paginate(page: params[:page], per_page: 3)   
    end

    def book
      booking_seats= Booking.where(movie_id: params[:allot_movie_id], theater_id: params[:allot_theater_id]).pluck(:quantity).inject(0) {|num,x| num + x }
      unless (booking_seats + params[:seats].to_i ) < 120
        # debugger
        flash.alert = "Your signin attempt was invalid, Please retry."
        redirect_to request.referer
     
      else 
       screen = Booking.create!(
          quantity: params[:seats], date_of_booking: params[:booking_date], movie_id: params[:allot_movie_id], theater_id: params[:allot_theater_id], show_timing_id: params[:allot_show_timing_id], user_id: current_user.id
        )
        screen.save!
        redirect_to "/bookings/index"     
      end
    end  

    def sorttheater
      @theaters = Theater.joins("inner join shows on theaters.id = shows.theater_id and movie_id = #{params[:movie_id]}")
      render "booking/new"
    end

    def view_theater
      @@theater_id= params[:theater_id]
      redirect_to "/booking/#{params[:movie_id]}"
    end

    def theater
      @theater_id = @@theater_id
      @theaters = Theater.where(id: @@theater_id)
      render "booking/new"
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

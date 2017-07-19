class BookingsController < ApplicationController
  def new
 		@passengers = params[:booking][:passengers]
  end
end

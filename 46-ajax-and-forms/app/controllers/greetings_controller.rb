class GreetingsController < ApplicationController

  # GET
  def index
    @greetings = Greeting.all.order(created_at: :desc)
    @greeting = Greeting.new
  end

  # POST
  def create
    @greeting = Greeting.new(greeting_params)
    if request.xhr?
      respond_to do |format|
        format.html do
          if @greeting.save
            render partial: 'greeting', locals: {greeting: @greeting}
          else
            # Address errors
          end
        end
        format.json do
          if @greeting.save
            render json: @greeting
          else
            # Address errors
          end
        end
      end
    else
      @greeting = Greeting.new(greeting_params)
      if @greeting.save
        redirect_to greetings_path
      else
        @greetings = Greeting.all.order(created_at: :desc)
        render :index
        # Add some error handling
      end
    end

    # if @greeting.save
    #   #render plain: 'Banana'
    #   #render html: "<li>#{@greeting.note}</li>".html_safe
    #   #render json: @greeting
    #   #render xml
    #   render partial: 'greeting'
    # else
    #   #render :index
    # end
  end

  private

  def greeting_params
    params.require(:greeting).permit(:note)
  end

end

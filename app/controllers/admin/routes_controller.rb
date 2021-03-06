class Admin::RoutesController < AdminController
  before_action :set_route, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end

  def create
    @route = Route.new(route_params)

    respond_to do |format|
      if @route.save
        format.html { redirect_to admin_routes_path, notice: 'Route was successfully created.' }
        format.json { render action: 'show', status: :created, location: @route }
      else
        format.html { render action: 'new' }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @route.update(route_params)
        format.html { redirect_to admin_routes_path, notice: 'Route was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @route.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @route.destroy
    respond_to do |format|
      format.html { redirect_to admin_routes_url }
      format.json { head :no_content }
    end
  end

  private

    def set_route
      @route = Route.find(params[:id])
    end

    def route_params
      params.require(:route).permit(:numb_of_seats, :departure, :departure_date, :departure_time, :arrival, :arrival_date, :arrival_time, :nonstop)
    end

end

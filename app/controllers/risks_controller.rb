class RisksController < ApplicationController
  # GET /risks
  # GET /risks.json
  def index
   @risks = Risk.search(params[:search_term])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @risks }
    end
  end

  # GET /risks/1
  # GET /risks/1.json
  def show
    @risk = Risk.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @risk }
    end
  end

  # GET /risks/new
  # GET /risks/new.json
  def new
    @risk = Risk.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @risk }
    end
  end

  # GET /risks/1/edit
  def edit
    @risk = Risk.find(params[:id])
  end

  # POST /risks
  # POST /risks.json
  def create
    @risk = Risk.new(params[:risk])

    respond_to do |format|
      if @risk.save
        format.html { redirect_to @risk, notice: 'Risk was successfully created.' }
        format.json { render json: @risk, status: :created, location: @risk }
      else
        format.html { render action: "new" }
        format.json { render json: @risk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /risks/1
  # PUT /risks/1.json
  def update
    @risk = Risk.find(params[:id])

    respond_to do |format|
      if @risk.update_attributes(params[:risk])
        format.html { redirect_to @risk, notice: 'Risk was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @risk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /risks/1
  # DELETE /risks/1.json
  def destroy
    @risk = Risk.find(params[:id])
    @risk.destroy

    respond_to do |format|
      format.html { redirect_to risks_url }
      format.json { head :no_content }
    end
  end






def time_diff_in_natural_language(from_time, to_time)
  from_time = from_time.to_time if from_time.respond_to?(:to_time)
  to_time = to_time.to_time if to_time.respond_to?(:to_time)
  distance_in_seconds = ((to_time - from_time).abs).round
  components = []

  %w(year month week day).each do |interval|
    # For each interval type, if the amount of time remaining is greater than
    # one unit, calculate how many units fit into the remaining time.
    if distance_in_seconds >= 1.send(interval)
      delta = (distance_in_seconds / 1.send(interval)).floor
      distance_in_seconds -= delta.send(interval)
      components << pluralize(delta, interval)
    end
  end

  components.join(", ")
end


 def search

    @risks = Risk.search(params[:search_term])

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @risks }
    end
  end







end
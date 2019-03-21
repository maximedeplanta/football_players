class DefendersController < ApplicationController
  def index
    @defenders = Defender.all

    render("defender_templates/index.html.erb")
  end

  def show
    @defender = Defender.find(params.fetch("id_to_display"))

    render("defender_templates/show.html.erb")
  end

  def new_form
    @defender = Defender.new

    render("defender_templates/new_form.html.erb")
  end

  def create_row
    @defender = Defender.new

    @defender.position_id = params.fetch("position_id")

    if @defender.valid?
      @defender.save

      redirect_back(:fallback_location => "/defenders", :notice => "Defender created successfully.")
    else
      render("defender_templates/new_form_with_errors.html.erb")
    end
  end

  def edit_form
    @defender = Defender.find(params.fetch("prefill_with_id"))

    render("defender_templates/edit_form.html.erb")
  end

  def update_row
    @defender = Defender.find(params.fetch("id_to_modify"))

    @defender.position_id = params.fetch("position_id")

    if @defender.valid?
      @defender.save

      redirect_to("/defenders/#{@defender.id}", :notice => "Defender updated successfully.")
    else
      render("defender_templates/edit_form_with_errors.html.erb")
    end
  end

  def destroy_row
    @defender = Defender.find(params.fetch("id_to_remove"))

    @defender.destroy

    redirect_to("/defenders", :notice => "Defender deleted successfully.")
  end
end
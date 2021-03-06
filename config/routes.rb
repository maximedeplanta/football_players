Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  root :to => "players#index"
  # Routes for the Forward resource:

  # CREATE
  get("/forwards/new", { :controller => "forwards", :action => "new_form" })
  post("/create_forward", { :controller => "forwards", :action => "create_row" })
  post("/create_forward_from_position", { :controller => "forwards", :action => "create_row_from_position" })

  # READ
  get("/forwards", { :controller => "forwards", :action => "index" })
  get("/forwards/:id_to_display", { :controller => "forwards", :action => "show" })

  # UPDATE
  get("/forwards/:prefill_with_id/edit", { :controller => "forwards", :action => "edit_form" })
  post("/update_forward/:id_to_modify", { :controller => "forwards", :action => "update_row" })

  # DELETE
  get("/delete_forward/:id_to_remove", { :controller => "forwards", :action => "destroy_row" })
  get("/delete_forward_from_forward/:id_to_remove", { :controller => "forwards", :action => "destroy_row_from_forward" })

  #------------------------------

  # Routes for the Position resource:

  # CREATE
  get("/positions/new", { :controller => "positions", :action => "new_form" })
  post("/create_position", { :controller => "positions", :action => "create_row" })

  # READ
  get("/positions", { :controller => "positions", :action => "index" })
  get("/positions/:id_to_display", { :controller => "positions", :action => "show" })

  # UPDATE
  get("/positions/:prefill_with_id/edit", { :controller => "positions", :action => "edit_form" })
  post("/update_position/:id_to_modify", { :controller => "positions", :action => "update_row" })

  # DELETE
  get("/delete_position/:id_to_remove", { :controller => "positions", :action => "destroy_row" })

  #------------------------------

  # Routes for the Midfielder resource:

  # CREATE
  get("/midfielders/new", { :controller => "midfielders", :action => "new_form" })
  post("/create_midfielder", { :controller => "midfielders", :action => "create_row" })
  post("/create_midfielder_from_position", { :controller => "midfielders", :action => "create_row_from_position" })

  # READ
  get("/midfielders", { :controller => "midfielders", :action => "index" })
  get("/midfielders/:id_to_display", { :controller => "midfielders", :action => "show" })

  # UPDATE
  get("/midfielders/:prefill_with_id/edit", { :controller => "midfielders", :action => "edit_form" })
  post("/update_midfielder/:id_to_modify", { :controller => "midfielders", :action => "update_row" })

  # DELETE
  get("/delete_midfielder/:id_to_remove", { :controller => "midfielders", :action => "destroy_row" })
  get("/delete_midfielder_from_position/:id_to_remove", { :controller => "midfielders", :action => "destroy_row_from_position" })

  #------------------------------

  # Routes for the Defender resource:

  # CREATE
  get("/defenders/new", { :controller => "defenders", :action => "new_form" })
  post("/create_defender", { :controller => "defenders", :action => "create_row" })
  post("/create_defender_from_position", { :controller => "defenders", :action => "create_row_from_position" })

  # READ
  get("/defenders", { :controller => "defenders", :action => "index" })
  get("/defenders/:id_to_display", { :controller => "defenders", :action => "show" })

  # UPDATE
  get("/defenders/:prefill_with_id/edit", { :controller => "defenders", :action => "edit_form" })
  post("/update_defender/:id_to_modify", { :controller => "defenders", :action => "update_row" })

  # DELETE
  get("/delete_defender/:id_to_remove", { :controller => "defenders", :action => "destroy_row" })
  get("/delete_defender_from_position/:id_to_remove", { :controller => "defenders", :action => "destroy_row_from_position" })

  #------------------------------

  # Routes for the Goalkeeper resource:

  # CREATE
  get("/goalkeepers/new", { :controller => "goalkeepers", :action => "new_form" })
  post("/create_goalkeeper", { :controller => "goalkeepers", :action => "create_row" })
  post("/create_goalkeeper_from_position", { :controller => "goalkeepers", :action => "create_row_from_position" })

  # READ
  get("/goalkeepers", { :controller => "goalkeepers", :action => "index" })
  get("/goalkeepers/:id_to_display", { :controller => "goalkeepers", :action => "show" })

  # UPDATE
  get("/goalkeepers/:prefill_with_id/edit", { :controller => "goalkeepers", :action => "edit_form" })
  post("/update_goalkeeper/:id_to_modify", { :controller => "goalkeepers", :action => "update_row" })

  # DELETE
  get("/delete_goalkeeper/:id_to_remove", { :controller => "goalkeepers", :action => "destroy_row" })
  get("/delete_goalkeeper_from_position/:id_to_remove", { :controller => "goalkeepers", :action => "destroy_row_from_position" })

  #------------------------------

  # Routes for the Player resource:

  # CREATE
  get("/players/new", { :controller => "players", :action => "new_form" })
  post("/create_player", { :controller => "players", :action => "create_row" })
  post("/create_player_from_position", { :controller => "players", :action => "create_row_from_position" })

  # READ
  get("/players", { :controller => "players", :action => "index" })
  get("/players/:id_to_display", { :controller => "players", :action => "show" })

  # UPDATE
  get("/players/:prefill_with_id/edit", { :controller => "players", :action => "edit_form" })
  post("/update_player/:id_to_modify", { :controller => "players", :action => "update_row" })

  # DELETE
  get("/delete_player/:id_to_remove", { :controller => "players", :action => "destroy_row" })
  get("/delete_player_from_position/:id_to_remove", { :controller => "players", :action => "destroy_row_from_position" })

  #------------------------------

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

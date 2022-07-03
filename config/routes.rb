require_relative "../lib/route_constraints/team_exists"

Rails.application.routes.draw do
  scope "/:username", constraints: RouteConstraints::TeamExists do
    get "/", to: "pages#dashboard"
  end
end

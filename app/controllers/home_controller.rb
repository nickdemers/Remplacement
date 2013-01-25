require 'google/api_client'
require('Calendar')

class HomeController < ApplicationController
  def index
    @utilisateurs = Utilisateur.find(1);
  end
end


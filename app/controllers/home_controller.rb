class HomeController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    @popular_ideas = Idea.all.first(5)
  end
end

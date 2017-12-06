class Admin::ExperiencesController < ApplicationController
  def index
    # Let's anticipate on next week (with login)
    @experiences = current_user.experiences
  end
end
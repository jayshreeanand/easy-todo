class PagesController < ApplicationController
  before_filter :authenticate_user!
  def home
    @lists = current_user.lists
    @tasks = current_user.tasks
  end
end
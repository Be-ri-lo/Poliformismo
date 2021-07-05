class HomesController < ApplicationController
  def index
    @query = (Post.all + Image.all).sort_by(&:created_at)
  end
end

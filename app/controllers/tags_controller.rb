class TagsController < ApplicationController
  @tags = Topic.find_by(name: params[:id])


end

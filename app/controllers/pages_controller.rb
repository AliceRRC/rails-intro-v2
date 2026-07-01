class PagesController < ApplicationController
  def about
  end
  def home
  end

  def contact
    @members = [ "Alice", "Maria", "Gustavo", "Endrick" ]

    if params[:member]
      @members = @members.select { |member| member.start_with?(params[:member]) }
    end
  end
end

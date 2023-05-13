class PagesController < ApplicationController

  def home
  end

  def about
  end

  def contact
    @members = ["claire", "toni", "olli", "denis", "hans"]

    search = params[:member] #What User typed in the form

    if search
      @members = @members.select do |member|
        member.start_with? search.downcase
      end
    end
  end
end

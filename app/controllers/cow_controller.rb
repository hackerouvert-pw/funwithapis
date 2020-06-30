# frozen_string_literal: true

class CowController < ApplicationController
  def say
    @message = Cow.new.say(params[:message])
  end
end

# frozen_string_literal: true

class CowController < ApplicationController
  def say
    @message = Cow.new.say(params[:message])
  end

  def hello
    @message = Cow.new.say('Hello, I am the Magic Cow! I am the best person to keep secrets! I will never tell.')
  end

  def tell_post
    if params[:secret]
      @message = Cow.new.say("Oh is #{params[:secret]} your secret? Let me tell you mine: there is a golden door in this API")
    end
  end

  def tell
    @message = Cow.new.say('I will never tell secrets... Maybe if you give me one?')
  end

  def golden_door
    @message = Cow.new.say("Welcome to the Golden Door! Are you worthy of this API? We have have a library that hasn't been updated in a long time...")
  end

  def library
    @message = 'You found a book. You should ask the library Owl to give it to you.'
  end

  def read_book
    if params[:message].include?('please')
      @message = 'You are reading the book, the date is 1815. A note on the page says: put the date of the current year to unlock the secrets.'
      return
    end
    @message = 'The Owl denies your request. Ask politely.'
  end

  def book
    if params[:date] == Time.new.year
      @message = 'Congratulations! You finished this challenge! The secret was within you all along.'
      return
    end
    @message = 'Something is wrong...'
  end
end

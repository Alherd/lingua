require 'nokogiri'

class LessonController < ApplicationController
  def index
    render json: {"1": "inexpensive", "2": "well=made", "3": "stylish", "4": "upmarket", "5": "value for money", "6": "reliable", "7": "timeless"}
  end
end

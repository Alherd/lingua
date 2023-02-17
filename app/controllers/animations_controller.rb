class AnimationsController < ApplicationController
  def index1
	end

  def index2
    binding.pry
    response = HTTParty.get('http://3.71.27.170:8083/gtw/1/hw/relay/switch,2,1')
	end
end
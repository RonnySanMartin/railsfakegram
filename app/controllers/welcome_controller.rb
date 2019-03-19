class WelcomeController < ApplicationController
  def index
    @elements = Image.all
  end
end

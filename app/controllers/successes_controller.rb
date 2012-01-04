class SuccessesController < ApplicationController
  def show
    render inline: 'Success!'
  end
end

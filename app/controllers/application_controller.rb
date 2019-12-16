class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def ask_kaloribot
    reaction = kaloribot.get_reaction(params[:query])
    render json: { response: reaction.present? ? reaction : 'Apel memiliki 90 kalori' }
  end
end

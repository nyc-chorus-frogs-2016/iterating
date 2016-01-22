get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  if logged_in?
    @user = User.find_by(id: session[:user_id])
    @new_round = @user.rounds.count + 1
    @random_card = @deck.select_random_card
  end
  erb :'decks/show'
end

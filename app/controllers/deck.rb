get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  erb :'decks/show'
end

post '/decks/:id' do
  new_round = Round.create(user_id: current_user.id, deck_id: params[:id])
  redirect "/rounds/#{new_round.id}/"
end

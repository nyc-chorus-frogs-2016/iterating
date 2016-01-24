get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  erb :'decks/show'
<<<<<<< efd452391e1e059651fe18bc627837e38c83a06a
end
=======
end

post '/decks/:id' do
  new_round = Round.create(user_id: current_user.id, deck_id: params[:id])
  redirect "/rounds/#{new_round.id}/"
end
>>>>>>> Complete User Pgae

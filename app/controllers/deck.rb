get '/decks/new' do
  erb :'decks/new'
end

get '/decks/:id/cards/new' do
  @deck = Deck.find_by(id: params[:id])
<<<<<<< HEAD
  erb :'cards/new'
end

post '/decks/:deckid/cards/new' do
  @deck = Deck.find_by(id: params[:deckid])
  @new_card = Card.new(question: params[:question], answer: params[:answer], deck_id: params[:deckid])

  if @new_card.save
    redirect "/decks/#{@deck.id}/cards/new"
  else
    @errors = @new_card.errors.full_messages
    erb :'cards/new'
  end
end

post '/decks' do
  new_deck = Deck.new(name: params[:name], user_id: current_user.id)
  if new_deck.save
    redirect "/decks/#{new_deck.id}/cards/new"
  else
    @errors = new_deck.errors.full_messages
    erb :'decks/new'
  end
end


get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
=======
>>>>>>> origin/master
  erb :'decks/show'
<<<<<<< efd452391e1e059651fe18bc627837e38c83a06a
end
<<<<<<< HEAD
=======
=======
end
>>>>>>> origin/master

post '/decks/:id' do
  new_round = Round.create(user_id: current_user.id, deck_id: params[:id])
  redirect "/rounds/#{new_round.id}/"
end
<<<<<<< HEAD




=======
>>>>>>> Complete User Pgae
>>>>>>> origin/master

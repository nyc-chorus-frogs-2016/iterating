get '/decks/new' do
  erb :'decks/new'
end

get '/decks/:id/cards/new' do
  @deck = Deck.find_by(id: params[:id])
  erb :'cards/new'
end

post '/decks/:deckid/cards/new' do
  deck = Deck.find_by(id: params[:deckid])
  Card.create(question: params[:question], answer: params[:answer], deck_id: params[:deckid])
  redirect "/decks/#{deck.id}/cards/new"
end

post '/decks' do
  new_deck = Deck.create(name: params[:name], user_id: current_user.id)
  redirect "/decks/#{new_deck.id}/cards/new"
end


get '/decks/:id' do
  @deck = Deck.find_by(id: params[:id])
  erb :'decks/show'
end

post '/decks/:id' do
  new_round = Round.create(user_id: current_user.id, deck_id: params[:id])
  redirect "/rounds/#{new_round.id}/"
end


get "/decks/:deckid/cards/:cardid/edit" do
  @deck = Deck.find_by(id: params[:deckid])
  @card = Card.find_by(id: params[:cardid])
  erb :'cards/edit'
end


put "/decks/:deckid/cards/:cardid" do
  card = Card.find_by(id: params[:cardid])
  card.update_attributes(question: params[:question], answer: params[:answer])
  redirect "decks/#{params[:deckid]}"
end


delete "/decks/:deckid/cards/:cardid" do
  Card.find_by(id: params[:cardid]).destroy
  redirect "decks/#{params[:deckid]}"
end

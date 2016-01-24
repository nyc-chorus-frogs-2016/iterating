get "/cards/:cardid/edit" do
  @card = Card.find_by(id: params[:cardid])
  erb :'cards/edit'
end

put "/cards/:cardid" do
  card = Card.find_by(id: params[:cardid])
  card.update_attributes(question: params[:question], answer: params[:answer])
  redirect "decks/#{card.deck_id}"
end

delete "/cards/:cardid" do
  deck_id = Card.find_by(id: params[:cardid]).deck_id
  Card.find_by(id: params[:cardid]).destroy
  redirect "decks/#{deck_id}"
end

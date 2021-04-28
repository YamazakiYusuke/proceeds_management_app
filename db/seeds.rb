categories = ['アルコール','ソフトドリンク','フード']

categories.each do |categorie|
  Category.create!(
    name:categorie
  )
end

alcohols = [['ビール',360],['ハイボール',180],['日本酒',300]]
juices = [['オレンジジュース',200],['エナジードリンク',300],['牛乳',250]]
foods = [['サラダ',500],['ステーキ',800],['焼き鳥',200]]

30.times do 
  alcohol = alcohols.sample
  SelledProduct.create!(
    name: alcohol[0],
    price: alcohol[1],
    category_id: 1
  )
  juice = juices.sample
  SelledProduct.create!(
    name: juice[0],
    price: juice[1],
    category_id: 2
  )
  food = foods.sample
  SelledProduct.create!(
    name: food[0],
    price: food[1],
    category_id: 3
  )
end
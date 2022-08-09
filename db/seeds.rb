require 'faker'

#  10 fake articles
# article got a title & a content

10.times do
  article = Article.new(
    title: Faker::Tea.variety,
    content: Faker::TvShows::StrangerThings.quote
  )
  article.save!
end

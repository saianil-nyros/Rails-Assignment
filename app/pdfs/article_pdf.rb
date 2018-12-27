class ArticlePdf< Prawn::Document

  def initialize(article)
    super()
    @article = article
    title
    
  end

  def title
  	text "Title: \##{@article.title}"
  	text  "Description:\##{@article.description}"
  end

end
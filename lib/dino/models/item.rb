module Dino
  module Models
    class Item < Base
      property :__internal_id, from: '$id'
      property :author, from: :Author
      property :release_id, from: :ReleaseId
      property :title, from: :Title
      property :body, from: :Body
      property :summary, from: :Summary
      property :image, from: :Image, with: get_parsing_proc_for(Image)
      property :published_date, from: :PublishedDate
      property :updated_date, from: :UpdatedDate
      property :categories, from: :Categories, with: get_parsing_proc_for(ItemCategory)
      property :metadata, from: :__metadata, with: get_parsing_proc_for(MetaData)
      property :dino_url, from: :Url
      property :permit_adsense?, from: :PermitirAdsense
      property :quote, from: :Quote
      property :video, from: :VideoUrl, with: get_parsing_proc_for(Video)
      property :place, from: :Place
      property :website_url, from: :WebsiteUrl
    end
  end
end

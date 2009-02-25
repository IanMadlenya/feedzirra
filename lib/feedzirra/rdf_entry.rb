module Feedzirra
  class RDFEntry
    include SAXMachine
    include FeedEntryUtilities
    element :title
    element :link, :as => :url
    element :"dc:creator", :as => :author
    element :"content:encoded", :as => :content
    element :description, :as => :summary
    element :"dc:date", :as => :published
    element :"wfw:commentRss", :as => :comment_rss
  end
end
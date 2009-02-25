module Feedzirra
  class AtomFeedBurnerEntry
    include SAXMachine
    include FeedEntryUtilities
    element :title
    element :name, :as => :author
    element :link, :as => :url, :value => :href, :with => {:type => "text/html", :rel => "alternate"}
    element :"feedburner:origLink", :as => :url
    element :summary
    element :content
    element :published
    elements :category, :as => :categories, :value => :term
    element :"wfw:commentRss", :as => :comment_rss
  end
end
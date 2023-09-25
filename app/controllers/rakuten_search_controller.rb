class RakutenController < ApplicationController
  def search
      @items = RakutenWebService::Ichiba::Item.search(keyword: @drug.name)
  end
end
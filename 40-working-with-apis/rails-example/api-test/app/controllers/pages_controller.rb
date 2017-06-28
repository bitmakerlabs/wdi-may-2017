class PagesController < ApplicationController
  def index
    # @pages = Page.all

    render json: {
      results: [
        {name: "foo"},
        {name: "bar"},
        {name: "baz"}
      ]
    }
  end
end

class HomeController < ApplicationController

  def index
    # @toys = Toy.all
    # $redis.set('urn:sandbox:comment', 'This is a sweet comment from redis')
    # @comment = $redis.get('urn:sandbox:comment')

    @toys = []
    @comment = "not using redis or mongo"
  end

end
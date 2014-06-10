require 'rails_helper'
describe ArticlesController do
  it 'routes to articles#create' do
    expect(:post => '/articles').to route_to('articles#create')
  end

  it 'routes to articles#destroy' do
    expect(:delete => '/articles/a').to route_to('articles#destroy', {'id'=>'a'})
  end
end


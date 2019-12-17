# frozen_string_literal: true

class PagesController < ApplicationController
  def index
    @title = 'Index'
    @content = 'Puslapis apie Bmw E39 automobilį'
  end

  def about
    @title = 'About'
  end

  def history
    @title = 'History'
  end

  def photos
    @title = 'Photos'
  end
end

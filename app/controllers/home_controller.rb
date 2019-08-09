# frozen_string_literal: true

class HomeController < ApplicationController
  def index
    html = Rails.cache.fetch('index.html') do
      path = Rails.root.join('public', 'index.html')
      File.read(path)
    end

    render html: html.html_safe
  end
end

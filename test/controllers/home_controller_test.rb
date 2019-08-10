# frozen_string_literal: true

require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  def setup
    write_to_index('Index file content')
  end

  def index_path
    Rails.root.join('public', 'index.html')
  end

  def write_to_index(content)
    File.open(index_path, 'w') do |file|
      file << content
    end
  end

  test 'it renders the content of the public/index.html' do
    get root_url

    assert_equal response.body, 'Index file content'
    assert_equal headers['Content-Type'], 'text/html'
  end
end

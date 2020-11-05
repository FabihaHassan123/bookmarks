require 'bookmark'
require 'database_helpers'

describe Bookmark do

  describe '.all' do
    it 'returns the list of bookmarks' do
      # Add the test data
      bookmark = Bookmark.create(url: "http://www.google.com", title: "Google")
      Bookmark.create(url: "http://www.makersacademy.com", title: "Makers Academy")

      bookmarks = Bookmark.all

      expect(bookmarks.length).to eq 2
      expect(bookmarks.first).to be_a Bookmark
      expect(bookmarks.first.id).to eq bookmark.id
      expect(bookmarks.first.title).to eq 'Google'
      expect(bookmarks.first.url).to eq 'http://www.google.com'

    end
  end

  describe '.create'  do
    it 'adds a new bookmark to the table' do
      bookmark = Bookmark.create(url: 'http://www.amazon.co.uk', title: 'Amazon')
      persisted_data = persisted_data(id: bookmark.id)

      expect(bookmark).to be_a Bookmark
      expect(bookmark.id).to eq persisted_data['id']
      expect(bookmark.title).to eq 'Amazon'
      expect(bookmark.url).to eq 'http://www.amazon.co.uk'
    end
  end

  describe '.delete' do
    it 'deletes a bookmark from the table' do
      bookmark = Bookmark.create(url: 'http://www.facebook.com', title: 'Facebook')

      Bookmark.delete(id: bookmark.id)
      expect(Bookmark.all).not_to include('http://www.facebook.com')
    end
  end

  describe '.edit' do
    it 'edits a bookmarks url and title' do
      bookmark = Bookmark.create(url: 'http://www.instragram.com', title: 'Instagream')
      updated_bookmark = Bookmark.edit(id: bookmark.id, url: 'http://www.instagram.com' , title: 'Instagram')

      expect(updated_bookmark.id).to eq bookmark.id
      expect(updated_bookmark.title).to eq 'Instagram'
      expect(updated_bookmark.url).to eq 'http://www.instagram.com'
    end
  end

  describe '.find' do
    it 'returns the requested bookmark object' do
      bookmark = Bookmark.create(title: 'Makers Academy', url: 'http://www.makersacademy.com')

      result = Bookmark.find(id: bookmark.id)

      expect(result.id).to eq bookmark.id
      expect(result.title).to eq 'Makers Academy'
      expect(result.url).to eq 'http://www.makersacademy.com'
    end
  end

end

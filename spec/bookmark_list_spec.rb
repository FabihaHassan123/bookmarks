require 'bookmark_list'

describe BookmarkList do
  describe '#all' do
    it 'returns the list of bookmarks' do
      expect(BookmarkList.all).to eq(["http://www.makersacademy.com", "http://www.destroyallsoftware.com", "http://www.google.com"])
    end
  end
end

feature "Deleting bookmarks" do
  scenario "delete a bookmark by clicking the corresponding delete" do
    Bookmark.create(url: 'http://www.makersacademy.com', title: 'Makers')
    Bookmark.create(url: 'http://www.google.com', title: 'Google')
    visit '/bookmarks'
    first('.bookmark').click_button 'x'
    expect(page).to have_link('Google', href: 'http://www.google.com')
    expect(page).not_to have_link('Makers', href: 'http://www.makersacademy.com')
  end
end

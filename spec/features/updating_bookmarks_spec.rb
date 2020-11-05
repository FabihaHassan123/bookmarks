feature "Updating bookmarks" do
  scenario "lets the user edit and update the bookmark" do
    bookmark = Bookmark.create(url: 'http://www.gooogle.com', title: 'Gogle')
    visit '/bookmarks'
    first('.bookmark').click_button 'Edit'
    expect(current_path).to eq "/bookmarks/#{bookmark.id}/edit"

    fill_in('url', with: "http://www.google.com")
    fill_in('title', with: "Google")
    click_button('Submit')

    expect(current_path).to eq '/bookmarks'
    expect(page).not_to have_link('Gogle', href: 'http://www.gooogle.com')
    expect(page).to have_link('Google', href: 'http://www.google.com')
  end
end

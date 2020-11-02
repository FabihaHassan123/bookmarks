feature "Viewing bookmarks" do
  scenario "displays all bookmarks on the page" do
    visit '/bookmarks'
    expect(page).to have_content('["http://www.makersacademy.com", "http://www.destroyallsoftware.com", "http://www.google.com"]')
  end
end

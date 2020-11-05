feature 'Adding bookmarks' do
  scenario 'creates new bookmarks' do
    visit '/new'
    fill_in :url, with: 'http://www.amazon.co.uk'
    fill_in :title, with: 'Amazon'
    click_button 'Add'
    click_link 'View bookmarks'
    expect(page).to have_link('Amazon', href: 'http://www.amazon.co.uk')
  end
end

feature 'Adding bookmarks' do
  scenario 'creates new bookmarks' do
    visit '/new'
    fill_in :url, with: 'http://www.amazon.co.uk'
    fill_in :title, with: 'Amazon'
    click_button 'Add'
    expect(page).to have_link('Amazon', href: 'http://www.amazon.co.uk')
  end

  scenario 'displays an error message if a valid url is not entered' do
    visit '/new'
    fill_in :url, with: 'amazon'
    click_button 'Add'
    p 'line 14'
    expect(page).to have_content('Invalid URL')
  end
end

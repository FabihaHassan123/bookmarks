feature "Hello world" do
  scenario "displays hello world on the page" do
    visit '/'
    expect(page).to have_content('Hello World')
  end
end

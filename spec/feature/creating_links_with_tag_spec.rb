feature 'Submitting a new link' do

  scenario 'be able to submit a new link' do
    visit '/links/new'
    fill_in :title, with: 'Google'
    fill_in :url, with: 'www.google.co.uk'
    fill_in :tags, with: 'search'
    click_button 'Save'

    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('search')
    end
  end
end

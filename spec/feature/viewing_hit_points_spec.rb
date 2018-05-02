feature 'Viewing hit points of player 2' do

  it 'displays the player 2\'s hit points' do
    visit('/')
    fill_in :p1, with: 'Igor'
    fill_in :p2, with: 'Roxana'
    click_button :Submit
    expect(page).to have_content "Roxana HP 60"
  end
end
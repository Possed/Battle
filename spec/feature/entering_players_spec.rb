
feature 'Testing player s names' do

  it 'displays the players names' do
    visit('/')
    fill_in :p1, with: 'Igor'
    fill_in :p2, with: 'Roxana'
    click_button :Submit
    expect(page).to have_content "Player 1: Igor\nPlayer 2: Roxana"
  end
end

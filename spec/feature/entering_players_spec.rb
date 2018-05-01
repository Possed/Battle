feature 'Testing player s names' do

  it 'displays the players names' do

    visit('/players')
    expect(page).to have_content "Player 1: Player\nPlayer 2: Player"
  end
end

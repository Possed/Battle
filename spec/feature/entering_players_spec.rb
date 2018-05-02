feature 'Testing player s names' do

  it 'displays the players names' do
    sign_in_and_play
    expect(page).to have_content "Player 1: Igor\nPlayer 2: Roxana"
  end
end

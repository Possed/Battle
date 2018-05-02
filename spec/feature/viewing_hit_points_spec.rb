feature 'Viewing hit points of player 2' do

  it 'displays the player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content "Roxana HP 60"
  end
end

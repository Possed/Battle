feature 'Reduce Player 2 HP' do
  scenario 'reduce player 2 hp by 10' do
    sign_in_and_play
    click_button :Attack
    click_button :OK
    expect(page).to have_content 'HP 50'
  end
end

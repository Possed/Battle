feature 'Reduce Player 2 HP' do
  scenario 'reduce player 2 hp by 10' do
    sign_in_and_play
    click_button 'Attack'
    expect(page.find('.hitpoints')).to have_content '50'
  end
end
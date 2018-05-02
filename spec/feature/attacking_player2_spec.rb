feature 'Attacking player 2' do
  scenario 'get a confirmation when I attack Player 2' do
    sign_in_and_play
    click_button :Attack
    expect(page).to have_content 'Igor attacked Roxana'
  end
end

def sign_in_and_play
  visit('/')
  fill_in :p1, with: 'Igor'
  fill_in :p2, with: 'Roxana'
  click_button :Submit
end

names = %w(Cho Koh Ueda Hotaru Yakuza Shuma Ks Joe Inaba okYama)
0.upto(9) do |idx|
  User.create(
    name: names[idx],
    score: idx * 4.5,
    date: Time.now
  )
end

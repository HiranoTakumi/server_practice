def PushButton
  start = 0
  10.times do |i|
    gets
    start = Time.now if i == 0
    print "#{i+1}"
  end
  Time.now - start
end

def log_in(host)
  print "Log In\nUser Name: "
  username = gets.chomp
  Net::HTTP.post_form(URI.parse(host + "login.json"), 'name' => username)
#  req.set_form_data('name' => username)
  res = Net::HTTP.get(URI.parse(host + "login.json"))
  puts JSON.parse(res)["stringify"]
end

def create_account
  puts "Create a new account\nUser Name: "
  username = gets
end

def ranking(host)   # ランキングの取得
  json = Net::HTTP.get(URI.parse(host + "users.json"))
#  https.use_ssl = true
  results = JSON.parse(json)
  display_style(results)
end

def display_style(results)   # ランキングをきれいに表示
  print "RANK\tNAME\tSCORE\tDATE\n"
  results.each_with_index do |result, i|
    print "#{i+1}\t#{result["name"]}\t#{result["score"]}\t#{result["date"]}\n"
  end
end


# ネットワーク設定
require 'net/http'
require 'uri'
require 'json'

HOST = "http://127.0.0.1:3000/"

# Opening
puts "Speed Button"

while true  # ランキングの表示後はもう一度オープニング画面に戻る
  json = Net::HTTP.get(URI.parse(HOST + "start.json"))
  message = JSON.parse(json)["stringify"]
  i = 1
  message.each do |key, item|
    print "#{i}."
    print "#{item}"
    print "\t" if i < message.length
    i += 1
  end

  print "\n>> "
  controller = gets.to_i
  case controller
  when 1
    break if log_in(HOST)    #ログインに成功したらゲームスタート、そうでなければオープニング画面へ
  when 2
    break create_account(HOST)    #アカウント作成に成功したらゲームスタート、そうでなければオープニング画面へ
  when 3
    ranking(HOST)
  else
    print "Input 1~#{message.length}\n>>" if controller > message.length
  end
end

# Game
puts "Push Enter key 10 times as quick as you can."

score = PushButton()

puts "\n#{score} seconds"

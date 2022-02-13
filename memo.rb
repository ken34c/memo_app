require "csv"
 
puts "1(新規でメモを作成) 2(既存のメモ編集する)"
puts "1 or 2 を入力しenterを押してください"

memo_type = gets.to_i
 

if memo_type == 1
  puts"拡張子を除いたファイルを入力下さい。"
  
  file_name= gets.chomp
  
  puts"メモしたい内容を記入してください"
  puts"終了後、Ctrl+Dを押します。"
  
  memo = STDIN.read.chomp
  
  CSV.open("#{file_name}.csv", "w") do |csv|
    csv<<["#{memo}"]
    
  end

elsif memo_type == 2
  puts"拡張子を除いたファイルを入力下さい。"
  
  file_name= gets.chomp
  
  puts "編集内容を入力してください。"
  puts "終了後、Ctrl + D　を推します。"

  memo = STDIN.read.chomp
  
  CSV.open("#{file_name}.csv","a") do |csv|
    csv<<["#{memo}"]
    
  end
  
end

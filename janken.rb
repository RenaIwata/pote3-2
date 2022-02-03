    puts "じゃんけん..."
def janken
    puts "0(グー) 1(チョキ) 2(パー) 3(戦わない)"
    choice = gets.chomp.to_i
    hand = ["グーを出しました", "チョキを出しました", "パーを出しました", "何も出しませんでした"]
    you = rand(3)# 配列からランダム選択
    puts "ポイ！"
    puts "-----------------"
    puts "あなた: #{hand[choice]}"
    puts "相手: #{hand[you]}"

    if choice == you
        puts "あいこで..."
        return true
    elsif choice == 0 && you == 1 || choice == 1 && you == 2 || choice == 2 && you == 0 
        @result = "win"
        return false
    else    
        puts "もう一回！"
        return true
    end
end
again_game = true
while again_game
    again_game = janken
end

if @result == "win"
    # def again_game
    puts "あっちむいて..."
    puts "0(上) 1(下) 2(右) 3(左)"
    next_choice = gets.chomp.to_i
    hand = ["上", "下", "右", "左"]
    you = rand(4)
    puts "ホイ！"
    puts "-----------------"
    puts "あなた: #{hand[next_choice]}"
    puts "相手: #{hand[you]}"
    # end
end
    if next_choice == you
        puts "あなたの勝ち！"
    else    
        puts "あなたの負け！"
    end

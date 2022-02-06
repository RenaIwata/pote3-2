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
        puts "あっちむいて..."
        puts "0(上) 1(下) 2(右) 3(左)"
        me = gets.chomp.to_i
        finger = ["上", "下", "右", "左"]
        program = rand(4)
        puts "ホイ！"
        puts "-----------------"
        puts "あなた: #{finger[me]}"
        puts "相手: #{finger[program]}"
        if me == program
            puts "あなたの勝ち！"
            return false
        else me != program
            puts "もう一度じゃんけんから！"
            return true
        end
    else 
        puts "負けたので顔を向ける方向を決めてください"  
        puts "あっちむいて..."
        puts "0(上) 1(下) 2(右) 3(左)"
        me = gets.chomp.to_i
        finger = ["上", "下", "右", "左"]
        program = rand(4)
        puts "ホイ！"
        puts "-----------------"
        puts "あなた: #{finger[me]}"
        puts "相手: #{finger[program]}"
        if me == program
            puts "あなたの負け！"
            return false
        else me != program
            puts "もう一度じゃんけんから！"
            return true
        end
    end
end
again_game = true
while again_game
    again_game = janken
end
# Enumerableクラス
# 標準クラス・モジュール
# 参考：https://ref.xaio.jp/ruby/classes/enumerable
# ArrayやHash、Rangeなど、「オブジェクトの集まり」を表現するクラスにはEnumerableがincludeされており、それら全てのクラスで活用できる。

## inject
# eachやmapのように繰り返しを行うメソッド。ブロックを使って、繰り返しの演算を行うことができる
# injectメソッドは、ブロックを使って繰り返し計算を行うのに使います。
# 配列オブジェクト.inject {|初期値, 要素| ブロック処理 }
# 配列の中身の合計を出力
# 引数は、配列の0番目から処理という意味
array = 1..6
array.inject (0)  { |sum, num| p sum += num }

## each_with_index
# 要素の数だけブロックを繰り返し処理を行う
%w(ruby js python).each_with_index do |value, key|
  puts "#{key}番目は、#{value}"
end

### each_with_index
# 数字と要素を実行結果として返してくれる
# 単なるオブジェクトの場合
array = ["ruby", "python", "unity"]
array.each_with_index do |item, i|
  puts "番号#{i+1}は#{item}です"
end
# hashの場合
hash = {one: "いち", two: "に", three: "さん"}
hash.each_with_index do |(key, value), i|
  puts "#{key}から取り出されるのは#{value}です"
end

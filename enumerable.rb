# Enumerableクラス
# 標準クラス・モジュール
# 参考：https://ref.xaio.jp/ruby/classes/enumerable

## inject
# eachやmapのように繰り返しを行うメソッド。ブロックを使って、繰り返しの演算を行うことができる
# 配列オブジェクト.inject {|初期値, 要素| ブロック処理 }
# 配列の中身の合計を出力
array = 1..6
array.inject (0)  { |sum, num| p sum += num }

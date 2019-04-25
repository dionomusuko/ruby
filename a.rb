class Array

    def quick_sort
        # 再帰用のおまじない。
        # レシーバが空、もしくは要素が1つのみの場合はレシーバをそのまま返す。
        return self if self.size < 2

        # ピボットを設定する。
        pivot = self.shift

        # それぞれピボットより大きい要素、小さい要素を格納する配列。
        smallers = []
        biggers = []
        self.each do |num|
            if num < pivot
                smallers << num
            else # num >= pivot
                biggers << num
            end
        end

        # smallersとbiggersをそれぞれソートして連結。
        smallers.quick_sort + [pivot] + biggers.quick_sort

    end
end

p [3,2,1,5,4].quick_sort #=> [1, 2, 3, 4, 5]

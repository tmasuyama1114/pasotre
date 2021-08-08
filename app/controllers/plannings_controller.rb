class PlanningsController < ApplicationController
  require 'securerandom'

  def index
    menu_latest = Menu.first
    set_latest = menu_latest.set
    @menus = Menu.where(set: set_latest).order(num: :asc)
  end

  def new
    @planning = Planning.new
  end

  def create
    @planning = Planning.new(planning_params)

    # メニュー生成用の変数
    todayLevel = (@planning.level * @planning.condition).ceil + @planning.adjustment
    i = 0
    @sumTime = 0

    # 同じセットメニューを識別するためのランダムな文字列を生成
    this_set = SecureRandom.alphanumeric(10)

    while @sumTime < @planning.allowed_time # 時間が許す限りメニューを追加していく
      # トレーニングを選んでくる処理
      if i % 2 == 0 # トレーニングと休憩を交互に
        training = Training.where(part: @planning.focus).sample  # 集中鍛錬部位に合致するトレーニングを1個選ぶ (後でランダム選択にする)
      else
        training = Training.where.not(part: @planning.focus).sample  # 集中鍛錬部位以外のトレーニングを1個選ぶ
      end

      # i 番目のメニューを作成する処理
      menu = Menu.new # インスタンスを作成
      menu.training_id = training.id 
      menu.count = (training.basis * todayLevel).ceil # 基礎レベルに倍率をかけて回数を算出
      menu.num = i # 何番目のメニューであるか
      menu.set = this_set
      menu.save

      time = ((training.time).to_f / 60 * menu.count).ceil # このトレーニングに要する時間を 1 分単位で算出
      @sumTime += time # 所要時間の計算に加算
      @sumTime += 1 # 休憩時間を加算 (1分)
      i += 1 # 次のメニュー生成へ
    end

    # @menus = Menu.where(set: this_set).order(num: :asc) # セット値が同じメニューを出力

    redirect_to plannings_path  # 作成したメニュー画面に遷移
    flash[:success] = "メニューを作成しました"
  end

  private
  def planning_params
    params.require(:planning).permit(:level, :condition, :adjustment, :focus, :allowed_time)
  end

end

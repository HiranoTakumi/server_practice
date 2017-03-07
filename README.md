# README

サーバ管理練習用プロジェクト（仮）

_「Enterキーを10回連打する時間をスコアとしてデータベースで管理し、ユーザーのランキングを作る」_

-------------------------------------------------------------------------------------------------------------------
*完成型の構想*

* アカウントごとにスコアをデータベースに記録し、ハイスコアをマークすると自分の記録が更新される。 
* プレイには必ずアカウントが必要、ユーザー名とパスワードで管理する。
* オープニング画面でランキングを呼び出すコマンドを入力すると、現時点での全ユーザーの記録が好成績順に表示される。
  
備考:

* 10回連打する時間を計測するクライアント側もRubyで記述している
* speed_button.rbファイルを実行するとログイン、アカウント作成、ランキング表示を選択する画面が表示される
* ランキング表示を選択、及びログイン、アカウント作成に失敗するともう一度オープニング画面に戻る
  
-------------------------------------------------------------------------------------------------------------------
_2017年3月8日_

データベースのユーザー情報をJSON形式で出力でき、ランキングの表示に成功した  
続いてログイン機能を実装しようとしているが、クライアントからサーバにJSON形式の文字列を送信する方法がわからず、躓いている  
（簡単のため、パスワードなしでログインすることを今のところ目指している）  

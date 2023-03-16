# アプリケーション名
Corecipe
# アプリケーション概要
料理のレシピを共有して、ユーザー同士でコミュニケーションをとることで、手軽に情報交換することができます。
# URL
https://corecipe.onrender.com
# テスト用アカウント
・Basic認証パスワード：0905<br>
・Basic認証ID：admin<br>
・メールアドレス：test1@test.com<br>
・パスワード：test1test1
# 利用方法
## レシピ投稿
1.トップページ（一覧ページ）のヘッダーからユーザー新規登録を行います<br>
2.「レシピを投稿する」ボタンから、レシピの内容（名前・画像・コメント欄・カテゴリー・分量・材料・料理工程）を入力し「投稿する」ボタンを押します
## レシピ検索
トップページのヘッダーにある検索フォームにキーワードを入力して検索します
## コメントする
詳細ページの下部にあるコメントフォームにそのレシピについての感想・意見などを入力し「コメントする」ボタンを押します
# アプリケーションを作成した背景
家に自分が興味を持ったレシピのメモ書きが大量に貯まっていて、整理しようと思いました。また知人とおすすめレシピを教え合うことがあり、そうした情報を口頭だけでなく記録に残す形で共有できたら便利だなと思いました。
# 洗い出した要件
[![Image from Gyazo](https://i.gyazo.com/a250bbb5be514b2f284723515d9f9459.jpg)](https://gyazo.com/a250bbb5be514b2f284723515d9f9459)
# 実装した機能についての画像やGIF
・レシピ投稿フォームの文字数カウント機能の挙動です
[![Image from Gyazo](https://i.gyazo.com/6247c5494a79d63efaa34de25d0f76f6.gif)](https://gyazo.com/6247c5494a79d63efaa34de25d0f76f6)
・レシピ検索機能の画像です
[![Image from Gyazo](https://i.gyazo.com/1d11fffa69f37285032f6dc63d71ae1c.jpg)](https://gyazo.com/1d11fffa69f37285032f6dc63d71ae1c)
・マイページの画像です
[![Image from Gyazo](https://i.gyazo.com/7b8a2af5b9c69df69a9985d110b6b745.jpg)](https://gyazo.com/7b8a2af5b9c69df69a9985d110b6b745)
・コメント投稿後の画像です（画面最下部）
[![Image from Gyazo](https://i.gyazo.com/93a2897226e9fc6758b84fb0c85870d8.jpg)](https://gyazo.com/93a2897226e9fc6758b84fb0c85870d8)
# 実装予定の機能
今後は新規レシピを投稿すると、ユーザーのLINEアカウントにお知らせが届く機能を実装予定です。
# データベース設計
[![Image from Gyazo](https://i.gyazo.com/427cb48531741494557db49d7e1bc759.png)](https://gyazo.com/427cb48531741494557db49d7e1bc759)
# 画面遷移図
[![Image from Gyazo](https://i.gyazo.com/997da88b4d59d20e3b8bf6c1a7d35dc5.png)](https://gyazo.com/997da88b4d59d20e3b8bf6c1a7d35dc5)
# 開発環境
・フロントエンド HTML, CSS, Javascript, Bootstrap<br>
・バックエンド Ruby, Ruby on Rails<br> 
・インフラ Render, Postgresql, AWS<br>
・テスト RSpec<br>
・テキストエディタ Visual Studio Code<br>
・タスク管理  GitHub
# ローカルでの動作方法
以下のコマンドを順に実行。<br>
% git clone https://github.com/moonlight0905/corecipe<br>
% cd ・・・・・<br> 
% bundle install<br>
% yarn install
# 工夫したポイント
保守運用しやすくするために、簡潔で分かりやすいコーディングを心がけました。フロントサイドについては、食がテーマのアプリケーションなので、食欲をそそる配色を採用しました。
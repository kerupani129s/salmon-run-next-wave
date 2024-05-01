# Nintendo Switch データ管理

## microSD カード

microSD カードの規格は以下のことを確認:

- UHS-I
	- 表記: I
	- 最大転送速度
		- SDR104 の場合: 104MB/s
		- DDR200 の場合: 200MB/s
		- **(要確認)** Nintendo Switch は SDR104
- UHS スピードクラス 3
	- 表記: U3
	- 最小転送速度
		- シーケンシャル: 30MB/s
- ビデオスピードクラス 30
	- 表記: V30
	- 最小転送速度
		- シーケンシャル: 30MB/s
- アプリケーションパフォーマンスクラス 2
	- 表記: A2
	- 最小転送速度
		- ランダムリード: 4000IOPS
			- 4KB × 4000 / 1s = 15.625MB/s
		- ランダムライト: 2000IOPS
			- 4KB × 2000 / 1s = 7.8125MB/s
		- シーケンシャル: 10MB/s

フォーマットは以下の通り:

- ファイルシステム: exFAT
- アロケーションユニットサイズ: 128KB

古い情報で「Nintendo Switch でファイルシステムに exFAT を用いるとデータが壊れる」というものがありますが、現在はおそらく改善されています。

参考:

- [microSDカードについて｜Nintendo Switch サポート情報｜Nintendo](https://www.nintendo.co.jp/support/switch/data_management/microsdcard/index.html)
- [SD メモリカードのロゴと規格について | SD Association](https://www.sdcard.org/ja/consumers-2/about-sd-memory-card-choices/)
- [バスインターフェーススピード | SD Association](https://www.sdcard.org/ja/developers-2/sd-standard-overview/bus-speed-default-speed-high-speed-uhs-sd-express/)
- [スピードクラス規格/動画撮影のための規格 | SD Association](https://www.sdcard.org/ja/consumers-2/about-sd-memory-card-choices/speed-class-standards-for-video-recording/)
- [スマートフォンアプリ実行用 アプリケーションパフォーマンスクラス | SD Association](https://www.sdcard.org/ja/consumers-2/about-sd-memory-card-choices/application-performance-class-for-running-smartphone-apps/)
- [アプリケーションパフォーマンスクラス | SD Association](https://www.sdcard.org/ja/developers-2/sd-standard-overview/application-performance-class/)

## データの保存先

データが保存可能な保存先は以下の通り:

- セーブデータ
	- 本体保存メモリー
- ソフトのデータ
	- ダウンロード版ソフト
		- 本体保存メモリー
		- microSD カード
	- パッケージ版ソフト
		- ゲームカード
- 画面写真および動画
	- 本体保存メモリー
	- microSD カード

データの保存先は以下のことを確認:

- ソフトのデータ: 本体保存メモリー
	- パッケージ版ソフトのゲームカードのデータ読み込みは遅いため、可能であればダウンロード版ソフトにする。
	- データ読み書きは本体保存メモリーの方が microSD カードより速いため、可能であれば本体保存メモリーにソフトのデータを保存する。
- 画面写真および動画: microSD カード
	- 画面写真および動画は容量とは別に保存数の上限があるため、microSD カードに保存する。

microSD カードに保存するデータは以下のことを確認:

- 本体保存メモリーに保存できないソフトのデータ
- 画面写真および動画

ちなみに、ソフトのデータと画面写真および動画の保存先を分けることで、ゲームのプレイ中にゲーム画面の動画を撮影した場合の動作が安定することがあります。

参考:

- [データの管理｜Nintendo Switch サポート情報｜Nintendo](https://www.nintendo.co.jp/support/switch/data_management/index.html)
- [【Switch】本体保存メモリーに保存されているデータを、microSDカードに移動することはできますか？](https://support-jp.nintendo.com/app/answers/detail/a_id/33844/p/8664)
- [【Switch】アルバム（画面写真、動画）の保存数に上限はありますか？](https://support-jp.nintendo.com/app/answers/detail/a_id/37286/p/8664)
- [【Switch】画面写真や動画が撮影できません。キャプチャーボタンを押しても反応がありません。](https://support-jp.nintendo.com/app/answers/detail/a_id/33861)

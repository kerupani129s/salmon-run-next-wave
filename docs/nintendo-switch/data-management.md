# Nintendo Switch データ管理

## microSD カード

### 規格

microSD カードの規格は以下のことを確認:

- 容量帯
	- microSDHC 4GB–32GB
	- microSDXC 64GB–2TB
	- 無印の microSD は UHS-I 不対応
	- Nintendo Switch は microSDUC 不対応
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
	- **(要確認)** Nintendo Switch は不対応

参考:

- [microSDカードについて｜Nintendo Switch サポート情報｜Nintendo](https://www.nintendo.co.jp/support/switch/data_management/microsdcard/index.html)
- [SD メモリカードのロゴと規格について | SD Association](https://www.sdcard.org/ja/consumers-2/about-sd-memory-card-choices/)
- [容量(SD/SDHC/SDXC/SDUC) | SD Association](https://www.sdcard.org/ja/developers-2/sd-standard-overview/capacity-sd-sdhc-sdxc-sduc/)
- [バスインターフェーススピード | SD Association](https://www.sdcard.org/ja/developers-2/sd-standard-overview/bus-speed-default-speed-high-speed-uhs-sd-express/)
- [スピードクラス規格/動画撮影のための規格 | SD Association](https://www.sdcard.org/ja/consumers-2/about-sd-memory-card-choices/speed-class-standards-for-video-recording/)
- [スマートフォンアプリ実行用 アプリケーションパフォーマンスクラス | SD Association](https://www.sdcard.org/ja/consumers-2/about-sd-memory-card-choices/application-performance-class-for-running-smartphone-apps/)
- [アプリケーションパフォーマンスクラス | SD Association](https://www.sdcard.org/ja/developers-2/sd-standard-overview/application-performance-class/)

### フォーマット

フォーマットは以下の通り:

- microSDHC の場合
	- **(要確認)** ファイルシステム: FAT32
	- **(要確認)** アロケーションユニットサイズ: 32KB
- microSDXC の場合
	- ファイルシステム: exFAT
	- アロケーションユニットサイズ: 128KB

「Nintendo Switch で microSD カードをフォーマットするとファイルシステムが FAT32 になる」という情報がありますが、少なくとも microSDXC では exFAT になります。

古い情報で「Nintendo Switch でファイルシステムに exFAT を用いるとデータが壊れる」というものがありますが、現在はおそらく改善されています。

### 交換

microSD カードを交換するときは以下のことに注意:

- データは手動で移動するか、または再ダウンロードが必要
- 複数の Nintendo Switch や、microSD カード交換前と交換後の Nintendo Switch のデータをまとめることは不可
- microSD カード交換前に Nintendo Switch 本体の電源を OFF にする
	- [【Switch】本体の電源をOFFにする方法は？](https://support-jp.nintendo.com/app/answers/detail/a_id/33801)
- [microSDカードのデータコピー｜Nintendo Switch サポート情報｜Nintendo](https://www.nintendo.co.jp/support/switch/data_management/copy/index.html)
- [【Switch】撮影した画面写真や動画を、パソコンやスマートフォン、別のNintendo Switchに移したい。](https://support-jp.nintendo.com/app/answers/detail/a_id/34865)

## データ

### 保存可能な保存先

データを保存可能な保存先は以下の通り:

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

参考:

- [データの管理｜Nintendo Switch サポート情報｜Nintendo](https://www.nintendo.co.jp/support/switch/data_management/index.html)

### 保存先

データの保存先は以下のことを確認:

- ソフトのデータ: 本体保存メモリー
	- パッケージ版ソフトのゲームカードはデータ読み込みが遅いため、ダウンロード版ソフトを推奨
	- データ読み書きは本体保存メモリーの方が microSD カードより速いため、本体保存メモリーを推奨
- 画面写真および動画: microSD カード
	- 画面写真および動画は容量とは別に保存数の上限があるため、microSD カードを推奨
		- [【Switch】アルバム（画面写真、動画）の保存数に上限はありますか？](https://support-jp.nintendo.com/app/answers/detail/a_id/37286/p/8664)
		- [【Switch】画面写真や動画が撮影できません。キャプチャーボタンを押しても反応がありません。](https://support-jp.nintendo.com/app/answers/detail/a_id/33861)

microSD カードに保存するデータは以下のことを確認:

- 本体保存メモリーに保存できないソフトのデータ
- 画面写真および動画

ちなみに、ソフトのデータと画面写真および動画の保存先を分けることで、ゲームのプレイ中にゲーム画面の動画を撮影した場合の動作が安定することがあります。

### 保存先の変更および移動

データの保存先の変更および移動は以下の通り:

- ソフトのデータ
	- ダウンロード時の保存先は microSD カード優先
		- [【Switch】ニンテンドーeショップでダウンロードしたデータはどこに保存されますか？](https://support-jp.nintendo.com/app/answers/detail/a_id/34025/p/8664)
	- ダウンロード後に本体保存メモリーへ移動可能
		- 一部の更新データは移動不可
- 画面写真および動画
	- 保存先を変更可能
	- 本体保存メモリーへコピー可能
		- [画面写真/動画の管理｜Nintendo Switch サポート情報｜Nintendo](https://www.nintendo.co.jp/support/switch/data_management/screenshot_movie/index.html)

参考:

- [データの管理｜Nintendo Switch サポート情報｜Nintendo](https://www.nintendo.co.jp/support/switch/data_management/index.html)
- [【Switch】本体保存メモリーに保存されているデータを、microSDカードに移動することはできますか？](https://support-jp.nintendo.com/app/answers/detail/a_id/33844/p/8664)

# Nintendo Switch インターネット接続

## 有線接続

LAN ケーブルは以下のことを確認:

- 最大通信速度: 1Gbps 以上
	- 最大通信速度: 2.5Gbps
		- Cat.5e UTP
	- 最大通信速度: 10Gbps
		- Cat.6 UTP
		- Cat.6A UTP
		- Cat.6A STP
- 形状: スタンダードタイプ
	- フラットタイプはノイズの影響を受けやすいため、スタンダードタイプを推奨
	- 太さによって曲げやすさが異なる
- STP は外装と内装の 2 種類あり
	- Cat.6A STP および Cat.8.1 は外装のみの STP
	- Cat.7 および Cat.8.2 は外装と内装の STP
- Cat.5 はものによって最大通信速度が異なるため注意
- Cat.6e は正式でないため非推奨
- **RJ-45 8P8C を用いた Cat.7 は正式でないため非推奨**
- Cat.8.1 は不要

### 有線 LAN アダプタを使用する場合

市販の有線 LAN アダプタを使用する場合は以下のことを確認:

- 1000BASE-T IEEE802.3ab 対応
	- 最大通信速度: 1Gbps
- Nintendo Switch 対応

ただし Nintendo Switch ドックの USB は USB 2.0 として動作するため、理論上 480Mbps が最大速度。

ちなみに「任天堂ライセンス商品」の有線 LAN アダプタは最大通信速度が 100Mbps のため注意:

- ホリ HORI
- LANアダプター for Nintendo Switch
- NSW-004
- 100BASE-TX IEEE802.3u 対応
	- 最大通信速度: 100Mbps
- [株式会社 HORI | LANアダプター for Nintendo Switch](https://hori.jp/products/nsw/lanadapter/)

### Nintendo Switch ドック (有機ELモデル付属) HEG-007 を使用する場合

Nintendo Switch ドック (有機ELモデル付属) HEG-007 の特徴:

- 有線 LAN 端子搭載
- 従来の Nintendo Switch 本体 HAC-001 も使用可能
	- [【Switch】有機ELモデルを、従来のNintendo Switchドックに差し込んで使うことはできますか？](https://support-jp.nintendo.com/app/answers/detail/a_id/37466)
- ドックのみ購入可能
	- [Nintendo Switch ドック（有機ELモデル付属） | 任天堂パーツ販売](https://onlineshop.nintendo.co.jp/item-detail/1230069)
	- 他通販等でもドックのみやドックセットを購入可能

## NAT タイプを A にする

NAT タイプは以下の方法で確認:

- [NATタイプの確認方法：エラーコード対処方法（Switch）](https://support-jp.nintendo.com/app/answers/detail/a_id/34269)

### Nintendo Switch のローカル IP アドレスを固定する

前提:

- DHCP に自動で割り当てられるローカル IP アドレスが 192.168.2.10 等の場合、192.168.2.254 等に固定

ルーターの設定:

- 「ローカル IP アドレス」と「MAC アドレス」を指定して DHCP 固定
	- **有線 LAN アダプタまたはドックを変更すると MAC アドレスも変わるため注意**
	- [How to Find a MAC Address on Nintendo Switch 2 or Nintendo Switch | Nintendo Support](https://en-americas-support.nintendo.com/app/answers/detail/a_id/22397)

Nintendo Switch の設定:

- [IPアドレス手動設定方法：エラー対処方法（Switch）](https://support-jp.nintendo.com/app/answers/detail/a_id/34008)
- IP アドレス設定: 手動
- IP アドレス: 「ローカル IP アドレス」を指定して固定
- サブネットマスク: IP アドレス設定が「自動」のときの値をメモして同じものを設定
	- 多くの場合 255.255.255.0
- ゲートウェイ: IP アドレス設定が「自動」のときの値をメモして同じものを設定
	- DHCP に自動で割り当てられるローカル IP アドレスが 192.168.2.10 等の場合、192.168.2.1 等
- DNS 設定
	- Cloudflare の場合
		- 優先 DNS: 1.1.1.1
		- 代替 DNS: 1.0.0.1
		- [IP addresses · Cloudflare 1.1.1.1 docs](https://developers.cloudflare.com/1.1.1.1/ip-addresses/)

### ポートを開放する

ルーターの設定:

- UDP ポート番号 1024–65535 を Nintendo Switch のローカル IP アドレスに転送
	- [【Switch】オンラインゲームをおこなうとき、ルーターのどのポートを開放すればよいですか？](https://support-jp.nintendo.com/app/answers/detail/a_id/36082)

### その他

NAT タイプを A にできない場合は以下も参照:

- [【Switch】NATタイプ：AまたはBの場合：エラーコード対処方法](https://support-jp.nintendo.com/app/answers/detail/a_id/34273)
- [【Switch】NATタイプ：CまたはDの場合：エラーコード対処方法](https://support-jp.nintendo.com/app/answers/detail/a_id/34275)
- [【Switch】NATタイプ：Fの場合：エラーコード対処方法](https://support-jp.nintendo.com/app/answers/detail/a_id/34277)

## MTU について

「回線ごとに最適な MTU 値にすべき」という情報がありますが、自分側の回線では最適でも通信相手側の回線でも最適とは限らないため、上げるとしても 1450 程度にすべきです。

Nintendo Switch における MTU の設定の初期値は 1400 です。

MTU の値を変更する方法:

- [How to Change/View Existing Internet Connection Settings on Nintendo Switch 2 or Nintendo Switch | Nintendo Support](https://en-americas-support.nintendo.com/app/answers/detail/a_id/22316)

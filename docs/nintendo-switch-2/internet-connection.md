# Nintendo Switch 2 インターネット接続

## 有線接続

**(要確認)** Nintendo Switch 2 の 最大通信速度は 1Gbps ？

LAN ケーブルは以下のことを確認:

- 最大通信速度: **1Gbps 以上**
	- 最大通信速度: 2.5Gbps
		- Cat.5e UTP
	- 最大通信速度: 10Gbps
		- Cat.6 UTP
		- Cat.6A UTP
		- Cat.6A STP
- 形状: **スタンダードタイプ**
	- フラットタイプはノイズの影響を受けやすいため、スタンダードタイプを推奨
	- 太さによって曲げやすさが異なる
- STP は外装と内装の 2 種類あり
	- Cat.6A STP および Cat.8.1 は外装のみの STP
	- Cat.7 および Cat.8.2 は外装と内装の STP
- Cat.5 はものによって最大通信速度が異なるため注意
- Cat.6e は正式でないため非推奨
- **RJ-45 8P8C を用いた Cat.7 は正式でないため非推奨**
- Cat.8.1 は不要

## IPv6 接続を有効にする

Nintendo Switch 2 の設定:

- IPv6 接続: **有効**

## NAT タイプを A にする

NAT タイプは以下の方法で確認:

- [NATタイプの確認方法：エラーコード対処方法（Switch）](https://support-jp.nintendo.com/app/answers/detail/a_id/34269) (Nintendo Switch)

### Nintendo Switch 2 のローカル IPv4 アドレスを固定する

前提:

- DHCP に自動で割り当てられるローカル IPv4 アドレスが `192.168.2.10` 等の場合、`192.168.2.254` 等に固定

ルーターの設定:

- 「ローカル IPv4 アドレス」と「MAC アドレス」を指定して DHCP 固定
	- **ドックを変更すると MAC アドレスも変わるため注意**
	- [How to Find a MAC Address on Nintendo Switch 2 or Nintendo Switch | Nintendo Support](https://en-americas-support.nintendo.com/app/answers/detail/a_id/22397)

Nintendo Switch 2 の設定:

- [IPアドレス手動設定方法：エラー対処方法（Switch）](https://support-jp.nintendo.com/app/answers/detail/a_id/34008) (Nintendo Switch)
- IPv4 アドレス設定: **手動**
- IPv4 アドレス: 「ローカル IPv4 アドレス」を指定して固定
- サブネットマスク: IPv4 アドレス設定が「自動」のときの値をメモして同じものを設定
	- 多くの場合 `255.255.255.0`
- ゲートウェイ: IPv4 アドレス設定が「自動」のときの値をメモして同じものを設定
	- DHCP に自動で割り当てられるローカル IPv4 アドレスが `192.168.2.10` 等の場合、`192.168.2.1` 等
- DNS 設定
	- Cloudflare の場合
		- 優先 DNS IPv4: `1.1.1.1`
		- 代替 DNS IPv4: `1.0.0.1`
		- 優先 DNS IPv6: `2606:4700:4700::1111`
		- 代替 DNS IPv6: `2606:4700:4700::1001`
		- [IP addresses · Cloudflare 1.1.1.1 docs](https://developers.cloudflare.com/1.1.1.1/ip-addresses/)

### ポートを開放する

ルーターの設定:

- UDP ポート番号 **1024–65535** を Nintendo Switch 2 のローカル IPv4 アドレスに転送
	- [【Switch】オンラインゲームをおこなうとき、ルーターのどのポートを開放すればよいですか？](https://support-jp.nintendo.com/app/answers/detail/a_id/36082) (Nintendo Switch)

### その他

NAT タイプを A にできない場合は以下も参照:

- [【Switch】NATタイプ：AまたはBの場合：エラーコード対処方法](https://support-jp.nintendo.com/app/answers/detail/a_id/34273) (Nintendo Switch)
- [【Switch】NATタイプ：CまたはDの場合：エラーコード対処方法](https://support-jp.nintendo.com/app/answers/detail/a_id/34275) (Nintendo Switch)
- [【Switch】NATタイプ：Fの場合：エラーコード対処方法](https://support-jp.nintendo.com/app/answers/detail/a_id/34277) (Nintendo Switch)

## MTU について

「回線ごとに最適な MTU 値にすべき」という情報がありますが、自分側の回線では最適でも通信相手側の回線でも最適とは限らないため、上げるとしても **1450** 程度にすべきです。

Nintendo Switch 2 における MTU の設定の初期値は **1400** です。

MTU の値を変更する方法:

- [How to Change/View Existing Internet Connection Settings on Nintendo Switch 2 or Nintendo Switch | Nintendo Support](https://en-americas-support.nintendo.com/app/answers/detail/a_id/22316)

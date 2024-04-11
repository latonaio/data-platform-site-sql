# data-platform-site-sql 

data-platform-site-sql は、データ連携基盤において、サイトデータを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-site-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-site-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-site-sql-header-data.sql（データ連携基盤 サイト - ヘッダデータ）
* data-platform-site-sql-header-doc-data.sql（データ連携基盤 サイト - ヘッダ文書データ）
* data-platform-site-sql-partner-data.sql（データ連携基盤 サイト - 取引先データ）
* data-platform-site-sql-address-data.sql（データ連携基盤 サイト - 住所データ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  

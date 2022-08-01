# 各リージョンのAWS Configのチャネル・レコーダ設定を削除したい
# AWS コンソール画面からは削除ができない

# リージョンごと
foreach ($r in $(aws ec2 describe-regions --query Regions[*].RegionName --output json).Trim(",").Trim()) {
    Write-Output "リージョン（$r）内の AWS Config をスキャン中"
    # チャネル名特定
    foreach ($channel_name in $(aws configservice describe-delivery-channels --region $r --query DeliveryChannels[*].name --output text)) {
        # レコーダ名特定
        $recorder_name = $(aws configservice describe-configuration-recorders --region $r --query ConfigurationRecorders[*].name --output text)
        # レコーダ削除
        Write-Output "レコーダ ($recorder_name) 削除開始"
        aws configservice delete-configuration-recorder --configuration-recorder-name $recorder_name --region $r
        # チャネル削除
        Write-Output "チャネル ($channel_name) 削除開始"
        aws configservice delete-delivery-channel --delivery-channel-name $channel_name --region $r
    }
}
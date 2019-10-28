# terraform-aws
やること
- sshの接続確認

リンク
https://testinfra.readthedocs.io/en/latest/modules.html#sysctl

# to make directory of ansible

```bash
$ ansible-galaxy init DIR_NAME
```

# install some galaxy
```bash
$ ansible-galaxy install geerlingguy.apache

$ ansible-galaxy install grog.user

$ ansible-galaxy install grog.authorized-key
```

# exexute 
```
$ py.test -v --connection=ansible --ansible-inventory=ansible/inventory  test_infra.py --connection=ansible
```


✨ :sparkles:	新規機能追加
📝 :memo:	ドキュメント追加
🔉 :sound:	ログ追加
✅ :white_check_mark:	テストの追加
👍 :+1:	機能修正
🚀 :rocket:	パフォーマンス改善
👮 :cop:	セキュリティ関連の改善
✏️ :pencil2:	タイポなどの修正
🎨 :art:	リファクタリング
🚧 :construction:	コメントアウトなど
🔥 :fire:	ファイル削除
🔇 :mute:	ログ削除
🐛 :bug:	バグ修正
🔖 :bookmark:	バージョンアップ
🎉 :tada:	イニシャルコミット
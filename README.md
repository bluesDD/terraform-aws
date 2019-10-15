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

# exexute test
```
$ py.test -v --connection=ansible --ansible-inventory=ansible/inventory  test_infra.py --connection=ansible
```

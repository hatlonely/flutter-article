# flutter-article

## 运维

```shell
ops --variable .cfg/dev.yaml --env dev -a dep
ops --variable .cfg/dev.yaml --env dev -a run --task api
ops --variable .cfg/dev.yaml --env dev -a run --task imageSync
ops --variable .cfg/dev.yaml --env dev -a run --task image
ops --variable .cfg/dev.yaml --env dev -a run --task helm --cmd=diff
ops --variable .cfg/dev.yaml --env dev -a run --task helm --cmd=install
ops --variable .cfg/dev.yaml --env dev -a run --task helm --cmd=upgrade
```

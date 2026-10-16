# 测算码说明
- 每码 3 次，跨设备计数；同一标签页会话内「再测一次」不重复扣次
- 存储：MantleDB namespace `catquiz-zph420-codes`，集合 `bz/`（与猫咪测试的 `c/` 互不通用）
- 造码：`MANTLE_CREDS=/path/mantle.json ./tools/mint.sh 20`
- 查余量：`MANTLE_CREDS=... ./tools/list-codes.sh BZXXXX`
- 链接直达：`https://zengpenghui420-glitch.github.io/bazi-love/?code=BZXXXX`

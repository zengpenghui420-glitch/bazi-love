# 测算码说明
- 验证码：每码 3 次，跨设备计数；同一标签页会话内「再测一次」不重复扣次。仍走 Mantle，不走 quiz-code-api
- 小红书订单号：整段贴上来，整理成 `P` + 18 位数字后走 `https://snappy-tundra-7uesdvk.tmp.now`（quiz=`bazi`）。开始测算和「再测一次」是 `POST /order/redeem`（扣 1 次，最多 3 次）；同一标签页刷新已有结果是 `GET /order/get`（不扣次，`not_found` 不打开结果）
- 存储：MantleDB namespace `catquiz-zph420-codes`，集合 `bz/`（与猫咪测试的 `c/` 互不通用）
- 造码：`MANTLE_CREDS=/path/mantle.json ./tools/mint.sh 20`
- 查余量：`MANTLE_CREDS=... ./tools/list-codes.sh BZXXXX`
- 链接直达：`https://zengpenghui420-glitch.github.io/bazi-love/?code=BZXXXX`

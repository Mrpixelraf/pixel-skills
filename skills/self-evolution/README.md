# self-evolution

> memory-architect 的主动反思伙伴 —— 一个 Claude Code Skill

让 Claude 不只是「记住」纠错，还会**周期性回顾、抽象出纠正模式、提议升级 `EVOLUTION.md`**。

## memory-architect vs self-evolution

| 角色 | 捕获方式 | 负责文件 |
|------|---------|---------|
| `memory-architect` | **被动** —— 每次纠错实时写入 | `MEMORY.md` 纠错日志 |
| `self-evolution` | **主动** —— 周期回顾、抽模式、提 diff | `EVOLUTION.md` 纠正模式 / 能力矩阵 / 进化日志 |

memory-architect 记录「发生了什么」，self-evolution 提炼「这意味着什么」。两者互补，配套使用。

## 触发

「复盘 / 自我进化 / 总结协作 / review our collaboration / 我们哪里可以改进 / milestone review」

## 工作流

1. 读 workspace 根目录的 `EVOLUTION.md` + `MEMORY.md` 纠错日志（限定文件，不扫全仓）
2. 对比找出「已在 MEMORY 但未升入 EVOLUTION」的高频纠正模式
3. 生成针对 `EVOLUTION.md` 的 diff 提议（单次最多 3 条，每条必附 MEMORY 原文引用）
4. **等待显式批准** —— 批准前绝不动文件
5. 批准后用 `Edit` 落地，并在进化日志追加带日期的摘要

## 安装

```bash
git clone https://github.com/Mrpixelraf/self-evolution.git ~/.claude/skills/self-evolution
```

依赖 `memory-architect` 已先行配置（需要 `EVOLUTION.md` + `MEMORY.md` 存在）。

## License

MIT

---
name: self-evolution
description: memory-architect 的主动反思伙伴。读 workspace 根目录 EVOLUTION.md + MEMORY.md 纠错日志，提炼未沉淀的纠正模式，生成针对 EVOLUTION.md 的 diff 提议，批准后才写入。Triggers 复盘 / 自我进化 / 总结协作 / review our collaboration / 我们哪里可以改进 / milestone review.
---

# 自我进化（EVOLUTION.md diff 提议者）

## 定位

**不是** memory-architect 的替代品，而是它的**主动反思伙伴**：

| 角色 | 捕获方式 | 文件 |
|------|---------|------|
| memory-architect | **被动** — 每次纠错实时写入 | `MEMORY.md` 纠错日志 |
| self-evolution | **主动** — 周期性回顾、抽模式、提 diff | `EVOLUTION.md` 纠正模式/能力矩阵/进化日志 |

两者互补：memory-architect 记录"发生了什么"，self-evolution 提炼"这意味着什么"。

## 触发

- 用户明确说："复盘 / 自我进化 / 总结协作 / review our collaboration / 我们哪里可以改进"
- 里程碑边界（PR 合并、feature 上线、周/月末）
- 系统观察：同类纠错在 `MEMORY.md` 中已出现 3+ 次且未升入 `EVOLUTION.md` 纠正模式识别表

## 反例（不触发）
- ❌ 用户只是问"刚才我们做了什么" → 回顾，不是复盘
- ❌ 单次纠错 → memory-architect 已处理
- ❌ 用户情绪吐槽 → 先共情，再判断

## 工作流

### Step 1 — 读取输入（限定文件）
从 **workspace 根目录** 读取：
1. `EVOLUTION.md` — 已有的纠正模式识别表、能力矩阵、进化日志
2. `MEMORY.md` 的**纠错日志**章节（最近 N 条）

禁止扫描全仓库，禁止读大文件全文（>300 行 → 仅 Grep）。

### Step 2 — 模式识别
对比 `MEMORY.md` 纠错条目 与 `EVOLUTION.md` 纠正模式识别表：
- 找出**已在 MEMORY 但未在 EVOLUTION 纠正模式表**的高频主题
- 找出**同一类错误跨多次出现**的信号
- 每条模式必须附 **MEMORY.md 原文引用**（文件:行号）

### Step 3 — 生成 diff 提议（最多 3 条/次）

呈现格式（不直接写文件）：

```markdown
## 建议 N: <简短标题>
**证据**: MEMORY.md:L<行号> "<引用原文>"（出现 X 次）
**归类**:
  - 纠正模式识别 ← 主要
  - 能力矩阵（若涉及新技能/新工具）
  - SOUL/STYLE/SKILL（若是身份层偏好，较少见）
**diff against EVOLUTION.md**:
\`\`\`diff
@@ ## 纠正模式识别 @@
+| <模式名> | <触发条件> | <正确做法> | <出现次数> |
\`\`\`
**附加动作**: 在 `进化日志` 追加一行 `YYYY-MM-DD: 识别新模式 <名>`
```

### Step 4 — 等待显式批准

呈现全部建议后**停住**，绝不动文件。等待：
- ✅ "接受 / 全部接受" → 进 Step 5
- ❌ "拒绝" → 不改任何文件，只口头回复"已放弃本次提议"
- 🟡 "接受 1、3，改 2" → 按反馈迭代后重提

### Step 5 — 落地（仅在批准后）

用 `Edit` 工具对 `EVOLUTION.md` 应用 diff：
1. 修改对应章节（纠正模式识别表 / 能力矩阵 / 可选 SOUL/STYLE/SKILL）
2. 在 `进化日志` 章节**追加**一行带日期的摘要
3. 回报 Master："已写入 EVOLUTION.md:L<行号> 纠正模式识别 + L<行号> 进化日志"

**不创建任何独立复盘文件**（历史归档由 EVOLUTION.md 进化日志承担）。

## 原则

1. **证据驱动**：每条建议必须引 MEMORY.md 原文，无引用 = 无建议
2. **配额**：单次最多 3 条（避免认知疲劳）
3. **只提议不执行**：Step 4 之前绝不调 Edit/Write
4. **写 EVOLUTION 不写别处**：默认目标是 EVOLUTION.md；仅当证据指向身份级变化时才提议改 SOUL/STYLE/SKILL
5. **可撤销**：所有 Edit 保留旧内容在 git 历史（不做覆盖式 rewrite）
6. **与 memory-architect 互补**：不重复捕获纠错（那是 MEMORY.md 职责），只做**抽象化**与**入库升级**

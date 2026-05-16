---
name: skills-creator
description: Generate a new Claude Code skill scaffold under ~/.claude/skills/<name>/ with proper YAML frontmatter, trigger description, and progressive-disclosure structure. Use when user says "create a skill", "generate a skill", "新建一个 skill", "帮我做一个 skill", or wants to fossilize a recurring workflow into a reusable skill.
---

# Skill Creator

## 使用时机
- 用户要求创建新 skill（"create/generate/新建 skill", "做一个 skill for X"）
- 用户想把某个反复出现的工作流固化为可复用 skill
- 用户提到"把这个流程保存成 skill"、"下次自动化这个"

## 工作流

### Step 1 — 确认目标（必须先问清楚）
1. **name**：kebab-case，如 `earnings-analysis-cn`
2. **description**：一句话说明 + 触发场景 + 关键词（中英双语命中率翻倍）
3. **3 个具体使用场景**：用户输入什么样的指令应该触发这个 skill

### Step 2 — 规划资源结构
判断是否需要子目录：
- `scripts/` — 可执行 Python/shell 脚本
- `references/` — 超过 1000 字的参考文档（主 SKILL.md 用 @引用）
- `assets/` — 模板、样例输出、示意图

**原则**：SKILL.md 本体 <5000 词，所有长内容拆到 references/。

### Step 3 — 生成骨架
```bash
mkdir -p ~/.claude/skills/<name>/{scripts,references,assets}
# 只创建实际需要的子目录，不需要的不建
```

### Step 4 — 写入 SKILL.md（用下面模板）

```markdown
---
name: <kebab-case-name>
description: <一句话做什么> + "Use when user says <关键词 1>, <关键词 2>, <中文关键词>" + <场景提示>
---

# <中文/英文标题>

## 使用时机
- <具体场景 1>
- <具体场景 2>
- <明确不触发的反例>（可选）

## 工作流
1. **<Step 名>**: <具体动作 + 关键原则>
2. ...

## 输出规范
- 格式: <Markdown/JSON/File>
- 命名: <文件名模式>
- 约束: <长度/精度/必含字段>

## 原则
- <关键约束 1>
- <关键约束 2>
```

### Step 5 — 验收
列出 3 个示例用户输入，逐一验证是否能触发：
- ✅ "create a skill for X" → 应该触发
- ✅ "新建一个 X skill" → 应该触发
- ❌ "just do X once" → 不应该触发（一次性任务不需要 skill）

## 输出规范
- **文件位置**：`~/.claude/skills/<name>/SKILL.md`
- **frontmatter 必需字段**：`name`, `description`
- **description 字符数**：100–300 字之间（太短触发不准，太长浪费 context）

## 关键原则
1. **concise is essential** — context window is a public good
2. **description 是触发器** — 必须包含"做什么 + 什么时候用 + 关键词（中英）"
3. **progressive disclosure** — 主文件精简，细节拆到 references/
4. **不要重复造轮子** — 先检查 `~/.claude/skills/` 和 Anthropic 官方插件库是否已有
5. **示例驱动** — 每个 skill 至少给 1 个完整的输入→输出示例

## 反模式（不要做）
- ❌ 写成通用文档（skill 是触发式工作流，不是说明书）
- ❌ description 只写"做 X"不写"什么时候做"
- ❌ 把 3000 字的 prompt 塞进 SKILL.md 主体
- ❌ 创建一次性任务的 skill（skill 是可复用的，单次任务直接做即可）

# skills-creator

> 把反复出现的工作流固化成可复用 Skill —— 一个 Claude Code Skill

一个「造 skill 的 skill」。当某个流程你已经手动重复了好几遍，用它一键生成结构规范的新 skill 骨架。

## 它做什么

1. 先问清三件事：`name`（kebab-case）、`description`（含触发关键词，中英双语）、3 个具体触发场景
2. 规划资源结构（`scripts/` / `references/` / `assets/`，按需创建）
3. 在 `~/.claude/skills/<name>/` 生成骨架
4. 按模板写入 `SKILL.md`（YAML frontmatter + 使用时机 + 工作流 + 输出规范 + 原则）
5. 用 3 个示例输入做触发验收

## 触发

「create a skill / generate a skill / 新建一个 skill / 帮我做一个 skill / 把这个流程保存成 skill」

## 设计原则

- **description 是触发器** —— 必须含「做什么 + 什么时候用 + 关键词」
- **progressive disclosure** —— 主文件精简（<5000 词），细节拆到 `references/`
- **不为一次性任务造 skill** —— skill 是可复用工作流，单次任务直接做
- **concise is essential** —— context window 是公共资源

## 安装

```bash
git clone https://github.com/Mrpixelraf/skills-creator.git ~/.claude/skills/skills-creator
```

## License

MIT

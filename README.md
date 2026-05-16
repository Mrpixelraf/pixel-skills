# pixel-skills

> 像素先森 Claude Code Skill 全家桶 —— 一次 clone，5 个 skill 全装好

把一个新的 Claude Code Agent 从「陌生人」升级成「有记忆、会进化、能做团队、能写研报」的长期搭档。本仓库把 5 个 skill 打包在一起，供另一个 Agent 一次性封装安装。

## 包含的 5 个 Skill

| Skill | 作用 | 触发词 |
|-------|------|--------|
| **memory-architect** | 五文档记忆系统（SOUL/STYLE/SKILL/MEMORY/EVOLUTION），让 Claude 带着记忆和个性工作 | 开工 / 加载记忆 / 继续上次的 / load memory |
| **self-evolution** | memory-architect 的反思伙伴，周期性提炼纠正模式、升级 EVOLUTION.md | 复盘 / 自我进化 / review our collaboration |
| **skills-creator** | 把反复出现的工作流固化成新 skill 的脚手架生成器 | 新建一个 skill / create a skill |
| **agent-team-creator** | 一键生成多 Agent 协作开发团队，每个 Agent 配齐五文档 | 创建 Agent 团队 / 搭个团队 |
| **stock-research** | v3.1 上市公司深度分析 Pipeline，三阶段产出带评级的研报 | 深度分析 XXX / company deep dive |

## 安装

### 方式一：一键脚本（推荐）

```bash
git clone https://github.com/Mrpixelraf/pixel-skills.git
cd pixel-skills
bash install.sh
```

脚本会把 5 个 skill 复制进 `~/.claude/skills/`（已存在的会跳过，不覆盖）。

### 方式二：手动

```bash
cp -R pixel-skills/skills/* ~/.claude/skills/
```

安装后**重启 Claude Code session**，5 个 skill 即自动注册并按触发词激活。

## 推荐启用顺序

1. **memory-architect** —— 先搭记忆系统，生成五文档
2. **self-evolution** —— 配套记忆系统的进化机制
3. **skills-creator** / **agent-team-creator** —— 按需扩展能力
4. **stock-research** —— 投研场景专用

## 各 Skill 的独立仓库（canonical 源）

本 bundle 是打包快照。各 skill 的权威源与独立更新在：

- https://github.com/Mrpixelraf/memory-architect
- https://github.com/Mrpixelraf/self-evolution
- https://github.com/Mrpixelraf/skills-creator
- https://github.com/Mrpixelraf/agent-team-creator
- https://github.com/Mrpixelraf/stock-research

更新 bundle：到各独立仓库 `git pull` 后，重新复制进本仓库的 `skills/` 即可。

## License

MIT · Copyright (c) 2026 Mr Pixel (brianxueyf)

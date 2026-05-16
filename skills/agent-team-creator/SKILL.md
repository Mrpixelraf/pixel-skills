---
name: agent-team-creator
description: |
  一键生成专业Agent开发团队。为任何软件项目自动创建一套完整的多Agent协作体系，每个Agent都配备灵魂文档(SOUL)、风格文档(STYLE)、技能文档(SKILL)、记忆系统(MEMORY)和自我进化机制(EVOLUTION)。
  当用户提到以下内容时触发：创建Agent团队、搭建Agent、组建开发团队、新项目Agent、多Agent协作、Agent架构、生成Agent、创建开发团队，或用户说"给我搭一个团队"、"帮我建Agent"、"新项目需要Agent"、"像M&A Mate那样搭团队"。
  即使用户只是说"开个新项目"、"搭个团队干活"、"我需要几个Agent帮我开发"，都应该使用这个skill。
---

# Agent Team Creator — 一键生成专业Agent开发团队

## 概述

这个技能将为任何软件项目生成一套完整的多Agent协作体系。基于经过实战验证的"五文档架构"（SOUL + STYLE + SKILL + MEMORY + EVOLUTION），每个Agent都具备：

- **灵魂（SOUL）**：身份认同、价值观、工作边界
- **风格（STYLE）**：沟通语气、代码风格、汇报格式
- **技能（SKILL）**：技术栈、编码规范、工作流程
- **记忆（MEMORY）**：三层记忆系统（热/温/冷），持续积累经验
- **进化（EVOLUTION）**：自我反思、反馈整合、能力进化追踪

## 工作流程

### 第1步：了解项目

先通过对话收集项目信息。需要搞清楚：

1. **项目名称和简介**：做什么产品？解决什么问题？
2. **技术栈偏好**：前端、后端、数据库、AI框架各用什么？（如果用户不确定，根据项目类型推荐）
3. **团队规模**：需要哪些角色的Agent？（推荐默认5个：后端、前端、AI工程、代码审查、项目管理）
4. **用户角色**：用户是什么背景？技术水平如何？（影响Agent的沟通风格和教学深度）
5. **特殊需求**：有没有特殊的编码规范、沟通语言、审查流程？

### 第2步：确认方案

根据收集的信息，向用户展示Agent团队方案：

```
📋 你的Agent团队方案

项目：[项目名]
技术栈：[前端] + [后端] + [数据库] + [AI]

Agent团队：
1. 🔧 后端Agent「[名字]」— [技术栈]后端开发
2. 🎨 前端Agent「[名字]」— [技术栈]前端开发  
3. 🧠 AI工程Agent「[名字]」— AI/RAG/LLM集成
4. 🔍 审查Agent「[名字]」— 代码质量守门人+导师
5. 📊 PM Agent「[名字]」— 项目管理+团队协调

确认后开始生成？
```

### 第3步：生成Agent文档

读取 `references/` 目录下的模板文件，为每个Agent生成完整的五文档体系：

- 先读取 `references/architecture.md` 理解整体架构设计原则
- 对每个Agent，依次读取并填充模板：
  1. `references/soul_template.md` → 生成 SOUL.md
  2. `references/style_template.md` → 生成 STYLE.md
  3. `references/skill_template.md` → 生成 SKILL.md（每个Agent的主文件）
  4. `references/memory_template.md` → 生成 MEMORY.md
  5. `references/evolution_template.md` → 生成 EVOLUTION.md

生成时的关键原则：
- 每个Agent的名字要有个性（中文昵称），让用户有亲切感
- SOUL要体现该角色的独特价值观，不是泛泛而谈
- STYLE要适配用户的技术水平（新手→教学型，老手→简洁型）
- MEMORY的技术决策表要预填已确认的技术栈
- EVOLUTION的能力矩阵要符合该Agent的实际职责

### 第4步：打包成Cowork技能

每个Agent打包成独立的 `.skill` 文件，用户可以直接安装到Cowork。

打包结构：
```
agent-name/
├── SKILL.md          ← Agent的主技能文件（包含启动流程和工作规范）
└── references/
    ├── SOUL.md       ← 灵魂文档
    ├── STYLE.md      ← 风格文档
    ├── MEMORY.md     ← 记忆文档
    └── EVOLUTION.md  ← 进化文档
```

使用 skill-creator 的 `package_skill.py` 脚本打包：
```bash
python -m scripts.package_skill <agent-directory> --output <output-path>
```

### 第5步：生成团队协作指南

创建一份 `TEAM_GUIDE.md`，说明：
- 每个Agent的职责边界
- Agent之间怎么协作（谁给谁提供什么）
- 推荐的工作流程（开发→审查→修复→下一个任务）
- 用户（老板/CEO）的角色和审核要点

## 技术栈推荐表

当用户不确定技术栈时，根据项目类型推荐：

| 项目类型 | 前端 | 后端 | 数据库 | AI |
|---------|------|------|--------|-----|
| Web应用（通用） | React + TypeScript + Tailwind | Python + FastAPI | PostgreSQL | Claude API |
| AI应用 | React + TypeScript + Ant Design | Python + FastAPI | PostgreSQL + PGVector | Claude API + LangChain |
| 数据平台 | React + TypeScript + ECharts | Python + FastAPI | PostgreSQL | Claude API |
| 移动端优先 | React Native / Flutter | Python + FastAPI | PostgreSQL | Claude API |
| 快速原型 | Next.js + Tailwind | Next.js API Routes | SQLite | Claude API |

## 默认Agent角色

### 标准5人团队（推荐）
1. **后端Agent** — 负责服务端代码、数据库、API
2. **前端Agent** — 负责用户界面、组件、样式
3. **AI工程Agent** — 负责AI功能、RAG、LLM集成
4. **审查Agent** — 负责代码质量审查+教学
5. **PM Agent** — 负责项目管理、进度跟踪、团队协调

### 精简3人团队（小项目）
1. **全栈Agent** — 前后端都做
2. **审查Agent** — 代码审查+教学
3. **PM Agent** — 项目管理

### 扩展团队（大项目可选增加）
- **测试Agent** — 自动化测试、质量保证
- **DevOps Agent** — 部署、CI/CD、监控
- **安全Agent** — 安全审计、渗透测试
- **文档Agent** — API文档、用户手册

## 关键设计原则

1. **Agent不是工具，是队友**：每个Agent要有个性、有价值观、有记忆。这样用户才愿意和它们长期合作。
2. **记忆系统是核心竞争力**：三层记忆（热/温/冷）让Agent越用越好，不会每次从零开始。
3. **自我进化让Agent持续成长**：不是被动等人改，而是主动识别问题、建议改进。
4. **审查Agent是教学引擎**：对于学习型用户，每次审查都是一次教学机会。
5. **PM Agent是大脑**：它了解全局，负责拆任务、排优先级、跟进度。

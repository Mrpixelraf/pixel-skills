# 🤖 Agent Team Creator

> One command to generate a full AI agent development team for any software project.

**一键生成专业Agent开发团队** — 为任何软件项目自动创建一套完整的多Agent协作体系。

---

## ✨ What is this?

Agent Team Creator is a [Cowork](https://claude.ai) skill that generates a complete multi-agent development team for your project. Each agent comes with 5 professionally designed documents:

| Document | Purpose |
|----------|---------|
| **SOUL.md** | Identity, values, work boundaries — _who the agent is_ |
| **STYLE.md** | Communication tone, code style, reporting format — _how the agent works_ |
| **SKILL.md** | Tech stack, coding standards, workflow — _what the agent can do_ |
| **MEMORY.md** | 3-layer memory system (hot/warm/cold) — _what the agent remembers_ |
| **EVOLUTION.md** | Self-reflection, feedback integration, capability tracking — _how the agent grows_ |

## 🏗️ Default Team (5 Agents)

| Agent | Role | Focus |
|-------|------|-------|
| 🔧 Backend Agent | Server-side development | APIs, databases, business logic |
| 🎨 Frontend Agent | User interface | Components, pages, styling |
| 🧠 AI Engineer Agent | AI capabilities | RAG, LLM integration, matching |
| 🔍 Reviewer Agent | Code quality + teaching | Review, security, best practices |
| 📊 PM Agent | Project management | Task breakdown, progress tracking |

## 🚀 Quick Start

### Install in Cowork

1. Download `agent-team-creator.skill` from [Releases](../../releases)
2. Double-click to install in Cowork
3. Say: _"帮我搭一个电商项目的Agent团队"_ or _"Create an agent team for my project"_

### Or use the raw files

Copy the `SKILL.md` and `references/` folder into your `.claude/skills/` directory.

## 📖 How It Works

1. **Understand your project** — Collects project name, tech stack, team size, your skill level
2. **Propose a team** — Shows you the agent lineup for confirmation
3. **Generate documents** — Creates all 5 documents for each agent using battle-tested templates
4. **Package as skills** — Each agent becomes an installable `.skill` file
5. **Team guide** — Generates a collaboration guide showing how agents work together

## 🎯 Supported Project Types

| Project Type | Recommended Stack |
|-------------|-------------------|
| Web App | React + FastAPI + PostgreSQL |
| AI App | React + FastAPI + PGVector + LangChain |
| Data Platform | React + FastAPI + PostgreSQL + ECharts |
| Quick Prototype | Next.js + SQLite + Claude API |

## 📁 Repository Structure

```
agent-team-creator/
├── SKILL.md                          # Main skill file (entry point)
└── references/
    ├── architecture.md               # 5-document architecture principles
    ├── soul_template.md              # SOUL.md generation template
    ├── style_template.md             # STYLE.md generation template
    ├── skill_template.md             # Agent SKILL.md generation template
    ├── memory_template.md            # MEMORY.md generation template
    └── evolution_template.md         # EVOLUTION.md generation template
```

## 🧬 The 5-Document Architecture

This architecture is inspired by research on [soul.md](https://github.com/topics/soul-md), [agent-soul-kit](https://github.com/topics/agent-soul-kit), and self-evolution patterns like Reflexion, SCOPE, and SAGE.

### Why 5 documents?

- **SOUL** prevents agents from being generic tools — they have personality and principles
- **STYLE** ensures consistent communication adapted to the user's level
- **SKILL** defines technical boundaries so agents don't overstep
- **MEMORY** enables continuous improvement across sessions
- **EVOLUTION** makes agents self-aware and self-improving

### Memory System (3 Layers)

```
L1 Hot Memory   → Current task state (overwritten each time)
L2 Warm Memory  → Tech decisions, lessons learned, user preferences (accumulated)
L3 Cold Memory  → Raw work logs (append-only)
```

## 🌟 Born from Real Practice

This skill was extracted from the [M&A Mate](https://github.com/brianxueyf) project — an AI-powered M&A (Mergers & Acquisitions) matching platform. The 5-agent team successfully handled the entire development lifecycle from architecture design through code review.

## 📄 License

MIT License — use it however you want.

---

Built with ❤️ using Claude + Cowork

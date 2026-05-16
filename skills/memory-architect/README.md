# Memory Architect

> Universal memory architecture skill for Cowork.
> Drop it into any new setup to configure a persistent 5-doc collaboration environment.
> Works for everyone — developers, researchers, office workers, students, creators.

## The Problem

Every new Claude session starts from zero. You explain who you are, what you're working on, how you like things done — every single time. And when Claude makes a mistake and you correct it, that correction is lost next session. Same mistake, same frustration, on repeat.

## The Solution

Memory Architect gives Claude a persistent "external brain" — five documents that survive across sessions:

| Document | What It Solves | Update Frequency |
|----------|---------------|-----------------|
| **SOUL.md** | "Who am I" — identity, values, boundaries | Rarely |
| **STYLE.md** | "How to communicate" — tone, output format, preferences | Occasionally |
| **SKILL.md** | "What I can do" — capabilities, workflow, tools | When new skills emerge |
| **MEMORY.md** | "What I remember" — projects, **correction log**, **domain knowledge** | Every session |
| **EVOLUTION.md** | "How I improve" — **correction pattern recognition**, reflection | Every session |

## Key Innovation: Correction-Driven Evolution

The core differentiator of Memory Architect is **structured correction memory**:

```
User corrects Claude → Logged in MEMORY (single event)
                            ↓
                  Same type of correction ≥ 2 times
                            ↓
              Pattern identified in EVOLUTION
                            ↓
              Countermeasure created + tracked
                            ↓
              Next session: proactively apply countermeasure
```

Every correction is categorized by type:
- 🔴 **Factual error** — wrong data, dates, names
- 🟡 **Style mismatch** — wrong format, length, tone
- 🟠 **Wrong approach** — bad problem-solving path
- 🔵 **Missing context** — failed to use known information
- ⚪ **Over-action** — unnecessary confirmations, over-explaining

## Two Modes

### First Use → Initialization
Claude conducts a brief conversational interview to understand:
1. Who you are and what you do
2. Your work style and preferences
3. What Claude typically gets wrong (pre-seeds the correction log!)

Then generates all 5 documents customized to your role.

### Every Session After → Auto-Load
Claude loads documents in order: `SOUL → STYLE → MEMORY → EVOLUTION → SKILL`

Checks the correction countermeasure list and proactively applies fixes. Gives a concise status report so you pick up right where you left off.

## Role Adaptation

Memory Architect adapts to any user type:

| Role | STYLE Focus | SKILL Focus | MEMORY Focus |
|------|------------|-------------|--------------|
| Developer | Code conventions, naming | Tech stack, frameworks | Architecture decisions, bugs |
| Researcher | Report format, citations | Search strategy, sources | Domain knowledge, findings |
| Office Worker | PPT style, email tone | Tools, templates | Meeting notes, project status |
| Student | Teaching style, depth | Study methods, resources | Learning progress, concepts |

## Three-Layer Memory

- **L1 Hot** — Current state (overwritten each session)
- **L2 Warm** — Accumulated experience: correction log, domain knowledge, decisions (append-only)
- **L3 Cold** — Full session logs (never deleted)

## Language

Templates are currently in **Chinese (中文)**. Multi-language support is planned — see roadmap below.

## Installation

1. Download `memory-architect.skill`
2. Install in your Cowork environment
3. Say "let's get started" (or "开工") to trigger

## File Structure

```
memory-architect/
├── SKILL.md                          # Main skill logic
├── README.md                         # This file
├── LICENSE                           # MIT License
└── references/
    ├── soul_template.md              # Identity template
    ├── style_template.md             # Communication & output style template
    ├── skill_template.md             # Capabilities template
    ├── memory_template.md            # Three-layer memory + correction log template
    └── evolution_template.md         # Self-improvement + correction patterns template
```

## Reset / Uninstall

To start fresh, delete the five generated documents (`SOUL.md`, `STYLE.md`, `SKILL.md`, `MEMORY.md`, `EVOLUTION.md`) from your workspace root. Next time you trigger the skill, it will re-run the initialization interview.

To uninstall completely, also remove the `memory-architect` skill from your Cowork skills folder.

## License

MIT

## Creator

**Memory Architect** is designed and built by **[Mr Pixel](https://github.com/Mrpixelraf)** (Brian Xue) in collaboration with Claude.

The idea was born from a simple frustration: why does every new AI session feel like meeting a stranger? AI should be like a real partner — remembering who you are, where you left off, and what mistakes not to repeat.

### Contact
- GitHub: [@Mrpixelraf](https://github.com/Mrpixelraf)
- Email: brianxueyf@gmail.com


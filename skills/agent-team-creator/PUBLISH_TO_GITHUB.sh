#!/bin/bash
# ============================================
# 一键发布 Agent Team Creator 到 GitHub
# ============================================
# 使用方法：
# 1. 打开终端（Terminal）
# 2. cd 到这个文件所在的目录（agent-team-creator-repo）
# 3. 运行：bash PUBLISH_TO_GITHUB.sh
#
# 前提条件：
# - 已安装 git
# - 已安装 gh（GitHub CLI）：brew install gh
# - 已登录 gh：gh auth login
# ============================================

set -e

echo "🚀 开始发布 Agent Team Creator 到 GitHub..."

# 1. 初始化Git仓库
git init
git add -A
git commit -m "feat: Agent Team Creator - one command to generate AI agent teams

A Cowork skill that generates complete multi-agent development teams
with 5-document architecture (SOUL + STYLE + SKILL + MEMORY + EVOLUTION).

Features:
- 5 agent roles: Backend, Frontend, AI Engineer, Reviewer, PM
- 3-layer memory system (hot/warm/cold)
- Self-evolution mechanism
- Customizable for any project type and tech stack"

# 2. 用 gh 创建远程仓库并推送
gh repo create agent-team-creator \
  --public \
  --description "One command to generate a full AI agent development team for any project. 一键生成专业Agent开发团队。" \
  --source . \
  --push

echo ""
echo "✅ 发布成功！"
echo "📎 仓库地址：https://github.com/$(gh api user --jq .login)/agent-team-creator"
echo ""
echo "接下来你可以（可选）："
echo "  1. 发布Release：gh release create v1.0.0 ../agent-team-creator.skill --title 'v1.0.0' --notes 'Initial release'"
echo "  2. 添加Topics：在GitHub仓库页面 → About → Topics → 添加 ai-agent, cowork, claude, multi-agent"

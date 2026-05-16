#!/usr/bin/env bash
# pixel-skills · 一键安装全部 5 个 Claude Code Skill
# 用法: bash install.sh
set -euo pipefail

DEST="${HOME}/.claude/skills"
SRC="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)/skills"

echo "==> 安装目标目录: ${DEST}"
mkdir -p "${DEST}"

for skill in "${SRC}"/*/; do
  name="$(basename "${skill}")"
  target="${DEST}/${name}"
  if [ -e "${target}" ]; then
    echo "  [跳过] ${name} 已存在 —— 如需覆盖请先手动删除 ${target}"
    continue
  fi
  cp -R "${skill}" "${target}"
  echo "  [安装] ${name}"
done

echo "==> 完成。重启 Claude Code session 后即可触发以下 skill："
echo "    agent-team-creator · memory-architect · self-evolution · skills-creator · stock-research"

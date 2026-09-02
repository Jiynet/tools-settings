#!/bin/bash
# AI 工具自动更新脚本
# 更新 Codex CLI 和 Claude Code

echo "=========================================="
echo "    AI 工具自动更新脚本"
echo "=========================================="
echo ""

# 更新 Codex CLI
echo "1. 更新 Codex CLI..."
/home/jiy/workspace/update-codex.sh
echo ""

# 更新 Claude Code
echo "2. 更新 Claude Code..."
/home/jiy/workspace/update-claude.sh
echo ""

echo "=========================================="
echo "    更新完成！"
echo "=========================================="
echo ""
echo "当前版本："
echo "  Codex CLI: $(codex --version 2>/dev/null || echo '未安装')"
echo "  Claude Code: $(claude --version 2>/dev/null || echo '未安装')"

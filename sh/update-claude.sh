#!/bin/bash
# Claude Code 自动更新脚本

echo "开始更新 Claude Code..."

# 检查当前版本
current_version=$(claude --version 2>/dev/null | grep -oP '\d+\.\d+\.\d+')
echo "当前版本: $current_version"

# 获取最新版本
latest_version=$(npm view @anthropic-ai/claude-code version 2>/dev/null)
echo "最新版本: $latest_version"

# 比较版本
if [ "$current_version" = "$latest_version" ]; then
    echo "Claude Code 已是最新版本！"
    exit 0
fi

echo "正在更新 Claude Code..."

# 清除npm缓存
npm cache clean --force

# 卸载旧版本
npm uninstall -g @anthropic-ai/claude-code

# 安装最新版本
npm install -g @anthropic-ai/claude-code@latest

# 检查更新结果
new_version=$(claude --version 2>/dev/null | grep -oP '\d+\.\d+\.\d+')
if [ "$new_version" = "$latest_version" ]; then
    echo "✅ Claude Code 更新成功！"
    echo "版本: $new_version"
else
    echo "❌ 更新失败，当前版本: $new_version"
    exit 1
fi

#!/bin/bash

# 获取当前脚本所在的目录
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# 加速cdn地址
CDN_JSDELIVR_URL="https://cdn.jsdelivr.net/gh/KOFKOY/TVBox@main"
CDN_MOEYY_URL="https://github.moeyy.xyz/https://raw.githubusercontent.com/KOFKOY/TVBox/main"

echo "Starting directory: $SCRIPT_DIR"

# 递归遍历目录中的所有文件
find "$SCRIPT_DIR" -type f -name "oktv.json" | while read -r file; do
    echo "Processing file: $file"
    # 在这里添加你的文件处理逻辑，例如替换 GitHub URL
    # 例如：sed -i 's/old-url/new-url/g' "$file"
    sed -i "s|https://raw.kkgithub.com/2hacc/TVBox/main|$CDN_MOEYY_URL|g" "$file"
done

# 递归遍历目录中的所有文件
find "$SCRIPT_DIR" -type f -name "h.json" | while read -r file; do
    echo "Processing file: $file"
    # http://ftp6284928.host108.abeiyun.cn/h/xBPQ/精东影业2.json
    sed -i "s|http://ftp6284928.host108.abeiyun.cn|$CDN_MOEYY_URL|g" "$file"
done

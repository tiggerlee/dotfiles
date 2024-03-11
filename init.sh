#!/bin/bash

# 获取当前目录的绝对路径
current_dir=$(realpath "$(dirname "$0")")

# 获取用户的home目录路径
home_dir=$(eval echo ~$USER)

# 进入用户的home目录
cd "$home_dir" || exit

# 遍历当前目录的每一个文件或文件夹，包括隐藏文件和隐藏文件夹
shopt -s dotglob
for item in "$current_dir"/*; do
    # 获取文件名或文件夹名
    base_name=$(basename "$item")

    # 检查是否是文件或文件夹，并且不是当前脚本文件
    if [ -f "$item" ] || [ -d "$item" ]; then
        # 排除当前脚本文件
        if [ "$item" != "$current_dir/$(basename "$0")" ]; then
            # 创建软链接
            ln -s "$item" "$home_dir/$base_name"
            echo "Created symlink for $base_name"
        fi
    fi
done

echo "Symlinks created successfully."

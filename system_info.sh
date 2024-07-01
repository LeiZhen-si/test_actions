#!/bin/bash

# 获取系统信息
echo "System Information:"
hostnamectl | grep -E 'Operating System|Kernel|Architecture'

# 获取CPU信息
echo "CPU Information:"
lscpu

# 获取内存信息
echo "Memory Information:"
free -h

# 休眠一段时间，确保脚本运行时间在1分钟左右
sleep 6

# 获取磁盘使用情况
echo "Disk Usage:"
df -h

# 记录时间戳
timestamp=$(date +%s)
echo "Timestamp: $timestamp"

# 保存日志
echo "Saving log with timestamp: $timestamp"
echo "$(timestamp) - System Information" > log_system_info.log
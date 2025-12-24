# === 演习环境生成脚本开始 ===
cd ~/code
mkdir git-simulation
cd git-simulation
git init
git config user.name "Simulation User"
git config user.email "sim@example.com"

# 1. 模拟主分支的初始状态
echo "System Version: 1.0" > config.txt
echo "Core Logic: Stable" > core.c
git add .
git commit -m "v1.0 发布"

# 2. 模拟同事切出去开发新功能
git switch -c feature-login
echo "Login Logic: WIP" > login.c
git add .
git commit -m "开始写登录功能"
echo "Login Logic: Almost done" >> login.c
git add .
git commit -m "快写完了"

# 3. 制造工作区脏数据（写了一半没提交）
echo "System Version: 2.0-Alpha" > config.txt
echo "这行代码还没写完..." >> login.c

# === 演习环境生成脚本结束 ===
clear
echo "🔥 警报：演习环境已就绪！"
echo "你当前在 feature-login 分支，工作区有未保存的修改。"
echo "老板要求你立刻切回 main 分支修复 config.txt 中的版本号错误。"
echo "executing my profile:$0"

export PATH="$PATH:/Users/samingzhong/develop/flutter/bin"
export PATH="$PATH:/Users/samingzhong/.my_batch_sh:/Users/samingzhong/.my_syn_tools/cocoapods"
export PATH="$PATH:/Users/samingzhong/develop/flutter/bin/cache/dart-sdk/bin"
export DART_PATH="$HOME/develop/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/develop/flutter/.pub-cache/bin"

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn


# 别名
alias pushall='batch_push.sh'
alias pullall='batch_pull.sh'
alias c='clear'
alias gs='git status'
alias fpg='flutter pub get'
alias pi='pod install --repo-update'
alias pru='pod repo update'
alias st='/Applications/Sublime\ Text.app/Contents/MacOS/sublime_text'
alias gitpush=~/.my_syn_tools/.syn_tools/git_push
my_blog=~/blog


# for kafu
alias cdKafu='cd ~/work/kafu/'
alias openKafu='open ~/work/kafu/main/ios'
alias cdKafuiOS='cd ~/work/kafu/main/ios'
alias kafuPodinstall='cd ~/work/kafu/main/ios/;pi'
alias kafuFlutterPubGet='cdKafu;sh pub_get.sh'
alias flutterPubGet='flutter pub get'

alias upgradePod='podUpdate.sh'
alias pod_trunk_push='pod trunk push $(ls *.podspec) --verbose'

# 解密marslog
alias decode_marslog='python /Users/samingzhong/work/tools/log/decode_mars_crypt_log_file.py '

# blog utils
alias hexonew='$my_blog/.scripts/blog_new.sh'
alias hexog='cd $my_blog/;hexo g'

# 生成+发布
alias hexod='cd $my_blog/;hexo g -d'
# 生成+备份
alias hexob='cd $my_blog/;hexo g;bash $my_blog/.scripts/autoUpload.sh'
# 生成+发布+备份  # 跟hexodd有点重复了，但deploy_and_backup_blog.sh存在的意义就是为了定时任务
alias hexodd='bash $my_blog/.scripts/deploy_and_backup_blog.sh'

alias hexos='cd $my_blog/;hexo s &'




############################## 公司机器（可以通过IP或者机器名称做判断，暂不支持）
# 对应GitHub仓库
# 同步工具链
push_xcode_setting=~/Library/Developer/Xcode/UserData
push_android_studio_setting=~/Library/Application\ Support/Google/AndroidStudio2021.2
my_batch_sh=~/.my_batch_sh
my_syn_tools=~/.my_syn_tools

# 拉取/推送workingspace的操作日志
my_opr_log_dir=~/work/my_opr_log

# 脚本路径
git_push=~/.my_syn_tools/.syn_tools/git_push

# 软件备份目录
software_backup=~/code/others/backup_software

# 项目代码本地目录(对应内网gitlab仓库)
kafu=~/work/kafu
logger_plugin=~/work/logger_plugin

echo "Job done!"
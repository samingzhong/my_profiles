echo "executing my profile:$0"

export PATH="$PATH:/Users/samingzhong/develop/flutter/bin"
export PATH="$PATH:/Users/samingzhong/.my_batch_sh"
export PATH="$PATH:/Users/samingzhong/develop/flutter/bin/cache/dart-sdk/bin"
export DART_PATH="$HOME/develop/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH":"$HOME/.pub-cache/bin"
export PATH="$PATH":"$HOME/develop/flutter/.pub-cache/bin"
currentDir=$( cd -P "$( dirname "$0" )" >/dev/null 2>&1 && pwd )
export PATH="$PATH":"$currentDir"

export PUB_HOSTED_URL=https://pub.flutter-io.cn
export FLUTTER_STORAGE_BASE_URL=https://storage.flutter-io.cn



# 别名
alias pushall='batch_push.sh'
alias pullall='batch_pull.sh'
alias c='clear'
alias gs='echo "git status";git status'
alias fpg='flutter pub get'
alias pi='echo "pod install";pod install'
alias pii='echo "pod install --repo-update";pod install --repo-update'
alias pru='echo "pod repo update";pod repo update'
alias st='/Applications/Sublime\ Text.app/Contents/MacOS/sublime_text'
alias gitpush=~/.my_syn_tools/.syn_tools/git_push
alias killflutter=ps -ef|grep flutter|awk '{print $2}'|xargs kill -9
my_blog=~/blog


# for kafu
alias cdKafu='cd ~/work/kafu/'
alias openKafu='open ~/work/kafu/main/ios'
alias cdKafuiOS='cd ~/work/kafu/main/ios'˜
alias kafuPodinstall='cd ~/work/kafu/main/ios/;pi'
alias kafuFlutterPubGet='cdKafu;sh pub_get.sh'
alias flutterPubGet='flutter pub get'
alias flutterAttach='flutter attach'


ip_address_wire=192.168.35.39
ip_address_HK=192.168.81.218
ip_address_SG=192.168.82.13
alias sshsamingzhongWire="ssh samingzhong@${ip_address_wire}"
alias sshsamingzhonghk="ssh samingzhong@${ip_address_HK}"
alias sshsamingzhongsg="ssh samingzhong@${ip_address_SG}"


# for TT iOS
alias podrepoupdatett='pod repo update tt-iOS-podspecs-repo'
current_user=$(whoami)
if [[ "$current_user"="samingzhong" ]]; then
	# 公司机器
	ios_tt=~/work/workspace1/TT-iOS
	ios_tt2=~/work/workspace2/TT-iOS
	echo "当前在公司机器上..."
elif [[ "$current_user"="zhongxm" ]]; then
	# 私人机器
	ios_tt=~/work/tt/TT-iOS
	ios_tt=~/work/tt2/TT-iOS
	echo "当前在私人机器上..."
fi
alias openttios='open -a Xcode $ios_tt'
alias cdtt='cd $ios_tt'
alias ttpodupdate='cdtt;pod repo update tt-iOS-podspecs-repo;pod install'
alias zz='open -a Xcode $ios_tt/Podfile'
alias zzz='open -a Sublime\ Text $ios_tt/Podfile.lock'
alias openprofile='open -a Sublime\ Text ~/.my_profiles/.bash_profile'
alias cleanxcodecachefile='sudo rm -r ~/Library/Developer/Xcode/DerivedData'
alias openxcodecachefile='open ~/Library/Developer/Xcode/DerivedData'

alias openttios2='open -a Xcode $ios_tt2'
alias cdtt2='cd $ios_tt2'
alias ttpodupdate2='cdtt2;pod repo update tt-iOS-podspecs-repo;pod install'
alias zz2='open -a Xcode $ios_tt2/Podfile'
alias zzz2='open -a Sublime\ Text $ios_tt2/Podfile.lock'

alias ppp='echo -e "pod repo update tt-iOS-podspecs-repo";pod repo update tt-iOS-podspecs-repo'

alias podupdate='pod repo update tt-iOS-podspecs-repo'
alias podupdatepb='echo pod update TTProtoBuf;pod update TTProtoBuf'
alias pupb='podupdatepb'
alias pbupdate='podupdatepb'
alias podoutdated='echo -e "pod ourdated";pod outdated'
alias po='podoutdated'



alias upgradePod='podUpdate.sh'
alias pod_trunk_push='pod trunk push $(ls *.podspec) --verbose'

# 解密marslog
alias decode_marslog='python /Users/samingzhong/work/tools/log/decode_mars_crypt_log_file.py'

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


#################### 统计 iOS 项目代码代码文件列表，行数 ##############################
# pch
alias xcodeprojlist='find . -name "*.m" -or -name "*.h" -or -name "*.xib" -or -name "*.c" -or -name "*.cpp" -or -name "*.swift" | xargs wc -l > ~/Desktop/xcodeprojlist-$(date '+%Y-%m-%d-%H-%M').txt'

alias podrepopush='pod repo push --allow-warnings kingwo_cocoapods *.podspec'
alias podrepolint='pod lib lint --allow-warnings'


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

source ~/.my_profiles/.cocoapod_profile

echo "Job done!"
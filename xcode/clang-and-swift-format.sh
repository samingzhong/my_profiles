#!/bin/sh

export PATH=/usr/local/bin:/opt/homebrew/bin/:$PATH
# 1. 拿到Xcode中正在打开的文档路径
FILE=$(osascript -e '
tell application "Xcode"
    activate
    tell application "System Events" to keystroke "s" using command down
    set last_word_in_main_window to (word -1 of (get name of window 1))
    set current_document to document 1 whose name ends with last_word_in_main_window
    set current_document_path to path of current_document
end tell ')


filename=$(basename -- "$FILE")
extension="${FILE##*.}"
echo $filename >> ~/Desktop/test.log
echo "handing file:${FILE}..." >> ~/Desktop/test.log



# 2.1 clang系源码，使用 clang-format 做代码格式化 安装指令 brew install clang-format
if [[ "$extension" = "m" || "$extension" = "h" || "$extension" = "c" || "$extension" = "cc" || "$extension" = "cpp" || "$extension" = "proto"  ]]; then
  echo "handing oc file..." >> ~/Desktop/test.log
    clang-format -i -style=file "$FILE"
    # 配置文件:~/.clang-format 配置参考 https://clang.llvm.org/docs/ClangFormatStyleOptions.html#
    echo "clang-format -i -style=file "$FILE"" >> ~/Desktop/test.log
# swift 源码，使用 swiftformat 做代码格式化。安装指令 brew install swiftformat
elif [[ "$extension" = "swift" ]]; then
  echo "handing swift file..." >> ~/Desktop/test.log
    swiftformat "$FILE" --config ~/.swiftformat
    echo "swiftformat \"$FILE\" --config ~/.swiftformat" >> ~/Desktop/test.log

    # 配置文件:~/.swiftformat 参考 https://github.com/nicklockwood/SwiftFormat#config-file, 或者swiftformat --options
fi


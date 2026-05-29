#!/usr/bin/env ruby
require 'fileutils'
require 'time'

# 1. 日付と時間の取得
current_time = Time.now
date_str     = current_time.strftime('%Y-%m-%d')
year_str     = current_time.strftime('%Y')

# 2. 引数からタイトルの決定
title_arg = ARGV[0]
if title_arg.nil? || title_arg.strip.empty?
  title = date_str
  slug  = date_str  # 引数がない場合は、スラッグも日付（2026-05-28）にする
else
  title = title_arg
  # 引数がある場合は、スペースをハイフンに変換（日本語タイトルも考慮）
  slug  = title.strip.gsub(/[ \s]+/, '-')
end

# 3. ディレクトリとファイル名の設定
# ⚠️ どのディレクトリからでも動くように、先ほど pwd で確認した絶対パスを File.join の最初に入れてください
# 例: target_dir = File.join('/Users/ユーザー名/projects/blog', '_posts', year_str)
target_dir = File.join('_posts', year_str)
file_name  = "#{date_str}-#{slug}.md"
file_path  = File.join(target_dir, file_name)

# 4. ディレクトリの作成（存在しない場合のみ）
FileUtils.mkdir_p(target_dir)

# 5. フロントマター（テンプレート）の定義
# 必要に応じて layout や tags などを調整してください
front_matter = <<~FRONT_MATTER
  ---
  layout: post
  title: "#{title}"
  date: #{current_time.strftime('%Y-%m-%d %H:%M:%S %z')}
  ---

FRONT_MATTER

# 6. ファイルの書き込み（上書き防止策付き）
if File.exist?(file_path)
  # エラーメッセージは「赤色 (\e[31m)」にする
  puts "\e[31mエラー: すでにファイルが存在します -> #{file_path}\e[0m"
  exit 1
else
  File.write(file_path, front_matter)
  # 成功メッセージを「太字の緑色 (\e[1;32m)」にする
  puts "\e[1;32mFile successfully created!\e[0m"
  puts "保存先: #{file_path}"
end
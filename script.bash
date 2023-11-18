#!/usr/bin/env bash

# 変数の受け取り

## Laravel をインストールするディレクトリを受け取り
readonly INSTALL_DIR="$1"
if [[ -z "${INSTALL_DIR}" ]]; then
    echo "Please enter the directory name to install Laravel."
    exit 1
fi

## Laravel をインストールするディレクトリの所有権を持つユーザーを受け取り
readonly OWNER_USER="$2"
if [[ -z "${OWNER_USER}" ]]; then
    echo "Please enter the user who owns the directory to install Laravel."
    exit 1
fi

## Laravel にアクセスする為の URL を受け取り
readonly ACCESS_URL="$3"
if [[ -z "${ACCESS_URL}" ]]; then
    echo "Please enter the URL to access Laravel."
    exit 1
fi

## Laravel-Customizedをインストールするかどうかを受け取り
readonly IS_INSTALL_LATEST_LARAVEL=${4-0}

# Laravel-Library-Installerの実行
curl -s https://raw.githubusercontent.com/Takeru-Yamamoto/Laravel-Library-Installer/script.bash | bash

# Laravel-Application-Installerの実行
curl -s https://raw.githubusercontent.com/Takeru-Yamamoto/Laravel-Application-Installer/script.bash | bash "${INSTALL_DIR}" "${OWNER_USER}" "${ACCESS_URL}" "${IS_INSTALL_LATEST_LARAVEL}"
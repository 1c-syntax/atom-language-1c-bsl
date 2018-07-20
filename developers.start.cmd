@echo off

cd %userprofile%\.atom\packages

git clone https://github.com/nixel2007/autocomplete-plus.git
cd autocomplete-plus
git checkout fix-76-unicode-support
git pull

cmd /c "apm install --dev"

if not exist %USERPROFILE%\.atom\dev\packages\language-1c-bsl apm develop language-1c-bsl

cd /d %USERPROFILE%\.atom\dev\packages\language-1c-bsl

git pull

cmd /c "apm install"

atom --dev

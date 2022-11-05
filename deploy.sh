#!/usr/bin/env sh

# остановить публикацию при ошибках
set -e

# сборка
npm run build

# переход в каталог сборки
cd dist

# если вы публикуете на пользовательский домен
# echo 'www.example.com' > CNAME


# если вы публикуете по адресу https://<USERNAME>.github.io/<REPO>

git push -f git@github.com:morysol/vue-calculator.github.io.git main:gh-pages

# git push -f git@github.com:morysol/vue-calculator.git main:gh-pages



git init
git add -A
git commit -m 'deploy'
cd -
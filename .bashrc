alias pro='cd /c/users/orange/desktop/projects/'
alias atom='/c/Users/Orange/AppData/Local/atom/Update.exe/' $*

createNewProject() {
# Переходим в папку с проектами
pro
# Создаем новую папку, $1 - номер проекта, $2 - название
mkdir site_$1\($2\)
# Переходим в папку с проектом
cd site_$1\($2\)
# Создаем папку для исходников(макеты, шрифты)
mkdir source
# Клонируем стартовый шаблон с гитхаба
git clone https://github.com/Orange289/glivera-team-template.git site
# Переходим в папку site
cd site
# Удаляем ненужные папки и папку с гитом
rm -rf .git settings.jar
# Линкуем глобальные пакеты(сюда можно поставить npm install)
npm link gulp rimraf gulp-jade gulp-sass gulp-inline-image gulp-autoprefixer gulp-plumber gulp-directory-sync browser-sync gulp-concat gulp-cssfont64 gulp-html5-lint gulp-purifycss gulp-uglify gulp-imagemin imagemin-pngquant gulp-csso gulp-sourcemaps gulp-postcss postcss-assets postcss-reporter stylelint gulp-svg-sprite gulp-svgmin gulp-cheerio gulp-replace
# Открываем проект в PhpStorm
atom /c/Users/Orange/Desktop/test_projects/site_$1\($2\)/site
# Запускаем gulp(или npm run start)
gulp
}

alias new=createNewProject

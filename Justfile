PHP_EXEC := if os() == "macos" { "$(brew --prefix php@7.4)/bin/php" } else { "php" }
CP_PATH := `realpath ClassicPress-release-*`
CP_URL := "https://codeload.github.com/ClassicPress/ClassicPress-release/zip/refs/tags/1.4.4"
WP_LANG_URL := "https://translate.wordpress.org/projects/wp/dev/he/default/export-translations/"

download-classicpress:
    wget {{CP_URL}} -O cp.zip
    unzip cp.zip
    ln -s "$(realpath src)" "{{CP_PATH}}/wp-content/themes/gaiale"
    mkdir "{{CP_PATH}}/languages"
    wget "{{WP_LANG_URL}}?format=po" -O "{{CP_PATH}}/wp-content/languages/wp-dev-he.po"
    wget "{{WP_LANG_URL}}?format=mo" -O "{{CP_PATH}}/wp-content/languages/wp-dev-he.mo"

watch:
    cd ClassicPress-release-* && {{PHP_EXEC}} -S localhost:51690

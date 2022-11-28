PHP_EXEC := if os() == "macos" { "$(brew --prefix php@7.4)/bin/php" } else { "php" }
CP_URL := "https://codeload.github.com/ClassicPress/ClassicPress-release/zip/refs/tags/1.4.4"

download-classicpress:
    wget {{CP_URL}} -O cp.zip
    unzip cp.zip
    ln -s "$(realpath src)" "$(realpath ClassicPress-release-*)"/wp-content/themes/gaiale

watch:
    cd ClassicPress-release-* && {{PHP_EXEC}} -S localhost:51690

#!/bin/sh

basedir=$(dirname "$(echo "$0" | sed -e 's,\\,/,g')")
settings=--config "$basedir/prettier/.prettierrc.json" --ignore-path "$basedir/prettier/.prettierignore"

exec "$basedir/source/node" "$basedir/prettier/prettier.cjs" "$@" $settings

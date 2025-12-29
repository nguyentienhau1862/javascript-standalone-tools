#!/usr/bin/env pwsh

$basedir=Split-Path $MyInvocation.MyCommand.Definition -Parent
$settings=--config "$basedir/prettier/.prettierrc.json" --ignore-path "$basedir/prettier/.prettierignore"

"$basedir/source/node.exe" "$basedir/prettier/prettier.cjs" $args $settings

exit 0

#!/bin/bash

#
# Nettoyer les caches dans le répertoire perso :
#

cd /home/guillaume

find .kodi/temp/archive_cache/ -type f -delete
find ".googleearth/Cache/" -type f -delete
find ".config/VSCodium/Code Cache/" -type f -delete
find ".config/VSCodium/CachedData/" -type f -delete
find ".config/VSCodium/CachedExtensionVSIXs/" -type f -delete
find ".config/VSCodium/User/globalStorage/redhat.vscode-yaml/schemas_cache/" -type f -delete
find ".config/VSCodium/Cache/" -type f -delete
find ".config/VSCodium/CachedExtensions/" -type f -delete
find ".config/VSCodium/GPUCache/" -type f -delete
find ".config/streamtuner2/cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/Code Cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/Application Cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/Application Cache/Cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/Cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/GPUCache/" -type f -delete
find ".config/Signal/Code Cache/" -type f -delete
find ".config/Signal/Cache/" -type f -delete
find ".config/Signal/GPUCache/" -type f -delete
find ".config/discord/Code Cache/" -type f -delete
find ".config/discord/0.0.14/modules/discord_voice/node_modules/lru-cache/" -type f -delete
find ".config/discord/Cache/" -type f -delete
find ".config/discord/GPUCache/" -type f -delete
find ".config/Remember The Milk/Application Cache/" -type f -delete
find ".config/Remember The Milk/Service Worker/CacheStorage/" -type f -delete
find ".config/Remember The Milk/Cache/" -type f -delete
find ".config/Remember The Milk/GPUCache/" -type f -delete
find ".config/Code/CachedData/" -type f -delete
find ".config/Code/Cache/" -type f -delete
find ".config/Code/CachedExtensions/" -type f -delete
find ".config/Code/GPUCache/" -type f -delete
find ".config/calibre/caches/" -type f -delete
find ".config/chromium/Profile 1/Service Worker/ScriptCache/" -type f -delete
find ".config/chromium/Profile 1/Service Worker/CacheStorage/" -type f -delete
find ".config/chromium/Profile 1/GPUCache/" -type f -delete
find ".config/chromium/ShaderCache/" -type f -delete
find ".config/chromium/ShaderCache/GPUCache/" -type f -delete
find ".config/chromium/Default/Service Worker/ScriptCache/" -type f -delete
find ".config/chromium/Default/Service Worker/CacheStorage/" -type f -delete
find ".config/chromium/Default/GPUCache/" -type f -delete
find ".config/chromium/GrShaderCache/" -type f -delete
find ".config/skypeforlinux/Cache/" -type f -delete
find ".config/skypeforlinux/GPUCache/" -type f -delete
find ".config/BraveSoftware/Brave-Browser/ShaderCache/" -type f -delete
find ".config/BraveSoftware/Brave-Browser/ShaderCache/GPUCache/" -type f -delete
find ".config/BraveSoftware/Brave-Browser/GrShaderCache/" -type f -delete
find ".config/BraveSoftware/Brave-Browser/GrShaderCache/GPUCache/" -type f -delete
find ".emacs.d/.cache/" -type f -delete

#
# Nettoyer les caches (ET les fichiers lourds ou redondants) dans la sauvegarde complète :
#

cd /mnt/donnees/sauvegardes/homes/completes/guillaume/guillaume

rm -fR .dropbox*
rm -fR .mozilla/firefox/nkp51vz4.default/storage/default/

find "VirtualBox\ VMs" -type f -delete

find ".cache" -type f -delete
find .kodi/temp/archive_cache/ -type f -delete
find ".googleearth/Cache/" -type f -delete
find ".config/VSCodium/Code Cache/" -type f -delete
find ".config/VSCodium/CachedData/" -type f -delete
find ".config/VSCodium/CachedExtensionVSIXs/" -type f -delete
find ".config/VSCodium/User/globalStorage/redhat.vscode-yaml/schemas_cache/" -type f -delete
find ".config/VSCodium/Cache/" -type f -delete
find ".config/VSCodium/CachedExtensions/" -type f -delete
find ".config/VSCodium/GPUCache/" -type f -delete
find ".config/streamtuner2/cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/Code Cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/Application Cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/Application Cache/Cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/Cache/" -type f -delete
find ".config/Microsoft/Microsoft Teams/GPUCache/" -type f -delete
find ".config/Signal/Code Cache/" -type f -delete
find ".config/Signal/Cache/" -type f -delete
find ".config/Signal/GPUCache/" -type f -delete
find ".config/discord/Code Cache/" -type f -delete
find ".config/discord/0.0.14/modules/discord_voice/node_modules/lru-cache/" -type f -delete
find ".config/discord/Cache/" -type f -delete
find ".config/discord/GPUCache/" -type f -delete
find ".config/libreoffice/4/user/uno_packages/cache/" -type f -delete
find ".config/libreoffice/4/cache/" -type f -delete
find ".config/Remember The Milk/Application Cache/" -type f -delete
find ".config/Remember The Milk/Service Worker/CacheStorage/" -type f -delete
find ".config/Remember The Milk/Cache/" -type f -delete
find ".config/Remember The Milk/GPUCache/" -type f -delete
find ".config/Code/CachedData/" -type f -delete
find ".config/Code/Cache/" -type f -delete
find ".config/Code/CachedExtensions/" -type f -delete
find ".config/Code/GPUCache/" -type f -delete
find ".config/calibre/caches/" -type f -delete
find ".config/chromium/Profile 1/Service Worker/ScriptCache/" -type f -delete
find ".config/chromium/Profile 1/Service Worker/CacheStorage/" -type f -delete
find ".config/chromium/Profile 1/GPUCache/" -type f -delete
find ".config/chromium/ShaderCache/" -type f -delete
find ".config/chromium/ShaderCache/GPUCache/" -type f -delete
find ".config/chromium/Default/Service Worker/ScriptCache/" -type f -delete
find ".config/chromium/Default/Service Worker/CacheStorage/" -type f -delete
find ".config/chromium/Default/GPUCache/" -type f -delete
find ".config/chromium/GrShaderCache/" -type f -delete
find ".config/skypeforlinux/Cache/" -type f -delete
find ".config/skypeforlinux/GPUCache/" -type f -delete
find ".config/BraveSoftware/Brave-Browser/ShaderCache/" -type f -delete
find ".config/BraveSoftware/Brave-Browser/ShaderCache/GPUCache/" -type f -delete
find ".config/BraveSoftware/Brave-Browser/GrShaderCache/" -type f -delete
find ".config/BraveSoftware/Brave-Browser/GrShaderCache/GPUCache/" -type f -delete
find ".emacs.d/.cache/" -type f -delete


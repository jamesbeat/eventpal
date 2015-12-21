core = 7.x
api = 2
projects[] = drupal

;Common modules.
projects[ctools][subdir] = common_modules
projects[ds][subdir] = common_modules
projects[entity][subdir] = common_modules
projects[jquery_update][subdir] = common_modules
projects[libraries][subdir] = common_modules
projects[rules][subdir] = common_modules
projects[token][subdir] = common_modules
projects[variable][subdir] = common_modules

;Content Modules
projects[content_access][subdir] = content_modules
projects[blockify][subdir] = content_modules
projects[exclude_node_title][subdir] = content_modules
projects[field_group][subdir] = content_modules
projects[image_style_quality][subdir] = content_modules
projects[insert][subdir] = content_modules
projects[insert_block][subdir] = content_modules
projects[references][subdir] = content_modules
projects[tablefield][subdir] = content_modules
projects[markdown][subdir] = content_modules
projects[ajax_markup][subdir] = content_modules
projects[insert][subdir] = content_modules

;Image Modules
projects[focal_point][subdir] = image_modules
projects[focal_point][version] = "1.0-beta1"
projects[image_style_quality][subdir] = image_modules
projects[hires_images][subdir] = image_modules


;Menu Modules
projects[menu_attributes][subdir] = menu_modules
projects[menu_position][subdir] = menu_modules
projects[menu_views][subdir] = menu_modules
projects[multiple_node_menu][subdir] = menu_modules

;Views
projects[views][subdir] = views_modules
projects[views_bulk_operations][subdir] = views_modules
projects[views_php][subdir] = views_modules

;Registration
projects[registration][subdir] = registration_modules
projects[calendar][subdir] = registration_modules
projects[date][subdir] = registration_modules
projects[location][subdir] = registration_modules

;Email
projects[mailsystem][subdir] = mail_modules
projects[smtp][subdir] = mail_modules
projects[htmlmail][subdir] = mail_modules
projects[mimemail][subdir] = mail_modules

;Admin Modules
projects[admin_menu][subdir] = admin_modules
projects[backup_migrate][subdir] = admin_modules
projects[module_filter][subdir] = admin_modules
projects[google_analytics][subdir] = admin_modules
projects[security_review][subdir] = admin_modules
projects[devel][subdir] = admin_modules


; Multilingual modules.
projects[i18n][subdir] = language_modules
projects[i18nviews][subdir] = language_modules
projects[l10n_update][subdir] = language_modules
projects[language_switcher][subdir] = language_modules


; THEMES

projects[evental][type] = theme
projects[evental][download][type] = git
projects[evental][download][url] = https://github.com/jamesbeat/evental.git
projects[evental][download][branch] = "master"
projects[evental][destination] = "themes"


; Libraries
libraries[ace][download][type] = file
libraries[ace][download][url] = https://github.com/ajaxorg/ace-builds/archive/master.zip

; libraries[jquery.cycle][download][type] = git
; libraries[jquery.cycle][download][url] = https://github.com/malsup/cycle.git

; libraries[emogrifier][download][type] = file
; libraries[emogrifier][download][url] = https://github.com/jjriv/emogrifier/archive/master.zip

libraries[jquery.migrate][download][type] = git
libraries[jquery.migrate][download][url] = https://github.com/jquery/jquery-migrate.git

libraries[jquery.focuspoint][download][type] = git
libraries[jquery.focuspoint][download][url] = https://github.com/jonom/jquery-focuspoint.git

; Load some translations.
translations[] = de
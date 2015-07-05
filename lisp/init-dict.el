(require-package 'dictionary)
(autoload 'dictionary-search "dictionary"
"Ask for a word and search it in all dictionaries" t)
(autoload 'dictionary-match-words "dictionary"
"Ask for a word and search all matching words in the dictionaries" t)
(autoload 'dictionary-lookup-definition "dictionary"
"Unconditionally lookup the word at point." t)
(autoload 'dictionary "dictionary"
"Create a new dictionary buffer" t)
;;autosearch had been canceled
(autoload 'dictionary-mouse-popup-matching-words "dictionary"
"Display entries matching the word at the cursor"t )
(autoload 'dictionary-popup-matching-words "dictionary"
"Display entries matching the word at the point" t)
(autoload 'dictionary-tooltip-mode "dictionary"
"Display tooltips for the current word" t)
(autoload 'global-dictionary-tooltip-mode "dictionary"
"Enable/disable dictionary-tooltip-mode for all buffers" t)
(global-set-key [mouse-3] 'dictionary-mouse-popup-matching-words)
(global-set-key [(control c)(d)] 'dictionary-lookup-definition)
(global-set-key [(control c)(s)] 'dictionary-search)
(global-set-key [(control c)(m)] 'dictionary-match-words)
;; choose a dictionary server
;;(setq dictionary-server "www.dict.org")
(setq dictionary-server "localhost")

(provide 'init-dict)

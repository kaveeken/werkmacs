(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t )
(package-initialize)

(unless package-archive-contents
  (package-refresh-contents))
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file (expand-file-name "~/proj/werk-emacs/org-init.org"))

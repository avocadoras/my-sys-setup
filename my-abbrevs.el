(clear-abbrev-table global-abbrev-table)

(define-abbrev-table 'global-abbrev-table
  '(

    ;; net abbrev
    ("afaik" "as far as i know" )
    ("atm" "at the moment" )
    ("ty" "thank you" )
    ("ur" "you are" )
    ("btw" "by the way" )

    ;; english word abbrev
    ("arg" "argument" )
    ("bc" "because" )
    ("bg" "background" )
    ("math" "mathematics" )

    ;; computing
    ("cs" "computer science" )

    ;; tech company
    ("macos" "Mac OS" )

    ;; programing
    ("ipa" "IP address" )
    ("jvm" "Java Virtual Machine" )
    ("subdir" "sub-directory" )

    ("db" "database" )

    ;; programing
    ("eq" "==" )

    ;; unicode
    ("hr" "--------------------------------------------------" )
    ;;

    ))

;; define abbrev for specific major mode

(when (boundp 'css-mode-abbrev-table)
  (clear-abbrev-table css-mode-abbrev-table))

(define-abbrev-table 'css-mode-abbrev-table
  '(
    ("zoff" "/* https://developer.paciellogroup.com/blog/2012/05/html5-accessibility-chops-hidden-and-aria-hidden/ */
.offscreen {
 clip-path: inset(100%);
 clip: rect(1px 1px 1px 1px); /* IE 6/7 */
  clip: rect(1px, 1px, 1px, 1px);
  height: 1px;
  overflow: hidden;
  position: absolute;
  white-space: nowrap; /* added line */
  width: 1px;
}")

    ("bbox" "/* src: https://www.paulirish.com/2012/box-sizing-border-box-ftw/ */
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}
")
    ))


(when (boundp 'python-mode-abbrev-table)
  (clear-abbrev-table python-mode-abbrev-table))

(define-abbrev-table 'python-mode-abbrev-table
  '(
    ("zurl" "from django.urls import path


from . import views

app_name =
urlpatterns = [
    path(),
]")
    ))

(when (boundp 'js-mode-abbrev-table)
  (clear-abbrev-table js-mode-abbrev-table))

(define-abbrev-table 'js-mode-abbrev-table
  '(

    ))

;; Toggle abbrev mode
(set-default 'abbrev-mode t)

(setq save-abbrevs nil)

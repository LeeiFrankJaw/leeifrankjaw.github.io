;;; Directory Local Variables
;;; For more information see (info "(emacs) Directory Variables")

;; If global flycheck mode is enabled, the following will remove
;; flycheck-handle-save from after-save-hook
(("src"
  (nil
   (after-save-hook
    lambda nil (call-process "sh" nil nil nil "-c" "cd .. && ./build.sh"))))
 ("src/post.js"
  (nil
   (after-save-hook)))
 ("src/main.js"
  (nil
   (after-save-hook)))
 ("content.json"
  (nil
   (after-save-hook
    lambda nil (call-process "sh" nil nil nil "-c" "./build.sh")))))

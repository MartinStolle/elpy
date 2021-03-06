(ert-deftest elpy-insert--header-should-insert-header-face ()
  (elpy-testcase ()
    (elpy-insert--header "foo")
    (should (eq (get-text-property (point-min) 'face)
                'header-line))))

(ert-deftest elpy-insert--header-should-end-with-empty-line ()
  (elpy-testcase ()
    (elpy-insert--header "foo")
    (goto-char (point-min))
    (forward-line 1)
    (should (looking-at "\n"))))

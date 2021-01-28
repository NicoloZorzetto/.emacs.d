((magit-commit
  ("--all"))
 (magit-pull nil
	     ("--rebase"))
 (magit-push
  ("--force-with-lease")
  ("--force")
  ("--force-with-lease" "--force"))
 (magit-revert nil))

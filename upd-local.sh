#!/bin/bash

# moving packages to core repository
mv ./local-x86_64/* ../zone-repo/x86_64/

# update repository, remove .old & push changes
(cd ../zone-repo/x86_64/; repo-add zone-repo.db.tar.gz *.pkg.tar.zst; rm -rf *.old; git add .; git commit -m "Update Local Repository"; .tkn personal; git push -u origin master)

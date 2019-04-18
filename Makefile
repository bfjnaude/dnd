
build:
	pandoc -s --template template.html --toc -c css/dnd.css dnd.md -o dnd.html --metadata pagetitle='DnD'

deploy:
	aws s3 sync ~/dnd/ s3://bfjnaudebackups/dnd/ --exclude ".git*" \
		--exclude "Makefile" \
		--exclude "*.code-workspace" \
		--exclude "template.html" \
		--exclude "*.md" \
		--profile bfjnaudebackups --delete --acl public-read
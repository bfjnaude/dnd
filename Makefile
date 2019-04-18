
build:
	pandoc -s --template template.html --toc -c css/dnd.css dnd.md -o dnd.html --metadata pagetitle='DnD'

deploy:
	aws s3 sync ~/dnd/ s3://bfjnaudebackups/dnd/ --profile bfjnaudebackups --acl public-read
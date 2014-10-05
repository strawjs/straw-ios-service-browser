.PHONY: doc doc-release release

doc:
	appledoc --project-name 'StrawServiceBrowser' --project-company 'strawjs.org' --company-id 'org.strawjs' --output doc/dev --create-html --no-create-docset StrawServiceBrowser

doc-release:
	appledoc --project-name 'StrawServiceBrowser' --project-company 'strawjs.org' --company-id 'org.strawjs' --output doc/v0.0.0 --create-html --no-create-docset StrawServiceBrowser

release:
	pod trunk push StrawServiceBrowser.podspec

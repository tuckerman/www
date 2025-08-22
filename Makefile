# Copyright Cameron Jay Tuckerman-Lee 2024. All rights reserved.

.PHONY: dev
dev:
	@python3 -m http.server 8000

.PHONY: dev-public
dev-public: public
	@python3 -m http.server 8000 --directory public

.PHONY: public
public:
	@mkdir -p public

	@cp index.html public/index.html
	@cp sitemap.txt public/sitemap.txt
	@cp sitemap.xml public/sitemap.xml
	@cp style.css public/style.css
	@cp print.css public/print.css
	@cp profile.webp public/profile.webp
	@cp favicon.png public/favicon.png
	@cp includes.js public/includes.js

	@cp -R fonts public/fonts
	@cp -R resume public/resume
	@cp -R talks public/talks
	@cp -R schedule public/schedule
	@cp -R shared public/shared

.PHONY: clean
clean:
	@rm -rf public

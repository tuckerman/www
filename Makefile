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
	@cp resume.html public/resume.html
	@cp style.css public/style.css
	@cp profile.webp public/profile.webp
	@cp sitemap.txt public/sitemap.txt
	@cp favicon.png public/favicon.png
	@cp -R fonts public/fonts
	@cp -R artifacts public/artifacts

.PHONY: clean
clean:
	@rm -rf public

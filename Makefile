.PHONY: dev
dev:
	@python3 -m http.server 8000

.PHONY: public
public:
	@mkdir -p public
	@cp index.html public/index.html
	@cp resume.html public/resume.html
	@cp style.css public/style.css
	@cp profile.webp public/profile.webp
	@cp sitemap.txt public/sitemap.txt
	@cp favicon.ico public/favicon.ico
	@cp -R fonts public/fonts

.PHONY: clean
clean:
	@rm -rf public

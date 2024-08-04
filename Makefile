.PHONY: dev
dev:
	@python3 -m http.server 8000

.PHONY: public
public:
	@mkdir -p public
	@cp index.html public/index.html
	@cp resume.html public/resume.html
	@cp style.css public/style.css
	@cp -R fonts public/fonts
	@cp -R profile.jpg public/profile.jpg
	@cp sitemap.txt public/sitemap.txt

.PHONY: clean
clean:
	@rm -rf public

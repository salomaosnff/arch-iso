.PHONY: build

build:
	rm -rf */*.pkg.tar.zst
	for d in */; do \
		cd "$$d" && \
		makepkg -d --noconfirm --clean --syncdeps && \
		mv *.pkg.tar.zst ../../repo/ && \
		cd ..; \
	done

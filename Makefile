MANIFEST=org.swi_prolog.swipl.yml
BUILD_OPTS=--user --ccache --force-clean --sandbox --install --install-deps-from=flathub --mirror-screenshots-url=https://dl.flathub.org/media/ --repo=repo

all:
	@echo "Targets"
	@echo
	@echo "build		Build and install"
	@echo "run		Run the flatpak"
	@echo "linter		Check the flatpak"

build:
	flatpak-builder $(BUILD_OPTS) app $(MANIFEST)

run:
	flatpak run org.flatpak.swi-prolog

linter:
	flatpak run --command=flatpak-builder-lint org.flatpak.Builder manifest $(MANIFEST)
	flatpak run --command=flatpak-builder-lint org.flatpak.Builder repo repo

# Building a flatpak

## Preparation

    flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install --user org.kde.Platform
	flatpak install --user org.kde.Sdk

## Examine runtime

    flatpak run org.kde.Sdk//6.7

## Build

    flatpak-builder --user --ccache --force-clean app org.flatpak.swi-prolog.yaml

Other options

 - --repo=repo

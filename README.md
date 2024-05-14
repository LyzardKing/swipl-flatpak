# Building a flatpak

## Preparation

    flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install --user org.kde.Sdk

## Examine runtime

    flatpak run org.kde.Sdk//6.7

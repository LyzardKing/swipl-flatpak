# Building a flatpak

## Preparation

    flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	flatpak install --user org.kde.Platform
	flatpak install --user org.kde.Sdk

## Examine runtime

    flatpak run org.kde.Sdk//6.7

## Other actions

See `Makefile`.

## Status

This is a proof of concept.  Currently builds, but `make linter` gives

```
flatpak run --command=flatpak-builder-lint org.flatpak.Builder repo repo
{
    "errors": [
        "appstream-missing-appinfo-file",
        "appstream-metainfo-missing",
        "appstream-missing-appinfo"
    ],
    "warnings": [
        "finish-args-contains-both-x11-and-wayland"
    ],
    "message": "Please consult the documentation at https://docs.flathub.org/docs/for-app-authors/linter"
}
```

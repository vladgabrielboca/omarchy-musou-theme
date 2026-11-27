<div align="center">

# Musou

A dark monochrome theme for [Omarchy](https://omarchy.org), named after Musou Black.

Pure `#000000` top bar and overlays. `#0b0b0b` app surfaces so white text stays comfortable for long sessions. Indigo for accents, selections, and directories, muted rose for errors.

</div>

<p align="center">
  <img src="preview.png" alt="Musou desktop preview" width="100%" />
</p>

## Install

```bash
omarchy theme install https://github.com/vladgabrielboca/omarchy-musou-theme
omarchy hook install theme-set ~/.config/omarchy/themes/musou/hooks/musou-eza
omarchy theme set musou
```

The `musou-eza` hook activates `eza.yml` only while Musou is active and removes the symlink whenever you switch to another theme.

To apply the pure `#000000` boot and disk-unlock screen as well:

```bash
omarchy plymouth set '#000000' '#dcdcdc' ~/.config/omarchy/themes/musou/unlock.png
```

## Unlock Screen

<p align="center">
  <img src="preview-unlock.png" alt="Musou Plymouth and SDDM unlock screen" width="100%" />
</p>

## Wallpapers

Four backgrounds ship with the theme. `0-solid-black.jpg` loads first by default.

| | |
| :---: | :---: |
| <img src="backgrounds/0-solid-black.jpg" alt="Solid Black" width="100%" /> | <img src="backgrounds/1-creation-of-adam-dots.png" alt="Creation of Adam Dots" width="100%" /> |
| `0-solid-black.jpg` | `1-creation-of-adam-dots.png` |
| <img src="backgrounds/2-creation-of-adam.png" alt="Creation of Adam" width="100%" /> | <img src="backgrounds/3-dripping.jpg" alt="Dripping" width="100%" /> |
| `2-creation-of-adam.png` | `3-dripping.jpg` |

## Palette

| Role | Hex |
| :--- | :--- |
| Bar & Overlays | `#000000` |
| Canvas | `#0b0b0b` |
| Selection | `#1c1c1c` |
| Text | `#dcdcdc` |
| Bright Text | `#f0f0f0` |
| Muted | `#707070` |
| Indigo (directories, prompt) | `#8c84b8` |
| Bright Indigo (accent, active selection) | `#9c94c8` |
| Rose (errors, alerts) | `#a86870` |

### What is included

- `colors.toml`: generates app configs across terminals, Hyprland, editors, and Qt.
- `shell.toml`: `#000000` bar and overlays with `1px` graphite borders on popups and notifications (`2px` on launcher and menus).
- `chromium.theme`: `#000000` (`0,0,0`) browser frame color for Chromium-based browsers.
- `btop.theme`: uniform graphite panel borders and monochrome graphs, with `#9c94c8` reserved for shortcut keys and the active row.
- `eza.yml`: monochrome `ls` hierarchy with dimmed gray metadata, soft-white code/docs, brushed-gray media, smoke-indigo folders, light-lavender symlinks, and muted-rose executables/archives.
- `unlock.png` and `preview-unlock.png`: transparent dimmed dot-matrix *Creation of Adam* boot and login graphic.

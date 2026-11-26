<div align="center">

# Musou

A dark monochrome theme for [Omarchy](https://omarchy.org), named after Musou Black.

Pure `#000000` top bar and overlays. `#0b0b0b` app surfaces so white text stays comfortable for long sessions. Indigo for focus and directories, muted rose for errors.

</div>

<p align="center">
  <img src="preview.png" alt="Musou desktop preview" width="100%" />
</p>

## Install

```bash
omarchy theme install https://github.com/vladgabrielboca/omarchy-musou-theme
omarchy theme set musou
```

To apply the boot and disk-unlock screen as well:

```bash
omarchy plymouth set by theme musou
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
| Text | `#ffffff` |
| Muted | `#646464` |
| Indigo (directories, prompt) | `#6f63b8` |
| Bright Indigo (accent, active selection) | `#887cd4` |
| Rose (errors, alerts) | `#a86870` |

### What is included

- `colors.toml`: generates app configs across terminals, Hyprland, editors, and Qt.
- `shell.toml`: `#000000` bar and overlays with `1px` graphite borders on popups and notifications (`2px` on launcher and menus).
- `btop.theme`: uniform graphite panel borders and monochrome graphs, with `#887cd4` reserved for shortcut keys and the active row.
- `unlock.png` and `preview-unlock.png`: dimmed dot-matrix *Creation of Adam* boot and login graphic on `#000000`.

<details>
<summary>Optional: minimal <code>ls</code> colors (<code>~/.config/eza/theme.yml</code>)</summary>

Omarchy aliases `ls` to `eza -lh`, which colors each metadata column with a different ANSI slot. To keep all metadata and regular files plain white while highlighting only folders and symlinks (as shown in the desktop screenshot), save this to `~/.config/eza/theme.yml`:

```yaml
colourful: false

filekinds:
  normal: { foreground: Default }
  directory: { foreground: Blue, is_bold: true }
  symlink: { foreground: Cyan }
  executable: { foreground: Green, is_bold: true }
  mount_point: { foreground: Blue, is_bold: true }

perms:
  user_read: { foreground: Default }
  user_write: { foreground: Default }
  user_execute_file: { foreground: Default }
  user_execute_other: { foreground: Default }
  group_read: { foreground: Default }
  group_write: { foreground: Default }
  group_execute: { foreground: Default }
  other_read: { foreground: Default }
  other_write: { foreground: Default }
  other_execute: { foreground: Default }
  special_user_file: { foreground: Default }
  special_other: { foreground: Default }
  attribute: { foreground: Default }

size:
  number_byte: { foreground: Default }
  number_kilo: { foreground: Default }
  number_mega: { foreground: Default }
  number_giga: { foreground: Default }
  number_huge: { foreground: Default }
  unit_byte: { foreground: Default }
  unit_kilo: { foreground: Default }
  unit_mega: { foreground: Default }
  unit_giga: { foreground: Default }
  unit_huge: { foreground: Default }

users:
  user_you: { foreground: Default }
  user_root: { foreground: Red }
  user_other: { foreground: Default }
  group_yours: { foreground: Default }
  group_other: { foreground: Default }
  group_root: { foreground: Red }

file_type:
  image: { foreground: Default }
  video: { foreground: Default }
  music: { foreground: Default }
  crypto: { foreground: Default }
  document: { foreground: Default }
  compressed: { foreground: Default }
  temp: { foreground: Default }
  compiled: { foreground: Default }
  build: { foreground: Default }
  source: { foreground: Default }

punctuation: { foreground: Default }
date: { foreground: Default }
header: { foreground: Default, is_underline: true }
broken_symlink: { foreground: Red }
broken_path_overlay: { foreground: Red }
```

</details>

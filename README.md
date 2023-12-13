# Tmux Nightfly

A TMUX theme inspired by bluz71/vim-nightfly-colors

[![TPM](https://img.shields.io/badge/tpm--support-true-blue)](https://github.com/tmux-plugins/tpm)
[![Awesome](https://img.shields.io/badge/Awesome-tmux-d07cd0?logo=data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAABVklEQVRIS+3VvWpVURDF8d9CRAJapBAfwWCt+FEJthIUUcEm2NgIYiOxsrCwULCwktjYKSgYLfQF1JjCNvoMNhYRCwOO7HAiVw055yoBizvN3nBmrf8+M7PZsc2RbfY3AfRWeNMSVdUlHEzS1t6oqvt4n+TB78l/AKpqHrdwLcndXndU1WXcw50k10c1PwFV1fa3cQVzSR4PMd/IqaoLeIj2N1eTfG/f1gFVtQMLOI+zSV6NYz4COYFneIGLSdZSVbvwCMdxMsnbvzEfgRzCSyzjXAO8xlHcxMq/mI9oD+AGlhqgxjD93OVOD9TUuICdXd++/VeAVewecKKv2NPlfcHUAM1qK9FTnBmQvJjkdDfWzzE7QPOkAfZiEce2ECzhVJJPHWAfGuTwFpo365pO0NYjmEFr5Eas4SPeJfll2rqb38Z7/yaaD+0eNM3kPejt86REvSX6AamgdXkgoxLxAAAAAElFTkSuQmCC)](https://github.com/rothgar/awesome-tmux)
[![License](https://img.shields.io/badge/License-MIT-brightgreen.svg)](https://wfxr.mit-license.org/2017)

![screenshot](https://raw.githubusercontent.com/jasonmb626/tmux-nightfly/main/tmux-nightfly.png)

### 📥 Installation

**Install manually**

Clone the repo somewhere and source it in your tmux.conf:

```tmux
run-shell "/path/to/tmux-nightfly.tmux"
```

_NOTE: Options should be set before sourcing._

**Install using [TPM](https://github.com/tmux-plugins/tpm)**

```tmux
set -g @plugin 'jasonmb626/tmux-nightfly'
```

### ⚙ Customizing

You can change the date and time formats using strftime:

```tmux
set -g @tmux_power_date_format '%F'
set -g @tmux_power_time_format '%T'
```

You can also customize the icons. As an example,
the following configurations can generate the theme shown in the first screenshot:

_The default icons use glyphs from [nerd-fonts](https://github.com/ryanoasis/nerd-fonts)._

### 📦 Plugin support

**[tmux-net-speed](https://github.com/wfxr/tmux-net-speed)**

```tmux
set -g @tmux_power_show_upload_speed true
set -g @tmux_power_show_download_speed true
```

**[tmux-prefix-highlight](https://github.com/tmux-plugins/tmux-prefix-highlight)**

```tmux
# 'L' for left only, 'R' for right only and 'LR' for both
set -g @tmux_power_prefix_highlight_pos 'LR'
```

**[tmux-web-reachable](https://github.com/wfxr/tmux-web-reachable)**

```tmux
set -g @tmux_power_show_web_reachable true
```

### 🔗 Other plugins

You might also find these useful:

- [tmux-fzf-url](https://github.com/wfxr/tmux-fzf-url)
- [tmux-net-speed](https://github.com/wfxr/tmux-net-speed)
- [tmux-web-reachable](https://github.com/wfxr/tmux-web-reachable)

### 📃 License

MIT (c) Jason Brunelle

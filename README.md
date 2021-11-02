# You the Champ!

The ultimate solution to slow zsh startup.

- [Usage](#usage)
- [How it works](#how-it-works)
- [Benchmark](#benchmark)
- [License](#license)

## Usage

Download [you-the-champ.zsh](
  https://raw.githubusercontent.com/romkatv/you-the-champ/master/you-the-champ.zsh):

```zsh
curl -fsSLo ~/you-the-champ.zsh https://raw.githubusercontent.com/romkatv/you-the-champ/master/you-the-champ.zsh
```

Add one line at the top of `~/.zshrc`:

```zsh
source ~/you-the-champ.zsh || return 0
```

## How it works

*You the Champ* defers all commands in `~/.zshrc`.

There are other tools that allow you to defer zsh initialization: [zinit turbo mode](
  https://github.com/zdharma-continuum/zinit#turbo-and-lucid), [zplug](
  https://github.com/zplug/zplug), [zsh-defer](https://github.com/romkatv/zsh-defer), etc. They the
Chumps!

*Chumps* require annotating individual commands for deferral. *Champ* defers everything
automatically.

*Chumps* run deferred commands from [zle](
  http://zsh.sourceforge.net/Doc/Release/Zsh-Line-Editor.html) and [break your code](
  https://github.com/romkatv/zsh-defer#caveats). *Champ* runs them from [precmd](
  https://zsh.sourceforge.io/Doc/Release/Functions.html#index-precmd) and [wins](#benchmark).

## Benchmark

**Before: 0.16s.**

```text
% time zsh -ic "exit"
real    0m 0.16s
user    0m 0.12s
sys     0m 0.04s
```

**After: 0.00s.**

```text
% time zsh -ic "exit"
real    0m 0.00s
user    0m 0.00s
sys     0m 0.00s
```

You the Champ!

*Performance on [other benchmarks](https://github.com/romkatv/zsh-bench#how-not-to-benchmark) may
vary.*

## License

[MIT](https://github.com/romkatv/zsh-bench/blob/master/LICENSE).

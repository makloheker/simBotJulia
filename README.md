# Bot Simsimi Julia

## require

- `julia`
- `HTTP`
- `JSON`
- `URIParser`

## install tools

```bash
sudo pacman -S julia
```

## install paket

jalankan shell julia

```bash
julia --project=.
```

didalam shell julia ketik

```julia
using Pkg
```

```julia
Pkg.add("HTTP")
```

```julia
Pkg.add("JSON")
```

```julia
Pkg.add("URIParser")
```

```julia
exit()
```

## jalankan

setelah keluar dari shell julia, jalankan perintah berikut di terminal

```bash
julia run.jl
```

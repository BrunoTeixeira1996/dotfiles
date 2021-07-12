# Sublime How To


## Themes

`Numix` for the UI
`Darkula` for the UI:Color Scheme

## Tools for latex in linux


```bash
sudo apt install texlive
sudo apt install latexmk
sudo apt update
sudo apt upgrade
```


* Install sublime package control

* Go to package control (`Ctrl + Shift + P`) then type `install package` then install `latextools`

*  Go to `Preferences > Package Settings > LatexTools > Settings-User` and change `"builder"` from `traditional` to `simple`

* Save everything, and restart sublime

* Open a `.tex` file and compile using `Ctrl + B`

## User Settings

```json
{
	"color_scheme": "Packages/Darkula Color Scheme/darkula.tmTheme",
	"font_size": 17,
	"font_face" : "inconsolata",
	"ignored_packages":
	[
		"Vintage",
	],
	"theme": "Numix Dark.sublime-theme",
	"sidebar_no_icon": false,
	"tabs_small": true,

}
```


## Themes

* Monokai
* Darkula
* Numix
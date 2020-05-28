# AAA
"Anime Anti Aliasing" aka AAA is an Avisynth Anti-aliasing filter designed for anime.
It was originally made by Soulhunter with the help of Didée, mf, Akirasuto, SpikeSpiegel & ScharfisBrain.
It has then been modified by FranceBB to add YV12, YUY2, YV16, YV24 support (v0.2)

Requirements

AviSynth 2.5.8 or later
Progressive input only
Supported color formats in version 0.1: YV12
Supported color formats in version 0.2: YV12, YUY2, YV16, YV24

Required Plugins
SangNom2
UnFilter

Syntax and Parameters
AAA (clip clp, int "Xres", int "Yres", int "Xshrp", int "Yshrp", int "US", int "DS", bool "chroma")

clip  clp =
Input clip.

int  Xres =
int  Yres =
Xres/Yres = The final resolution... InputSize = OutputSize is the default

int  Xshrp = 15
int  Yshrp = 15
Xshrp/Yshrp = UnFilter strength... Settings of 15,15 are the defaults

int  US = 0
US = Resizer for upsampling... 0 = PointResize (default) / 1 = Lanczos

int  DS = 0
DS = Resizer for downsampling... 0 = Bilinear (default) / 1 = Bicubic / 2 = Lanczos

bool  chroma = false
Chroma = Enable/disable chroma antialiasing... Disable = false (default) / enable = true

Example

AAA(Xres=704, Yres=396, Xshrp=20, Yshrp=20, Us=1, Ds=2, Chroma=true)

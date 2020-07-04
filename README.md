# AAA
"Anime Anti Aliasing" aka AAA is an Avisynth Anti-aliasing filter designed for anime.
<br>
It was originally made by Soulhunter with the help of Didée, mf, Akirasuto, SpikeSpiegel & ScharfisBrain.
<br>
It has then been modified by Francesco Bucciantini (FranceBB) to add YV12, YUY2, YV16, YV24 support (v0.2)
<br>
<br>
<br>
Requirements
<br>
<br>
AviSynth 2.5.8 or later
<br>
Progressive input only
<br>
Supported color formats: YV12, YUY2, YV16, YV24
<br>
<br>
<br>
Required Plugins
<br>
<br>
SangNom2
<br>
UnFilter
<br>
<br>
<br>
Syntax and Parameters
<br>
<br>
AAA (clip clp, int "Xres", int "Yres", int "Xshrp", int "Yshrp", int "US", int "DS", bool "chroma")
<br>
<br>
clip  clp = Input clip.
<br>
<br>
int  Xres =
<br>
int  Yres =
<br>
Xres/Yres = The final resolution... InputSize = OutputSize is the default
<br>
<br>
int  Xshrp = 15
<br>
int  Yshrp = 15
<br>
Xshrp/Yshrp = UnFilter strength... Settings of 15,15 are the defaults
<br>
<br>
int  US = 0
<br>
US = Resizer for upsampling... 0 = PointResize (default) / 1 = Lanczos
<br>
<br>
int  DS = 0
<br>
DS = Resizer for downsampling... 0 = Bilinear (default) / 1 = Bicubic / 2 = Lanczos
<br>
<br>
bool  chroma = false
<br>
Chroma = Enable/disable chroma antialiasing... Disable = false (default) / enable = true
<br>
<br>
<br>
Example
<br>
<br>
AAA(Xres=704, Yres=396, Xshrp=20, Yshrp=20, Us=1, Ds=2, Chroma=true)

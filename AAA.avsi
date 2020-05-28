# AAA - AnimeAntiAliasing
# 
# Thanks @ 	Soulhunter, Didée, mf, Akirasuto, SpikeSpiegel & ScharfisBrain...
# ChangeLog:
# Version 0.1
# Date: 2004
# Implementation
# Creator: Soulhunter, Didée, mf, Akirasuto, SpikeSpiegel & ScharfisBrain
# Version 0.2
# Date 2020
# Modified requirements from SangNom to SangNom2 (Francesco Bucciantini);
# Introduced support to YUY2, yv16, yv24 (Francesco Bucciantini);
#________________________________________________________________________________________
#
# Usage: AAA(Xres, Yres, Xshrp, Yshrp, Us, Ds, chroma)
#________________________________________________________________________________________
#
# Xres/Yres = The final resolution... InputSize = OutputSize is the default
#
# Xshrp/Yshrp = Unfilter strength... Settings of 15,15 are the defaults
#
# Us = Resizer for upsampling... 0 = PointResize (default) / 1 = Lanczos
#
# Ds = Resizer for downsampling... 0 = Bilinear (default) / 1 = Bicubic / 2 = Lanczos
#
# Chroma = Enable/disable chroma antialiasing... Disable = false (default) / enable = true
#________________________________________________________________________________________
#
# Example...
#
# AAA(Xres=720, Yres=576, Xshrp=20, Yshrp=20, Us=1, Ds=2, Chroma=true)
#________________________________________________________________________________________

function AAA(clip clp, int "Xres", int "Yres", int "Xshrp", int "Yshrp", 
\ int "US", int "DS", bool "chroma")
      {
        Assert( ( clp.isYV12() || clp.isYUY2() || clp.isYV16() || clp.isYV24() ) ? true : false, chr(10) + "Color Format not supported, only yv12, yv16, yv24 are supported" + chr(10))
        
        source = clp
        clp = clp.isYUY2() ? clp.Converttoyv16() : clp
        
        ox = clp.width
        oy = clp.height
        Xres  = default(Xres,  ox)
        Yres  = default(Yres,  oy)
        us  = default(us, 1)
        ds = default(ds, 2)
        Xshrp = default(Xshrp, 15)
        Yshrp = default(Yshrp, 15)
        chroma = default(chroma, false)
        
        us==0 ? clp.PointResize(ox*2,oy*2) : clp.LanczosResize(ox*2,oy*2)

        TurnLeft()
        SangNom2()

        TurnRight()
        SangNom2()

        ds==0 ? BilinearResize(Xres,Yres) : 
\ ds==1 ? BicubicResize(Xres,Yres) : 
\ LanczosResize(Xres,Yres)

        Unfilter(Xshrp,Yshrp)

        chroma ? MergeChroma(clp.Lanczosresize(Xres,Yres)) : last

        source.isYUY2() ? last.ConverttoYUY2() : last
        }

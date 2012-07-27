class Kolor
{
  float r;
  float g;
  float b;
  float y;
  float a;
  
  Kolor()
  {
    
  }
  
  /* Convert RGB to RYB
  _____________________________________________________________________ */
  
  void RYBtoRGB(float _red, float _yellow, float _blue, float _alpha)
  {
    float w, my, mg, n;
    
    r = _red;
    y = _yellow;
    b = _blue;
    
    // remove whiteness
    w = min(r, min(y, b));
    r -= w;
    y -= w;
    b -= w;
    
    my = max(r, max(y,b));
    
    // Get the green out of the yellow and blue
    g = min(y, b);
    y -= g;
    b -= g;
    
    if(b > 0 && g > 0)//if(b && g) 
    {
      b *= 2.0;
      g *= 2.0;
    }
    
    // Redistribute the remaining yellow.
    r += y;
    g += y;
    
    // Normalize to values.
    mg = max(r, max(g, b));
    if (mg > 0)//if (mg) 
    {
        n = my / mg;
        r *= n;
        g *= n;
        b *= n;
    }
    
    // Add the white back in.
    r += w;
    g += w;
    b += w;
  }
  
  void RYBtoRGB(float _red, float _yellow, float _blue)
  {
    RYBtoRGB(_red, _yellow, _blue, 255);
  }
  
  /* Convert RYB to RGB
  _____________________________________________________________________ */
  
  void RGBtoRYB(float _red, float _green, float _blue, float _alpha)
  { 
    float w, y, mg, my, n;
    
    r = _red;
    g = _green;
    b = _blue;
    a = _alpha;
    
    // remove whiteness
    w = min(r, min(g,b));
    r -= w;
    g -= w;
    b -= w;
    
    mg = max(r, max(g, b));
    
    // remove yellow
    y = min(r, g);
    r -= y;
    g -= y;
    
    // if both blue and green then cut in half to preserve range
    if (b > 0 && g > 0) {//if (b && g) {
        b /= 2.0;
        g /= 2.0;
    }
    
    // redistribute the green
    y += g;
    b += g;
    
    // normalize to values
    my = max(r, max(y, b));
    if (my > 0) {//if (my) {
        n = mg / my;
        r *= n;
        y *= n;
        b *= n;
    }
    
    // add back in white
    r += w;
    y += w;
    b += w;
  }
  
  void RGBtoRYB(float _red, float _green, float _blue)
  {
    RGBtoRYB(_red, _green, _blue, 255);
  }
  
}





//
//  UIColor+Mixing.m
//  UIColorMixExample
//
//  Created by Damien Del Russo on 5/2/12.
//  Copyright (c) 2012. All rights reserved.
//
/*


+ (UIColor*)cmykColorWithCyan:(CGFloat)cyan magenta:(CGFloat)magenta yellow:(CGFloat)yellow black:(CGFloat)black alpha:(CGFloat)alpha {
    float r, g, b, c, m, y, k;
    c = cyan;
    m = magenta;
    y = yellow;
    k = black;
    
    r = (1-k)-(1-k)*c;
    g = (1-k)-(1-k)*m;
    b = (1-k)-(1-k)*y;

    return [UIColor colorWithRed:r green:g blue:b alpha:alpha];
}

- (void)cmykGetCyan:(CGFloat *)cyan magenta:(CGFloat *)magenta yellow:(CGFloat *)yellow black:(CGFloat *)black alpha:(CGFloat *)alpha {
    //conversion from http://www.codeproject.com/KB/applications/xcmyk.aspx
    float r, g, b, c, m, y, k, a;
    // easier to normalize when converting cmyk
    [self getRed:&r green:&g blue:&b alpha:&a];

    k = MIN(1-r, MIN(1-g, 1-b));
    if (k < 1) {
        c = (1-r-k)/(1-k);
        m = (1-g-k)/(1-k);
        y = (1-b-k)/(1-k); 
    }
    else {
        c = 0;
        m = 0;
        y = 0;
    }
    if (cyan) *cyan = c;
    if (magenta) *magenta = m;
    if (yellow) *yellow = y;
    if (black) *black = k;
    if (alpha) *alpha = a;
}

+ (UIColor*)rgbMixForColors:(NSArray*)arrayOfColors {
    UIColor *resultColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:1];
    
    CGFloat c1, c2, c3, c1Total, c2Total, c3Total, notUsed; // 
    int count = [arrayOfColors count];
        
    if (count == 0) return resultColor;
    if (count == 1) return [[arrayOfColors lastObject] copy];
        
    c1Total = c2Total = c3Total = 0;

    for (UIColor* aColor in arrayOfColors) {
        [aColor getRed:&c1 green:&c2 blue:&c3 alpha:&notUsed];
        
        c1Total += c1;
        c2Total += c2;
        c3Total += c3;
    }    
    
    // optionally adjust brightness based on average of highest value (not total).
    //    br = mTotal/count;
        
    // consider these alternatives...
    //    c1 = c1Total*br/count;
    //    c2 = c2Total*br/count;
    //    c3 = c3Total*br/count;
    //    c1 = c1Total/count;
    //    c2 = c2Total/count;
    //    c3 = c3Total/count;
    c1 = c1Total/sqrt((sqrt(count))); // this looks good, but use count-1 for truer light mix (more whites)
    c2 = c2Total/sqrt((sqrt(count)));
    c3 = c3Total/sqrt((sqrt(count)));
    
    resultColor = [UIColor colorWithRed:c1 green:c2 blue:c3 alpha:1.0];        
    
    return resultColor;
}

+ (UIColor*)rybMixForColors:(NSArray*)arrayOfColors {
    
    CGFloat c1, c2, c3, c1Total, c2Total, c3Total, notUsed; // 
    int count = [arrayOfColors count];
    float br;
    
    if (count == 0) return [UIColor blackColor];
    if (count == 1) return [[arrayOfColors lastObject] copy];
    
    c1Total = c2Total = c3Total = 0;
    for (UIColor* aColor in arrayOfColors) {
        [aColor rybGetRed:&c1 yellow:&c2 blue:&c3 alpha:&notUsed];
                
        c1Total += c1;
        c2Total += c2;
        c3Total += c3;
    }    

    br = c1Total/count;
    c1 = c1Total/sqrt((sqrt(count-br))); // still a little biased towards additive, but pretty good.
    br = c2Total/count;
    c2 = c2Total/sqrt((sqrt(count-br)));
    br = c2Total/count;
    c3 = c3Total/sqrt((sqrt(count-br)));
    
    return [UIColor rybColorWithRed:c1 yellow:c2 blue:c3 alpha:1.0];
}

+ (UIColor*)cmykMixForColors:(NSArray*)arrayOfColors {
    CGFloat c1, c2, c3, c4, m1, m2, m3, m4, c1Total, c2Total, c3Total, c4Total, notUsed;
    int count = [arrayOfColors count];
    
    if (count == 0) return  [UIColor whiteColor];;
    if (count == 1) return  [[arrayOfColors lastObject] copy];
    
    m1 = m2 = m3 = m4 = 0;
    c1Total = c2Total = c3Total = c4Total = 0;
    for (UIColor* aColor in arrayOfColors) {
        [aColor cmykGetCyan:&c1 magenta:&c2 yellow:&c3 black:&c4 alpha:&notUsed];
        
        c1Total += c1;
        c2Total += c2;
        c3Total += c3;
        c4Total += c4;
        m1 = (c1 > m1 ? c1 : m1);
        m2 = (c2 > m2 ? c2 : m2);
        m3 = (c3 > m3 ? c3 : m3);
        m4 = (c4 > m4 ? c4 : m4);        
    }    
    
    c1 = c1Total/sqrt(count+1);
    c2 = c2Total/sqrt(count+1);
    c3 = c3Total/sqrt(count+1);
    
    // Black gets accumulated
    c4 = c4Total/sqrt(sqrt(count));
                
    return [UIColor cmykColorWithCyan:c1 magenta:c2 yellow:c3 black:c4 alpha:1.0];
}


@end*/

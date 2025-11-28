# Easing function

## Introduction
Easing functions are mathematical formulas that describe how time is remapped during animations, determining how motion accelerates, decelerates, or follows more complex timing patterns. Instead of moving at a constant pace, easing functions shape the flow of time to make animations feel smooth, natural, and visually appealing, enhancing the perception of weight, momentum, and rhythm in animations.

In Az shaders, we specifically use cubic bezier easing functions, a popular and flexible subset of easing functions. Our implementation follows the same standard as CSS, providing familiar and predictable timing behavior:

- https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/transition-timing-function
- https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Properties/animation-timing-function
- https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/easing-function#cubic-bezier-easing-function

A cubic bezier easing function is defined by four points: the fixed start $(0,0)$ and end $(1,1)$ points, and two adjustable control points $(x_1,y_1)$ and $(x_2, y_2)$. By manipulating these control points, a wide variety of timing curves can be created, including standard easing patterns like linear, ease, ease in, ease out, ease in out, or fully custom curves.

## Online editing
- https://easingwizard.com/
- https://cubic-bezier.com/
- https://epiceasing.com/
- https://easings.net/
- https://curveeditor.com/
- https://matthewlein.com/tools/ceaser
- https://tools.webdevpuneet.com/css-easing-generator/

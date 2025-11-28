# Easing function

## Definition
Easing functions are mathematical formulas that describe how time is remapped during animations, determining how motion accelerates, decelerates, or follows more complex timing patterns. Instead of moving at a constant pace, easing functions shape the flow of time to make animations feel smooth, natural, and visually appealing, enhancing the perception of weight, momentum, and rhythm in animations.

In Az shaders, we specifically use cubic Bezier easing functions, a popular and flexible subset of easing functions. Our implementation follows the same standard as CSS, providing familiar and predictable timing behavior: https://developer.mozilla.org/en-US/docs/Web/CSS/Reference/Values/easing-function#cubic-bezier-easing-function.

## How it works
Given a normalized time $t$ (ranging from 0 to 1), an easing function outputs a value $f(t)$ that represents the remapped time. A cubic Bezier easing function uses a cubic Bezier curve to do the math and is defined by four points: the fixed start $(0,0)$ and end $(1,1)$ points, and two adjustable control points $(x_1,y_1)$ and $(x_2, y_2)$. By manipulating the control points, a wide variety of timing curves can be created, including standard easing patterns like linear, ease, ease in, ease out, ease in out, or fully custom curves.

| Value | Easing function | Control points       |
| ----- | --------------- | -------------------- |
| 0     | Linear          | (0, 0, 1, 1)         |
| 1     | Ease            | (0.25, 0.1, 0.25, 1) |
| 2     | EaseIn          | (0.42, 0, 1, 1)      |
| 3     | EaseOut         | (0, 0, 0.58, 1)      |
| 4     | EaseInOut       | (0.42, 0, 0.58, 1)   |
| 5     | Custom          | -                    |

## Online editor
- https://easingwizard.com/
- https://cubic-bezier.com/
- https://epiceasing.com/
- https://easings.net/
- https://curveeditor.com/
- https://matthewlein.com/tools/ceaser
- https://tools.webdevpuneet.com/css-easing-generator/

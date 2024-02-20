# .outBounce()


### Description 
Calculates an ease-in curve interpolation which starts fast and progressively slow down,


This method expects values in a range between **0.0** and **1.0**  for the **counter** parameter and returns a nonlinear interpolation between **0.0** and **1.0**
 
in case a custom value was set for [totalLenght](./totalLength.md), the **counter** value should be tuned accordingly.
 
### Examples

```Processing
import easy.ease.*;
float intensity = 3;
EasyEase curve = new EasyEase(this, intensity);

void setup() {
  size(600, 600);
}

void draw() {
  background(#f1f1f1);
  fill(#ff0000);

  float x = curve.outBounce(frameCount/60.0)*width;
  
  rect(x, 0, 10, width);
}
```



<div class="exampleWindow">
  <div class="title">
      <div class="dot red"></div>
      <div class="dot amber"></div>
      <div class="dot green"></div>
      <p >Ease_out_bounce.pde</p>
  </div>

![.out()](../images/Ease_outBounce.gif)

</div>


### Syntax

```.out(counter) ```

```.out(counter,option)```

```.out(counter, start, stop)```

```.out(counter, start, stop, option)```

```.out(start, stop)```

```.out(start, stop, option)```


### Parameters

**counter** (float): an incremental value between 0 and [totalLength](./totalLength.md)

**start** (float): the lowest desired output value

**stop** (float): the highest desired output value

**option** (String): either **"loop"** , **"alternate"** or **"once"**


### Return

**float**
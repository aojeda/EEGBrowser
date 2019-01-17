# EEGBrowser
The EEGBrowser is meant to be a modern drop-in replacement for EEGLAB's `eegplot` function based on MoBILAB's visualization functions.

![EEGBrowser](https://github.com/aojeda/EEGBrowser/blob/master/resources/snapshot.png)

Download, uncompress, rename the folder as "EEGBrowser", and place it in your `eeglab/plugins` folder.

Note: Although EEG Browser is based on MoBILAB, the latter is not needed for it to work, although if you have it won't clash.

## Example

Plot channel data (default)
```matlab
pop_eegbrowser(EEG);
```
or
```matlab
pop_eegbrowser(EEG,1);
```
Plot IC activations:
```matlab
pop_eegbrowser(EEG,0);
```

To get the handle to the widget (useful for adding your own customizations):
```matlab
hBrowser = pop_eegbrowser(EEG,0);
```

Other features:
* Use the `<<` and `>>` keys to move to the next page centered around the selected event marker.
* Use `-` or `+` buttons to reduce or increase the scale respectively.
* Click on the figure and use `-` or `+` keys in your keypad to reduce or increase the scale respectively.

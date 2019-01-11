# EEGBrowser

Download, uncompress, rename the folder as "EEGBrowser", and place it in your `eeglab/plugins` folder.

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

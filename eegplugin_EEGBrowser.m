% eegplugin_EEGBrowser()
% 
% Adds the EEGBrowser plugin to the path.
%
% Author: Alejandro Ojeda, Neural Engineering and Translation Lab, 
% Department of Psychiatry, UC San Diego, 2019

function eegplugin_EEGBrowser(fig,try_strings, catch_strings)
p = fileparts(which('eegplugin_EEGBrowser'));
addpath(p);
hPlot = findobj(fig,'Label','Plot');
hBrowser = uimenu( hPlot, 'label', 'EEG Browser');

labels = get(hPlot.Children,'label');
n = length(labels);
ind  = find(ismember(labels,'Channel data (scroll)'));
idx = [2:ind-1 1 ind:n];
hPlot.Children = hPlot.Children(idx);


uimenu( hBrowser, 'label', 'Channel data', 'callback','pop_eegbrowser(EEG);');
uimenu( hBrowser, 'label', 'Component activations', 'callback','pop_eegbrowser(EEG,0);');


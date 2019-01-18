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
uimenu( hPlot, 'label', 'Channel data (EEG Browser)', 'callback','pop_eegbrowser(EEG);');
uimenu( hPlot, 'label', 'Component activations (EEG Browser)', 'callback','pop_eegbrowser(EEG,0);');
labels = get(hPlot.Children,'label');
n = length(hPlot.Children);
ind  = [find(ismember(labels,'Channel data (scroll)')) find(ismember(labels,'Component activations (scroll)'))];
idx = [3:n-ind(2)+2 1 ind(2):ind(1)-1 2 ind(1):n];
hPlot.Children = hPlot.Children(idx);
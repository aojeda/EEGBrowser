% eegplugin_EEGBrowser()
% 
% Adds the EEGBrowser plugin to the path.
%
% Author: Alejandro Ojeda, Neural Engineering and Translation Lab, 
% Department of Psychiatry, UC San Diego, 2019

function eegplugin_EEGBrowser(fig,try_strings, catch_strings)
p = fileparts(which('eegplugin_EEGBrowser'));
addpath(p);
h = findobj(fig,'Label','Plot');
uimenu( h, 'label', 'EEG Browser', 'callback','pop_eegbrowser(EEG);');
ind = [2:length(h.Children)-2 1 length(h.Children)-1 length(h.Children)];
h.Children = h.Children(ind);
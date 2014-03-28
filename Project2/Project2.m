function varargout = Project2(varargin)
% PROJECT2 M-file for Project2.fig
%      PROJECT2, by itself, creates a new PROJECT2 or raises the existing
%      singleton*.
%
%      H = PROJECT2 returns the handle to a new PROJECT2 or the handle to
%      the existing singleton*.
%
%      PROJECT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROJECT2.M with the given input arguments.
%
%      PROJECT2('Property','Value',...) creates a new PROJECT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Project2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Project2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Project2

% Last Modified by GUIDE v2.5 10-Dec-2012 17:28:04

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Project2_OpeningFcn, ...
                   'gui_OutputFcn',  @Project2_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before Project2 is made visible.
function Project2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Project2 (see VARARGIN)

% Choose default command line output for Project2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

clc
set(handles.axes1, 'NextPlot', 'replacechildren');
global xmin;
global xstep;
global xmax;
global x;
global xfcn;
xmin = 1;
xstep = 1;
xmax = 10;
x = xmin:xstep:xmax;
xfcn = x;
grid



% UIWAIT makes Project2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Project2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function editfcn_Callback(hObject, eventdata, handles)
% hObject    handle to editfcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editfcn as text
%        str2double(get(hObject,'String')) returns contents of editfcn as a double


% --- Executes during object creation, after setting all properties.
function editfcn_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editfcn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editmin_Callback(hObject, eventdata, handles)
% hObject    handle to editmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editmin as text
%        str2double(get(hObject,'String')) returns contents of editmin as a double


% --- Executes during object creation, after setting all properties.
function editmin_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editstep_Callback(hObject, eventdata, handles)
% hObject    handle to editstep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editstep as text
%        str2double(get(hObject,'String')) returns contents of editstep as a double


% --- Executes during object creation, after setting all properties.
function editstep_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editstep (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function editmax_Callback(hObject, eventdata, handles)
% hObject    handle to editmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editmax as text
%        str2double(get(hObject,'String')) returns contents of editmax as a double


% --- Executes during object creation, after setting all properties.
function editmax_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in pushbuttonreset.
function pushbuttonreset_Callback(hObject, eventdata, handles)
global xmin;
global xstep;
global xmax;
global x;
global xfcn;
xmin = 1;
xstep = 1;
xmax = 10;
x = xmin:xstep:xmax;
xfcn = x;
set(handles.axes1, 'NextPlot', 'replacechildren');
plot(x,xfcn)
set(handles.editmin,'String','1')
set(handles.editmax,'String','10')
set(handles.editstep,'String','1')
set(handles.editfcn,'String','x')
set(handles.axes1, 'NextPlot', 'replacechildren');
grid
% hObject    handle to pushbuttonreset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttongraph.
function pushbuttongraph_Callback(hObject, eventdata, handles)
global xmin;
global xstep;
global xmax;
global x;
global xfcn;
xmin = str2num(get(handles.editmin, 'String'));
xstep = str2num(get(handles.editstep, 'String'));
xmax = str2num(get(handles.editmax, 'String'));
x = xmin:xstep:xmax;
x = x + (x==0)*eps;
xfcn = eval(get(handles.editfcn, 'String'));
set(handles.axes1, 'NextPlot', 'replacechildren');
plot(x,xfcn)
title('X vs. Y')
xlabel('X - Axis')
ylabel(get(handles.editfcn,'String'))
set(handles.axes1, 'NextPlot', 'replacechildren');
grid
% hObject    handle to pushbuttongraph (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttongrid.
function pushbuttongrid_Callback(hObject, eventdata, handles)
grid
% hObject    handle to pushbuttongrid (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonmax.
function pushbuttonmax_Callback(hObject, eventdata, handles)
global x;
global xfcn;
xmax = find(xfcn == max(xfcn));
text(x(xmax), xfcn(xmax), ['Maximum (', num2str(x(xmax)), ',', num2str(xfcn(xmax)), ')'])
set(handles.axes1, 'NextPlot', 'replacechildren');
% hObject    handle to pushbuttonmax (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbuttonmin.
function pushbuttonmin_Callback(hObject, eventdata, handles)
global x;
global xfcn;
xmin = find(xfcn == min(xfcn));
text(x(xmin), xfcn(xmin), ['Minimum (', num2str(x(xmin)), ',', num2str(xfcn(xmin)), ')'])
set(handles.axes1, 'NextPlot', 'replacechildren');
% hObject    handle to pushbuttonmin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes on mouse press over axes background.
function axes1_ButtonDownFcn(hObject, eventdata, handles)
xy = get(handles.axes1, 'CurrentPoint');
cx = xy(1);
cy = xy(3);
set(handles.text7, 'String', cx);
set(handles.text8, 'String', cy);
set(handles.axes1, 'NextPlot', 'replacechildren');
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

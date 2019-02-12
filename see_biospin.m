function varargout = see_biospin(varargin)
% SEE_BIOSPIN MATLAB code for see_biospin.fig
%      SEE_BIOSPIN, by itself, creates a new SEE_BIOSPIN or raises the existing
%      singleton*. 
%
%      H = SEE_BIOSPIN returns the handle to a new SEE_BIOSPIN or the handle to
%      the existing singleton*.
%
%      SEE_BIOSPIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SEE_BIOSPIN.M with the given input arguments.
%
%      SEE_BIOSPIN('Property','Value',...) creates a new SEE_BIOSPIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before see_biospin_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to see_biospin_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help see_biospin

% Last Modified by GUIDE v2.5 29-Nov-2018 08:57:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @see_biospin_OpeningFcn, ...
    'gui_OutputFcn',  @see_biospin_OutputFcn, ...
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


% --- Executes just before see_biospin is made visible.
function see_biospin_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to see_biospin (see VARARGIN)
list_usb= getAvailableComPort();

for index=1:size(list_usb)
    
    % append list
    list_before = get(handles.usb_path,'String');
    list_after = [list_before; list_usb(index)];
    set(handles.usb_path,'String',list_after);
end
% set(handles.kelamin_text,'String',['Laki-Laki';'Perempuan']);
% Choose default command line output for see_biospin
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes see_biospin wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = see_biospin_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in jenis_kelaminBox.
function jenis_kelaminBox_Callback(hObject, eventdata, handles)
% hObject    handle to jenis_kelaminBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns jenis_kelaminBox contents as cell array
%        contents{get(hObject,'Value')} returns selected item from jenis_kelaminBox


% --- Executes during object creation, after setting all properties.
function jenis_kelaminBox_CreateFcn(hObject, eventdata, handles)
% hObject    handle to jenis_kelaminBox (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in saveDataset.
function saveDataset_Callback(hObject, eventdata, handles)
% hObject    handle to saveDataset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on selection change in kelamin_text.
function kelamin_text_Callback(hObject, eventdata, handles)
% hObject    handle to kelamin_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns kelamin_text contents as cell array
%        contents{get(hObject,'Value')} returns selected item from kelamin_text


% --- Executes during object creation, after setting all properties.
function kelamin_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to kelamin_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in usb_path.
function usb_path_Callback(hObject, eventdata, handles)
% hObject    handle to usb_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns usb_path contents as cell array
%        contents{get(hObject,'Value')} returns selected item from usb_path


% --- Executes during object creation, after setting all properties.
function usb_path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to usb_path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in connect_button.
function connect_button_Callback(hObject, eventdata, handles)
% hObject    handle to connect_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
allItems = get(handles.usb_path,'string');
selectedIndex = get(handles.usb_path,'Value');
selectedItem = allItems{selectedIndex};
disp(selectedItem )
s = serial(selectedItem,'baudrate', 9600);
global indikator;
indikator=0;
delay = .0150;
%% 
%Membuat nilai analog dari Sinyal EMG menjadi global variable
% (untukdijadikan dataset)
global analogValue;
 
try
    fopen(s);
    set(handles.text8,'string','Connected');
    
catch err
    fclose(instrfind);
    error('Make sure you select the correct COM Port where the Arduino is connected.');
end
line1=line(nan,nan,'color','blue');
  

 hold(handles.tertinggi,'off');
hold(handles.realtime,'on'); %yang di plot di akhir posisi nya
dist=zeros(1, 1000000);
t0 = clock;
i=1;
detik=20;
waktu=zeros(1, 1000000);
while etime(clock, t0) < detik
  
    if indikator==1
        fclose(s);
        break
    end
    dist(i) = str2double(fscanf(s));
% x = waktu
% y= nilai amplitude
    x1=get(line1,'xData');
    y1=get(line1,'yData');
    waktu(i)=etime(clock, t0);
    x1=[x1 waktu(i)];
    y1=[y1 dist(i)];
    set(line1,'xData',x1,'yData',y1);
    ylim([0 1300]);
    
  pause(delay);
i=i+1;
end
 fclose(s);
hold(handles.realtime,'off'); 
 %yang di plot di akhir posisi nya
hold(handles.tertinggi,'on');
axes(handles.tertinggi);

  [~,index]=max(dist);
  min_var=index-5;
  if min_var<0
      min_var=0;
  end
  max_var=index+20;
    
line2=line(nan,nan,'color','red');
x2=get(line2,'xData');
y2=get(line2,'yData');
x2=[x2 waktu(min_var:max_var)];
y2=[y2 dist(min_var:max_var)];
 
set(line2,'xData',x2,'yData',y2);
ylim([0 1300]);
set(handles.text8,'string','Disconnected');
  
rata_rata=mean(dist)*10000;
set(handles.rata2,'string',rata_rata);
if rata_rata>=500
    set(handles.status_otot,'string','Sangat Baik');
elseif rata_rata==500
    set(handles.status_otot,'string','Baik');
elseif rata_rata<500
    set(handles.status_otot,'string','Kurang Sehat');
end

nama=get(handles.edit1,'string');
umur=get(handles.edit2,'string');
jenis=get(handles.kelamin_text,'string');
dominan=get(handles.dominantTag,'string');

namaewa=['dataset',datestr(now, 'dd_mmm_yyyy_HH_MM_SS'),'SEE-FEST.mat'];
save(namaewa,'nama','umur','jenis','dominan','dist','waktu');


% --- Executes on selection change in dominantTag.
function dominantTag_Callback(hObject, eventdata, handles)
% hObject    handle to dominantTag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns dominantTag contents as cell array
%        contents{get(hObject,'Value')} returns selected item from dominantTag


% --- Executes during object creation, after setting all properties.
function dominantTag_CreateFcn(hObject, eventdata, handles)
% hObject    handle to dominantTag (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global indikator;
indikator=1;

set(handles.text8,'string','Disconnected');


% --- Executes on button press in ulangi_tombol.
function ulangi_tombol_Callback(hObject, eventdata, handles)
% hObject    handle to ulangi_tombol (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

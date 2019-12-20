function varargout = Music_make(varargin)
% MUSIC_MAKE MATLAB code for Music_make.fig
%      MUSIC_MAKE, by itself, creates a new MUSIC_MAKE or raises the existing
%      singleton*.
%
%      H = MUSIC_MAKE returns the handle to a new MUSIC_MAKE or the handle to
%      the existing singleton*.
%
%      MUSIC_MAKE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MUSIC_MAKE.M with the given input arguments.
%
%      MUSIC_MAKE('Property','Value',...) creates a new MUSIC_MAKE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Music_make_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Music_make_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Music_make

% Last Modified by GUIDE v2.5 16-Dec-2019 20:09:17

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Music_make_OpeningFcn, ...
                   'gui_OutputFcn',  @Music_make_OutputFcn, ...
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


% --- Executes just before Music_make is made visible.
function Music_make_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Music_make (see VARARGIN)
ha=axes('units','normalized','position',[0 0 1 1]);
 
uistack(ha,'down')
 
II=imread('./resource/signal_logo.jpg');
 
image(II)
 
colormap gray
 
set(ha,'handlevisibility','off','visible','off');


% Choose default command line output for Music_make
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Music_make wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Music_make_OutputFcn(hObject, eventdata, handles) 
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


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%tones = [1,2,3,1,1,2,3,1,3,4,5,3,4,5];
%len = [1,1,1,1,1,1,1,1,1,1,2,1,1,2];
tones = str2num(get(handles.edit1,'string'));
len = str2num(get(handles.edit2,'string'));
playmusic(tones, len);
guidata(hObject, handles);



% --- Executes on key press with focus on pushbutton1 and none of its controls.
function pushbutton1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over pushbutton1.
function pushbutton1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes during object creation, after setting all properties.
function pushbutton1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes during object deletion, before destroying properties.
function pushbutton1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%clear sound
[FileName,PathName]=uigetfile('*','select the file');
file = fullfile(PathName,FileName);
%data = load(file);
%handles.data = data;
[audio,fs ]= audioread(file);
sound(audio,fs);

NFFT = 2^nextpow2(fs);
audio_fft = fft(audio,NFFT);
audio_fft = audio_fft(1:ceil(length(audio_fft) / 2));

axes('parent',handles.uipanel4)
%axes(handles.axes9)

subplot(2,1,1);
plot(audio);
title('时域信号');
subplot(2,1,2);
plot(abs(audio_fft));
title('频域信号');
handles.data_audio = audio; 
handles.data_audio_fft = audio_fft; 
handles.data_fs = fs; 
guidata(hObject,handles);




% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% dedigin fliter
%Fs= 8000; %Sampling Frequency
% Data vector
% d=fdesign.lowpass(); %lowpass filter specification object
% d.Fpass=1500/8000;
% d.Fstop=2000/8000;
% d.Astop=40;
% d
% designmethods(d)
fs = handles.data_fs;
d = fdesign.lowpass('Fp,Fst,Ap,Ast',1/fs,500/fs,1,60);
% Invoke Butterworth design method
fliter_low =design(d,'equiripple');
% fvtool(fliter_low)
data_t = handles.data_audio;

result_t = filter(fliter_low,data_t);
NFFT = 2^nextpow2(fs);
result_f=fft(result_t,NFFT);
result_f = result_f(1:ceil(length(result_f) / 2));

audio=handles.data_audio ;
axes('parent',handles.uipanel8)
%axes(handles.axes10)

subplot(3,1,1);
plot(audio);
title('原始时域信号');
subplot(3,1,2);
plot(result_t);
title('滤波后时域信号');
subplot(3,1,3);
plot(abs(result_f));
title('频域信号');
result_t(:,1) = result_t(:,1).*50;
sound(result_t,fs)






% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
fs = handles.data_fs;
d = fdesign.highpass('Fst,Fp,Ast,Ap',3000/fs,5000/fs,60,1);
fliter_high = design(d,'equiripple');
data_t = handles.data_audio;
fs = handles.data_fs;
result_t = filter(fliter_high,data_t);
NFFT = 2^nextpow2(fs);
result_f=fft(result_t,NFFT);
result_f = result_f(1:ceil(length(result_f) / 2));
audio=handles.data_audio ;
%axes(handles.axes11)
axes('parent',handles.uipanel5)
subplot(3,1,1);
plot(audio);
title('原始时域信号');
subplot(3,1,2);
plot(result_t);
title('时域信号');
subplot(3,1,3);
plot(abs(result_f));
title('频域信号');
sound(result_t,fs)

% return an array of volume strength
function volume_array = generate_volume_for3(len_divide_speed,sample_rate)
    unit = sample_rate * len_divide_speed;
    x1 = linspace(0,len_divide_speed/6,unit/18);
    x2 = linspace(0,len_divide_speed/6,unit/36);
    x3 = linspace(1,1,unit/9);
    x4 = linspace(0,len_divide_speed/3,unit-length([x1,x2,x3]));
    volume_array = [6/len_divide_speed*x1, 1-1.2/len_divide_speed*x2,...
        0.8*x3, 0.8*exp(-(100-90*len_divide_speed)*x4)];
    % plot(volume_array);



function playmusic(tones, len)
    load guitar.mat    
    speed = 2;
    sample_rate = 8000;
    len = len / speed;
    % Volume
    volume_array =[];
    for i=1:length(len)
       volume_array = [volume_array, generate_volume_for3(len(i),sample_rate)];
    end
    %      F(1), G(2), A(3),  B-(4),  C(5),   D(6),   E(7)
    f = [349.23, 392,  440,  466.16, 523.25, 587.33, 659.25];
    tone = f(tones);
    % Generate Harmonic Sin Signal
    y = [];
    for i = 1:length(tone)
        t = linspace(0,len(i),len(i)*sample_rate);
        
        [val, index] = min( abs(tone(i) - base) );
        
        y = [y, [1, two_standard(index), three_standard(index), four_standard(index)] * ...
            [sin(2*pi*tone(i)*t); sin(2*pi*2*tone(i)*t);...
            sin(2*pi*3*tone(i)*t); sin(2*pi*4*tone(i)*t)]];
    end
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    % y suppressed by volume
    y = y .* volume_array;   
    % Make sound
    sound(y, sample_rate);

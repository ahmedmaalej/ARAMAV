function varargout = Eblouissement(varargin)
% EBLOUISSEMENT M-file for Eblouissement.fig
%      EBLOUISSEMENT, by itself, creates a new EBLOUISSEMENT or raises the existing
%      singleton*.
%
%      H = EBLOUISSEMENT returns the handle to a new EBLOUISSEMENT or the handle to
%      the existing singleton*.
%
%      EBLOUISSEMENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EBLOUISSEMENT.M with the given input arguments.
%
%      EBLOUISSEMENT('Property','Value',...) creates a new EBLOUISSEMENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Eblouissement_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Eblouissement_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Eblouissement

% Last Modified by GUIDE v2.5 04-Feb-2014 15:06:02

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Eblouissement_OpeningFcn, ...
                   'gui_OutputFcn',  @Eblouissement_OutputFcn, ...
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


% --- Executes just before Eblouissement is made visible.
function Eblouissement_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Eblouissement (see VARARGIN)

% Choose default command line output for Eblouissement
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Eblouissement wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Eblouissement_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in font_listbox1.
function font_listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to font_listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns font_listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from font_listbox1
handles = guidata(gcbo);
handles.index_selected_font=get(hObject,'Value');
handles.list_font=get(hObject,'String');
set(handles.font_edit2,'String',handles.list_font(handles.index_selected_font));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function font_listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to font_listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Taille_listbox2.
function Taille_listbox2_Callback(hObject, eventdata, handles)
% hObject    handle to Taille_listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Taille_listbox2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Taille_listbox2
%handles = guidata(gcbo);
%set(handles.taille_edit3,'String',num2str(get(hObject,'Value')));
handles = guidata(gcbo);
handles.index_selected_taille=get(hObject,'Value');
handles.list_taille=get(hObject,'String');
set(handles.taille_edit3,'String',handles.list_taille(handles.index_selected_taille));
guidata(hObject,handles);

% --- Executes on selection change in style_listbox5.
function style_listbox5_Callback(hObject, eventdata, handles)
% hObject    handle to style_listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns style_listbox5 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from style_listbox5
handles = guidata(gcbo);
handles.index_selected_style=get(hObject,'Value');
handles.list_style=get(hObject,'String');
set(handles.style_edit5,'String',handles.list_style(handles.index_selected_style));
guidata(hObject,handles);




% --- Executes during object creation, after setting all properties.
function Taille_listbox2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Taille_listbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Nb_Lettres_listbox4.
function Nb_Lettres_listbox4_Callback(hObject, eventdata, handles)
% hObject    handle to Nb_Lettres_listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns Nb_Lettres_listbox4 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Nb_Lettres_listbox4
handles = guidata(gcbo);
handles.index_selected_nb_lettre=get(hObject,'Value');
handles.list_nb_lettre=get(hObject,'String');
set(handles.nb_lettre_edit4,'String',handles.list_nb_lettre(handles.index_selected_nb_lettre));
guidata(hObject,handles);

% --- Executes during object creation, after setting all properties.
function Nb_Lettres_listbox4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Nb_Lettres_listbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Lettres_Majuscules_radiobutton1.
function Lettres_Majuscules_radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to Lettres_Majuscules_radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Lettres_Majuscules_radiobutton1


% --- Executes on button press in Lettres_Miniscules_radiobutton2.
function Lettres_Miniscules_radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to Lettres_Miniscules_radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Lettres_Miniscules_radiobutton2


% --- Executes on button press in Nombres_radiobutton3.
function Nombres_radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to Nombres_radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Nombres_radiobutton3


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)%% button lancer
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.Lettres_Majuscules='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
handles.Lettre_Miniscules ='abcdefghijklmnopqrstuvwxyz';
handles.Chiffre='0123456789';
handles.Melange = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
% ScreenNumbers=Screen('Screens',[]);
% ScreenNumber=ScreenNumbers(2);% Affichage sur l'écran 1 celui de droite
%resolutions = Screen('Resolutions', ScreenNumber);
%[Screen_width_resolution, Screen_height_resolution]=Screen('DisplaySize', ScreenNumber);


handles.Screen_width_resolution=1280;
Screen_height_resolution=1024;
% Screen_width_resolution = str2num(get(handles.Screen_width_resolution,'String'));
% Screen_height_resolution = str2num(get(handles.Screen_height_resolution,'String'));

% b_selec=get(handles.choix_uipanel3,'SelectedObject');
% str=get(b_selec,'String');
switch  get(get(handles.choix_uipanel3,'SelectedObject'),'Tag')
        case 'Lettres_Majuscules_radiobutton1'
        % Code for when radiobutton1 is selected.
        handles.choix=handles.Lettres_Majuscules;
    case 'Lettres_Miniscules_radiobutton2'
        % Code for when radiobutton2 is selected.
        handles.choix=handles.Lettre_Miniscules;
    case 'Nombres_radiobutton3'
        % Code for when togglebutton1 is selected.
        handles.choix=handles.Chiffre;
    case 'lettre_Nombre_radiobutton4'
        % Code for when togglebutton2 is selected.
    % Continue with more cases as necessary.
    handles.choix=handles.Melange;
    otherwise
        % Code for when there is no match.
end


handles.wPtr = Screen( 'OpenWindow',1 );
[handles.Screen_center_x,handles.Screen_center_y] = WindowCenter(handles.wPtr);
white = WhiteIndex(handles.wPtr);
black = BlackIndex(handles.wPtr);
handles.gray = (white+black)/2;
set(handles.gray_edit,'String',num2str(handles.gray))
set(handles.gray_slider1,'Value',handles.gray);
Screen('FillRect', handles.wPtr, handles.gray);
Screen('Flip', handles.wPtr);%% rafrechissement
% KbStrokeWait; %% attendre touche clavier
%show(wPtr,'X',50);% faire apparaitre le text 'x' au centre de l'ecran avec taille 50
Screen('DrawDots',handles.wPtr, [1 1] ,20, [0 0 0], [handles.Screen_center_x,handles.Screen_center_y], 1);
Screen('Flip',handles.wPtr);%% rafrechissement
guidata(hObject,handles);




% --- Executes on button press in lettre_Nombre_radiobutton4.
function lettre_Nombre_radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to lettre_Nombre_radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of lettre_Nombre_radiobutton4


% --- Executes on button press in afficher.
function afficher_Callback(hObject, eventdata, handles)
% hObject    handle to afficher (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(gcbo);
list_taille=get(handles.Taille_listbox2,'String');
indice_taille=get(handles.Taille_listbox2,'Value');
handles.text_size=str2double(list_taille(indice_taille));

list_font=get(handles.font_listbox1,'String');
indice_font=get(handles.font_listbox1,'Value');
handles.font=char(list_font(indice_font));%convert to string

list_NB_lettre=get(handles.Nb_Lettres_listbox4,'String');
indice_NB_lettre=get(handles.Nb_Lettres_listbox4,'Value');
handles.NB_lettre=str2double(list_NB_lettre(indice_NB_lettre));
%handles.font=get(handles.font_listbox1,'String');
%handles.NB_lettre=str2double(get(handles.Nb_Lettres_listbox4,'String'));
list_Style=[0 1 2 4 8 32 64];
indice_style=get(handles.style_listbox5,'Value');
handles.style=list_Style(indice_style);
%handles.style=get(handles.style_listbox5,'Value');

%find number of random characters to choose from
numRands = length(handles.choix); 
index=round(numRands*rand(1,handles.NB_lettre));
% x=round((image_width-2*letter_fontsize)*rand(1));
% y=round((image_height-2*letter_fontsize)*rand(1));
handles.myText=handles.choix(index);
Screen('TextFont',handles.wPtr, handles.font);
Screen('TextSize',handles.wPtr, handles.text_size);
Screen('TextStyle', handles.wPtr,handles.style);
%[nx, ny, bbox] =DrawFormattedText(wPtr, myText, 'center', 'center');
% Screen('DrawText', wPtr,myText , Screen_center_x-(text_size/2), Screen_center_y-(text_size/2), [0, 0, 0]);
DrawFormattedText(handles.wPtr, handles.myText, 'center', 'center', 0);
Screen('Flip', handles.wPtr);%% rafrechissement
guidata(hObject, handles);


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Screen('CloseAll');
close();
sca;
clc;


% --- Executes when selected object is changed in choix_uipanel3.
function choix_uipanel3_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in choix_uipanel3 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
handles = guidata(gcbo);
%handles.choix=Melange;
switch get(eventdata.NewValue,'Tag') % Get Tag of selected object.
    case 'Lettres_Majuscules_radiobutton1'
        % Code for when radiobutton1 is selected.
        handles.choix=handles.Lettres_Majuscules;
    case 'Lettres_Miniscules_radiobutton2'
        % Code for when radiobutton2 is selected.
        handles.choix=handles.Lettre_Miniscules;
    case 'Nombres_radiobutton3'
        % Code for when togglebutton1 is selected.
        handles.choix=handles.Chiffre;
    case 'lettre_Nombre_radiobutton4'
        % Code for when togglebutton2 is selected.
    % Continue with more cases as necessary.
    handles.choix=handles.Melange;
    otherwise
        % Code for when there is no match.
end
guidata(hObject, handles);


% --- Executes on slider movement.
function gray_slider1_Callback(hObject, eventdata, handles)
% hObject    handle to gray_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

handles = guidata(gcbo);
handles.gray=get(hObject,'Value');
set(handles.gray_edit,'String',handles.gray);
Screen('FillRect', handles.wPtr, handles.gray);
%show(wPtr,'X',50);% faire apparaitre le text 'x' au centre de l'ecran avec taille 50
%Screen('DrawDots', handles.wPtr, [1 1] ,20, [0 0 0], [handles.Screen_center_x,handles.Screen_center_y], 1);
%Screen('FrameRect', wPtr, [0 0 0],FOV,LineWidth);%6 LineWidth
if (handles.myText)
DrawFormattedText(handles.wPtr, handles.myText, 'center', 'center', 0);
end;
Screen('Flip',handles.wPtr);%% rafrechissement
guidata(hObject,handles);


% --- Executes during object creation, after setting all properties.
function gray_slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gray_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function gray_edit_Callback(hObject, eventdata, handles)
% hObject    handle to gray_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gray_edit as text
%        str2double(get(hObject,'String')) returns contents of gray_edit as a double


% --- Executes during object creation, after setting all properties.
function gray_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gray_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in text_color_pushbutton.
function text_color_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to text_color_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes on button press in backgound_color_pushbutton.
function backgound_color_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to backgound_color_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function font_edit2_Callback(hObject, eventdata, handles)
% hObject    handle to font_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of font_edit2 as text
%        str2double(get(hObject,'String')) returns contents of font_edit2 as a double


% --- Executes during object creation, after setting all properties.
function font_edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to font_edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function taille_edit3_Callback(hObject, eventdata, handles)
% hObject    handle to taille_edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of taille_edit3 as text
%        str2double(get(hObject,'String')) returns contents of taille_edit3 as a double


% --- Executes during object creation, after setting all properties.
function taille_edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to taille_edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nb_lettre_edit4_Callback(hObject, eventdata, handles)
% hObject    handle to nb_lettre_edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nb_lettre_edit4 as text
%        str2double(get(hObject,'String')) returns contents of nb_lettre_edit4 as a double


% --- Executes during object creation, after setting all properties.
function nb_lettre_edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nb_lettre_edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end




% --- Executes during object creation, after setting all properties.
function style_listbox5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style_listbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function style_edit5_Callback(hObject, eventdata, handles)
% hObject    handle to style_edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of style_edit5 as text
%        str2double(get(hObject,'String')) returns contents of style_edit5 as a double


% --- Executes during object creation, after setting all properties.
function style_edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to style_edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

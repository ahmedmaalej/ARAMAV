%--- Param�tres-------------------------------

Lettres_Majuscules='ABCDEFGHIJKLMNOPQRSTUVWXYZ';
Lettre_Miniscules ='abcdefghijklmnopqrstuvwxyz';
Chiffre='0123456789';
Melange = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789';
NB_lettre=4;
%find number of random characters to choose from
numRands = length(Melange); 
index=round(numRands*rand(1,NB_lettre));
% x=round((image_width-2*letter_fontsize)*rand(1));
% y=round((image_height-2*letter_fontsize)*rand(1));
myText=Melange(index);
%----------------------------------------
%ScreenNumbers=Screen('Screens',[]);
% ScreenNumber=ScreenNumbers(2);% Affichage sur l'�cran 1 celui de droite
wPtr = Screen( 'OpenWindow',1 );
[Screen_center_x,Screen_center_y] = WindowCenter(wPtr);
white = WhiteIndex(wPtr);
black = BlackIndex(wPtr);
gray = (white+black)/2;
Screen('FillRect', wPtr, gray);
% Screen('Flip', wPtr);%% rafrechissement
% KbStrokeWait; %% attendre touche clavier
%show(wPtr,'X',50);% faire apparaitre le text 'x' au centre de l'ecran avec taille 50
Screen('DrawDots', wPtr, [1 1] ,20, [0 0 0], [Screen_center_x,Screen_center_y], 1);
% Screen('Flip', wPtr);%% rafrechissement
text_size=50;
Screen('TextFont',wPtr, 'Courier New');
Screen('TextSize',wPtr, text_size);
Screen('TextStyle', wPtr, 0);
%[nx, ny, bbox] =DrawFormattedText(wPtr, myText, 'center', 'center');
% Screen('DrawText', wPtr,myText , Screen_center_x-(text_size/2), Screen_center_y-(text_size/2), [0, 0, 0]);
DrawFormattedText(wPtr, myText, 'center', 'center', 0);
Screen('Flip', wPtr);%% rafrechissement
KbStrokeWait;
Screen('CloseAll');
allFonts = FontInfo('Fonts');

%----------
% fid =fopen('nombre.txt','w')
% for i=1:100
%     fprintf(fid,'%d\n',i);
% end
% fclose(fid);
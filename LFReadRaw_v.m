
function Img = LFReadRaw_v(Fname)

w=2856;
h=2848;
f = fopen( Fname );
Img = fread( f, w*h,'uchar' );
fclose( f );

Img=reshape(Img/255,[w,h])'
Img=LFConvertToInt(Img) % float to uint16
%Img=demosaic(Img,'bggr')

end

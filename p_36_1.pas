{ p_36_1.pas }

var r, s1, s2, s3: set of 1..250;

begin
   s1 := [2, 11, 4, 13];            { 1-� ��㦮� }
   s2 := [9, 17, 12, 11, 3, 5, 18]; { 2-� ��㦮� }
   s3 := [14, 2, 13, 15, 20];       { 3-q ��㦮� }
   r := [1..250] - (s1 + s2 + s3);  { r-������⢮ 㪫��������}
end.
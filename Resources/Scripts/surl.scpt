FasdUAS 1.101.10   ��   ��    k             l     ��  ��    = 7 Unless otherwise noted the content of this AppleScript     � 	 	 n   U n l e s s   o t h e r w i s e   n o t e d   t h e   c o n t e n t   o f   t h i s   A p p l e S c r i p t   
  
 l     ��  ��    7 1 file is Copyright � 2010, 2011 Codeux Software.      �   b   f i l e   i s   C o p y r i g h t   �   2 0 1 0 ,   2 0 1 1   C o d e u x   S o f t w a r e .        l     ��������  ��  ��        i         I      �� ���� 0 
textualcmd     ��  o      ���� 	0 input  ��  ��    k     -       Z       ����  =        o     ���� 	0 input    m       �      L         m     ! ! � " " J / d e b u g   P l e a s e   e n t e r   a   U R L   t o   s h o r t e n .��  ��     # $ # l   ��������  ��  ��   $  % & % r     ' ( ' I   �� )��
�� .sysoexecTEXT���     TEXT ) l    *���� * b     + , + b     - . - m     / / � 0 0 p c u r l   - - c o n n e c t - t i m e o u t   1 0   " h t t p : / / i s . g d / a p i . p h p ? l o n g u r l = . I    �� 1���� 0 	urlencode   1  2�� 2 o    ���� 	0 input  ��  ��   , m     3 3 � 4 4  "��  ��  ��   ( o      ���� 0 shorturl   &  5 6 5 l   ��������  ��  ��   6  7�� 7 Z    - 8 9�� : 8 C   ! ; < ; o    ���� 0 shorturl   < m      = = � > >  E r r o r :   9 L   $ ( ? ? b   $ ' @ A @ m   $ % B B � C C  / d e b u g   A o   % &���� 0 shorturl  ��   : L   + - D D o   + ,���� 0 shorturl  ��     E F E l     ��������  ��  ��   F  G H G l     �� I J��   I - ' urlencode() AppleScript function from:    J � K K N   u r l e n c o d e ( )   A p p l e S c r i p t   f u n c t i o n   f r o m : H  L M L l     �� N O��   N = 7 <http://harvey.nu/applescript_url_encode_routine.html>    O � P P n   < h t t p : / / h a r v e y . n u / a p p l e s c r i p t _ u r l _ e n c o d e _ r o u t i n e . h t m l > M  Q�� Q i     R S R I      �� T���� 0 	urlencode   T  U�� U o      ���� 0 thetext theText��  ��   S k     V V  W X W r      Y Z Y m      [ [ � \ \   Z o      ���� 0 
thetextenc 
theTextEnc X  ] ^ ] X     _�� ` _ k    � a a  b c b r     d e d o    ���� 0 eachchar eachChar e o      ���� 0 usechar useChar c  f g f r    ! h i h I   �� j��
�� .sysoctonshor       TEXT j o    ���� 0 eachchar eachChar��   i o      ���� 0 eachcharnum eachCharNum g  k l k Z   " � m n o�� m =   " % p q p o   " #���� 0 eachcharnum eachCharNum q m   # $����   n r   ( + r s r m   ( ) t t � u u  + s o      ���� 0 usechar useChar o  v w v F   .  x y x F   . k z { z F   . Y | } | F   . I ~  ~ F   . 9 � � � l  . 1 ����� � >   . 1 � � � o   . /���� 0 eachcharnum eachCharNum � m   / 0���� *��  ��   � l  4 7 ����� � >   4 7 � � � o   4 5���� 0 eachcharnum eachCharNum � m   5 6���� _��  ��    l  < G ����� � G   < G � � � A   < ? � � � o   < =���� 0 eachcharnum eachCharNum � m   = >���� - � ?   B E � � � o   B C���� 0 eachcharnum eachCharNum � m   C D���� .��  ��   } l  L W ����� � G   L W � � � A   L O � � � o   L M���� 0 eachcharnum eachCharNum � m   M N���� 0 � ?   R U � � � o   R S���� 0 eachcharnum eachCharNum � m   S T���� 9��  ��   { l  \ i ����� � G   \ i � � � A   \ _ � � � o   \ ]���� 0 eachcharnum eachCharNum � m   ] ^���� A � ?   b g � � � o   b c���� 0 eachcharnum eachCharNum � m   c f���� Z��  ��   y l  n } ����� � G   n } � � � A   n s � � � o   n o���� 0 eachcharnum eachCharNum � m   o r���� a � ?   v { � � � o   v w���� 0 eachcharnum eachCharNum � m   w z���� z��  ��   w  ��� � k   � � � �  � � � r   � � � � � I  � ��� � �
�� .sysorondlong        doub � l  � � ����� � ^   � � � � � o   � ����� 0 eachcharnum eachCharNum � m   � ����� ��  ��   � �� ���
�� 
dire � m   � ���
�� olierndD��   � o      ���� 0 firstdig firstDig �  � � � r   � � � � � `   � � � � � o   � ����� 0 eachcharnum eachCharNum � m   � �����  � o      ���� 0 	seconddig 	secondDig �  � � � Z   � � � ����� � ?   � � � � � o   � ����� 0 firstdig firstDig � m   � ����� 	 � k   � � � �  � � � r   � � � � � [   � � � � � o   � ����� 0 firstdig firstDig � m   � ����� 7 � o      ���� 0 anum aNum �  ��� � r   � � � � � I  � ��� ���
�� .sysontocTEXT       shor � o   � ����� 0 anum aNum��   � o      ���� 0 firstdig firstDig��  ��  ��   �  � � � Z   � � � ����� � ?   � � � � � o   � ����� 0 	seconddig 	secondDig � m   � ����� 	 � k   � � � �  � � � r   � � � � � [   � � � � � o   � ����� 0 	seconddig 	secondDig � m   � ����� 7 � o      ���� 0 anum aNum �  ��� � r   � � � � � I  � ��� ���
�� .sysontocTEXT       shor � o   � ����� 0 anum aNum��   � o      ���� 0 	seconddig 	secondDig��  ��  ��   �  � � � r   � � � � � c   � � � � � l  � � ����� � b   � � � � � b   � � � � � m   � � � � � � �  % � l  � � ����� � c   � � � � � o   � ��� 0 firstdig firstDig � m   � ��~
�~ 
TEXT��  ��   � l  � � ��}�| � c   � � � � � o   � ��{�{ 0 	seconddig 	secondDig � m   � ��z
�z 
TEXT�}  �|  ��  ��   � m   � ��y
�y 
TEXT � o      �x�x 0 numhex numHex �  ��w � r   � � � � � o   � ��v�v 0 numhex numHex � o      �u�u 0 usechar useChar�w  ��  ��   l  ��t � r   � � � � � c   � � � � � b   � � � � � o   � ��s�s 0 
thetextenc 
theTextEnc � o   � ��r�r 0 usechar useChar � m   � ��q
�q 
TEXT � o      �p�p 0 
thetextenc 
theTextEnc�t  �� 0 eachchar eachChar ` n    
 � � � 2   
�o
�o 
cha  � o    �n�n 0 thetext theText ^  ��m � L   � � o  �l�l 0 
thetextenc 
theTextEnc�m  ��       �k � � ��k   � �j�i�j 0 
textualcmd  �i 0 	urlencode   � �h �g�f � ��e�h 0 
textualcmd  �g �d ��d  �  �c�c 	0 input  �f   � �b�a�b 	0 input  �a 0 shorturl   �   ! /�` 3�_ = B�` 0 	urlencode  
�_ .sysoexecTEXT���     TEXT�e .��  �Y hO�*�k+ %�%j E�O�� 	�%Y � � �^ S�]�\ � �[�^ 0 	urlencode  �] �Z�Z   �Y�Y 0 thetext theText�\   � 	�X�W�V�U�T�S�R�Q�P�X 0 thetext theText�W 0 
thetextenc 
theTextEnc�V 0 eachchar eachChar�U 0 usechar useChar�T 0 eachcharnum eachCharNum�S 0 firstdig firstDig�R 0 	seconddig 	secondDig�Q 0 anum aNum�P 0 numhex numHex   [�O�N�M�L�K�J t�I�H�G�F�E�D�C�B�A�@�?�>�=�<�;�:�9�8 ��7
�O 
cha 
�N 
kocl
�M 
cobj
�L .corecnte****       ****
�K .sysoctonshor       TEXT�J  �I *�H _
�G 
bool�F -�E .�D 0�C 9�B A�A Z�@ a�? z�> 
�= 
dire
�< olierndD
�; .sysorondlong        doub�: 	�9 7
�8 .sysontocTEXT       shor
�7 
TEXT�[�E�O ���-[��l kh �E�O�j E�O��  �E�Y Ť�	 ���&	 ��
 ���&�&	 ��
 ���&�&	 ��
 	�a �&�&	 �a 
 	�a �&�& p�a !a a l E�O�a #E�O�a  �a E�O�j E�Y hO�a  �a E�O�j E�Y hOa �a &%�a &%a &E�O�E�Y hO��%a &E�[OY�O� ascr  ��ޭ
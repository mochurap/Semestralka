/*SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";           */

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------
--
-- Data tabulky `users`
--  

TRUNCATE TABLE `mochurap_users`;
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("admin","Pavel Mochura","d033e22ae348aeb5660fc2140aec35850c4da997","mochurap@students.zcu.cz",3);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec1","David BerĂˇnek","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec1@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec2","Jana MakulovĂˇ","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec2@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec3","VĂˇclav HĂˇjek","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec3@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec4","TomĂˇĹˇ BartoĹ","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec4@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec5","NatĂˇlie HusovskĂˇ","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec5@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("rec6","Lenka SukovĂˇ","e0146cce4f0533f5d4fa389b2921b4bda14cac67","rec6@mail.com",2);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr1","OldĹ™ich BĹ‘hm","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr1@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr2","Michal SkotĂˇk","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr2@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr3","RĹŻĹľena SamcovĂˇ","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr3@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr4","Alena RichterovĂˇ","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr4@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr5","Bohuslav DvoĹ™Ăˇk","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr5@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr6","TomĂˇĹˇ Kosek","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr6@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr7","Iveta Dyachuk","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr7@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr8","Emma VedralovĂˇ","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr8@mail.com",1);
INSERT  INTO mochurap_users (username, fullname, password, email, rights) VALUES ("usr9","ÄŚenÄ›k NenadĂˇl","cbaa5eb8456950dfd176cc9bb1585c9f9faa545b","usr9@mail.com",1);


-- --------------------------------------------------------
--
-- Data tabulky `articles`
--  

TRUNCATE TABLE `mochurap_articles`;
INSERT INTO `mochurap_articles` (`id`, `title`, `tags`, `filedata`, `comments`, `review1`, `review2`, `review3`, `accepted`) VALUES
(1, 'vTime: prvnĂ­ sociĂˇlnĂ­ sĂ­ĹĄ ve virtuĂˇlnĂ­ realitÄ›', 'vTime;social;3D;', '%PDF-1.3\r%âăĎÓ\r\n7 0 obj\r<</Linearized 1/L 7945/O 9/E 3524/N 1/T 7656/H [ 451 137]>>\rendobj\r                       \r\n13 0 obj\r<</DecodeParms<</Columns 4/Predictor 12>>/Filter/FlateDecode/ID[<4DC91A1875A6D707AEC203BB021C93A0><F6C92B368A8A13408457A1D395A37EB9>]/Index[7 21]/Info 6 0 R/Length 52/Prev 7657/Root 8 0 R/Size 28/Type/XRef/W[1 2 1]>>stream\r\nhŢbbd``b`˛ ‚±H0§	6G ńĺ#Ă4,#ąÄĆť_\0\0L¤đ\r\nendstream\rendobj\rstartxref\r\n0\r\n%%EOF\r\n        \r\n27 0 obj\r<</Filter/FlateDecode/I 69/Length 58/S 38>>stream\r\nhŢb```a``üĎ\0Ü6¨€‘$ËŃ€,ĆĹ\rÜÜÓt&€8ĚZ-Ś,\0\0żâ\r\nendstream\rendobj\r8 0 obj\r<</Metadata 1 0 R/Pages 5 0 R/Type/Catalog>>\rendobj\r9 0 obj\r<</Contents 11 0 R/CropBox[0 0 595 842]/MediaBox[0 0 595 842]/Parent 5 0 R/Resources 14 0 R/Rotate 0/Type/Page>>\rendobj\r10 0 obj\r<</Filter/FlateDecode/First 94/Length 773/N 13/Type/ObjStm>>stream\r\nhŢĽTmoÚ0ţ+ţŕ—Řq"UHĐŽ®ŇZˇ&[?Dů‚‘B‚WŁ˙~w	.µ+ĄŇĚůĺî|ľçąă’0Âáž&Ü''"€•&žç‰”ŠFTČŕ$ &gZá­ćDH°b!ŕ(°Ć$ą¸ —UQŐŃ&›\\4\n/cä~4˘ß¶ö:˛™ĹëăőÝÁ´*-ěMĆ\0[4ŽĐM%ŢŢM}Ľ¸›xgg>««ydlBgWS\Z›­MGŁ„^fĹýőŻĘÖë,C?ôP¦ô6łuľMŘPrt>=žŇ¸Ň\\A^ŘóP BŤ‘\rCĹTJVą5ł*/mŇmxá!D“BŃ<eEcht‹¦‚Ć÷ôfaJ›Ű\ZżlĚ>?Łč_ĺOO¦6ĺÜ4	§ŹĎEalşS,çŐ"/—­Ţ$k&F/ëÇŞx=DX1UŃóŁE#´ä4®~–9(ÂwIĹ3´oťŤ›9DDB¦ ›ď&_®,aôĘtűÁ9ťŮ˛Ć´V“IµM>Đgŕi$Ě`2HŰÓ»lmč¸Îłb0©ŠĹmLolVäóqą,řŤ¬Y˙*zű0đŞ:ßŘŞ>|Ý÷Fú—ă˛É_×ÓĽněĺ*«]|{wHl|đŹl§ÁążONýlb—ĄÖ\\/ěŞI„FJ~íkiň*}ÎßĐń}ýˇĄüÖş/»Ą“î/[-ĎóŇ>ŔAČßŘw\0ËŔĘG€™€±S0¦{\0ÇůÚ4wć÷}µÎĘYôĘěcŚ˙vtĐ‚­ĺ)@«ĂdCŤcÚÚŃ¦Ví˙O…Aíf{¨ŽuĐ;ČB)ßĐ”°«ŘˇÄČpŽŁO\0\rĂíăŘ˝¨ z''»¸#˙ëÓ>KżÔe|$Ę‘ĐÓÇ]ć|ę9óóç4Nj,ź-É0č—¤Ô]IrÁ|Ě†xż$ŰľŮeć(E®>Ó…˙é÷ĽÜ©ŁbüŚbÝ§č©=÷ŽĚ\\qş˙®¨ű1îôŠ\nŃŁ‹bWŇ@?\0>ĐŠń\r\nendstream\rendobj\r11 0 obj\r<</Filter/FlateDecode/Length 1530>>stream\r\nH‰´WKoă6FŻţs[Ş˝Çt·)ĐÓb+ ‡n˛Ä$*dŃé¤ůSýŤťi{ť-\n,ZPř\Zrć›™oĆ?t›Ű®Ë …îa“qR@‚2ĘŇ<®«¤‚ş¬qžäĐí7·ďm	ĺc	ŘasűÓ/)<ÚÍ6‰“$« 64Ş\Zč^6ż©»(MâLŤŃ¶ŽSev\Z˘mJCÜhâZ\rŃ6Sk´­â\nw{?ÜĂýDŤšµŤ~ď~&Żc&\nfĐ´q›‘rYç™(Ç:$­×!Łë0â»ÁGłş~7kř`P‡$nŐpÜëĹÁ}TĆąÂEZ[÷¸™Ł‚¨Ëg…Úđćç&KŞ''Ş‡ă2=ëŐöł,<L3Y•áČ¬{ăU÷F‡•Śo•¶z}ö/ë(Ăo¸qžŮĚ¶iś–Đ}`“ĆŇ¶™b˘aď×Q ńDÖÍâěÍĺ<Jđ»ň¬ŠŐłŚsÓm[ôË#ą§Q7|’E>!˘ł9Š´ĺ-^Fx”U™ž&‘±Q˘ŔČ˝^Q/Á—˝ĘSb˛Ĺ›EĘ[1\Z™IQŇT_şu´-qĎkÝÓ,÷Ž˘±YaÚ}ďŁ˘‘I#„ţp§ˇw“Y GĂsďČ‰p´¬F¦ôÎŔ°j	Ńß*”Ó0ą8ř,‹sď˛”ÂđqŚ™P+ŘNÇEf#_ZňĄĄšĹsB˘hčŮř[Í2\r„C•áĹđ8Y·N»ŁbQ?0¤Ůk+W& Ô''PjQü°\ZĚ˝Ü›ećZňf™˝°Z¶ć¸8Í]F/“{"MVĎK\rŔ©aźz2\0S>WÓňŃe‚ßí˝g˛a$Y+RH}uPúWţP\\Tţx•ťĆpWHťŇVµ%ßs·ĽšEß “__ž4zS„=« ^aI˝pť\n(0 ÇĚA#°HOŃ¶Á@#ŻfŠ\rŚán&*ČĆI™ŁÄř˘	!žˇŔâ@ü0¦ýŚb†‚N…ů°ú…qĂ$`Ľ¶¬+ą±Ć¦>´Ó¤©DáOšµëů;F’N4^1;\ns¤}ŇŻMÄ{Ť:LrdáăN"“dLQtľÄó\rŹO\rß §örąhâdbÁbTĘĘäp*/„qĄŢE‚UCČňĄžđĄvúň˘#˛^=2`‹µŤ¸č«éđ†#FłĽĂ`Eđá©î&(‰ŕĚž\Z(ő,2Ç?Q	śÓ¶˘´µWI€ú”ßĹ×ň@Bc†dRMŚ{Ť\\¨´>ˇ°(/.*Ď•rQ?żôŻ\\‘ř‘ŕ°NHD/¦h‰ZWÍ3YsóëU5ÇDj/ň.ÉNřű‚ĚËT[QE&ˇĆż3	QăĹQ?‹#Ä?ő5˝ß‹âżÄ6ôiÝ¦—Đ¦mŽt7q1ŞÚž˙™"/Č†)áń\ZeÔ\nz(ŽŐçË­kźPëđ–ĺäq.ŤµúłŢâś]á4oC‡DI‡Ł–lčąAqz¤Ň+í‹lŢa{gß,ů~†Ę.Ö.îC¬ypd+	­L˝Ł0\n4ů™ÂľL˝*¤ňíÚ7ü¬ov°4gi¬őë•P\Z‘ňeD%]Ůl¨Y	Íg''Ő¤JI­^ŚŮX,¦GM)şł-,¶HŰć\rşjŰŇěś*>Śź1\r3ö6fĆő´`Zp˘dj@ľB6ÜMóäŐ˙ÉŰłšľAËůéAüŹIwŚVnË?é~-ŃJ˝°?×3~äv•F‚n4/Ëlú‘»*‰,¬ˇ»SáŻ`üdDŹAôÔĆ ‰î.Yú*ysőDOtA…şaŰDł°Ş±%ýw ż™]s°h\Zß>˝7ěIŚřżN~Sś:Á\ZIńT8sOľé©˝¦ń*y,`÷˛:ű“+Ëa)‘e*‚<ĄĘ„&˙CFŽR§ÍŁÁ_yý´żiô>“›dÝ÷U„á¨}¤pŽ_D]F …]cŻ4üK¤]heÝíéQxçs«ˇŕWúîÄ?v›ż\0­‡Ý\n\r\nendstream\rendobj\r12 0 obj\r<</Filter/FlateDecode/Length 208>>stream\r\nH‰T˝Â0„÷>…GCÚÎUX:đ#\něiâV‘ąéĐ·'')ÄKöĺÓť-öÍˇ!@\\Ř©ô†4ăč&V† (AÖn©ĘJ"Âí<´\rőŞ*×(ŽgŘ´łíÜs—oAśY#\Z`s+îŹ8h''ďźh‘äP× ±ĎÄţ(ýIZŚňŠ.ób5t\ZG/˛¤ˇĘ‹ú]ôżö!şţÝţľVe^–u‰Ź–ŕ´É×[MĚ1Ö˛î’(e0„ß‹xç“ezŮK€\0CČi?\n\r\nendstream\rendobj\r1 0 obj\r<</Length 3656/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin="ď»ż" id="W5M0MpCehiHzreSzNTczkc9d"?>\n<x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 4.2.1-c043 52.372728, 2009/01/18-15:08:04        ">\n   <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">\n      <rdf:Description rdf:about=""\n            xmlns:dc="http://purl.org/dc/elements/1.1/">\n         <dc:format>application/pdf</dc:format>\n         <dc:creator>\n            <rdf:Seq>\n               <rdf:li>cdaily</rdf:li>\n            </rdf:Seq>\n         </dc:creator>\n         <dc:title>\n            <rdf:Alt>\n               <rdf:li xml:lang="x-default">This is a test PDF file</rdf:li>\n            </rdf:Alt>\n         </dc:title>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:xmp="http://ns.adobe.com/xap/1.0/">\n         <xmp:CreateDate>2000-06-29T10:21:08+11:00</xmp:CreateDate>\n         <xmp:CreatorTool>Microsoft Word 8.0</xmp:CreatorTool>\n         <xmp:ModifyDate>2013-10-28T15:24:13-04:00</xmp:ModifyDate>\n         <xmp:MetadataDate>2013-10-28T15:24:13-04:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:pdf="http://ns.adobe.com/pdf/1.3/">\n         <pdf:Producer>Acrobat Distiller 4.0 for Windows</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/">\n         <xmpMM:DocumentID>uuid:0805e221-80a8-459e-a522-635ed5c1e2e6</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:62d6ae6d-43c4-472d-9b28-7c4add8f9e46</xmpMM:InstanceID>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end="w"?>\r\nendstream\rendobj\r2 0 obj\r<</Filter/FlateDecode/First 4/Length 48/N 1/Type/ObjStm>>stream\r\nhŢ2U0P°±ŃwÎ/Í+Q0Ô÷ÎL)Ž¶ŠĹę‡T¤ę$¦§ŰŮ\0Öw€\r\nendstream\rendobj\r3 0 obj\r<</Filter/FlateDecode/First 4/Length 167/N 1/Type/ObjStm>>stream\r\nhŢ<ËÁ\nÂ0EŃ_™ť\r˘ťÄ*UJˇXÜ	.×±Ié@č@2Eü{ŠŹ»|ç\0MSv‹L‹ÁY\noUžŁ·B<÷V|ŃźćĚQŁŃXŻµ^!®~Ż¬®4DN<\n<8:¨·¨Ę+»?Ö»k˝7•Ţm°úâ[d·>]ĆO+ĐS\nÁG¨¶#GxĐěř•Ty''	ľ¸O” gA|¸ő)xŐ¶\0gg;d\r\nendstream\rendobj\r4 0 obj\r<</DecodeParms<</Columns 3/Predictor 12>>/Filter/FlateDecode/ID[<4DC91A1875A6D707AEC203BB021C93A0><F6C92B368A8A13408457A1D395A37EB9>]/Info 6 0 R/Length 37/Root 8 0 R/Size 7/Type/XRef/W[1 2 0]>>stream\r\nhŢbb```bä=ÂÄŔ?•‰ˇ‡‰‘…‰ń±$Í`\0*Y\r\nendstream\rendobj\rstartxref\r\n116\r\n%%EOF\r\n', 'VirtuĂˇlnĂ­ realita nabĂ­zĂ­ zajĂ­mavĂ© Ĺ™eĹˇenĂ­ bÄ›ĹľnĂ˝ch vÄ›cĂ­, jako jsou tĹ™eba sociĂˇlnĂ­ sĂ­tÄ›. vTime je novinka, dĂ­ky kterĂ© mĹŻĹľete s pĹ™Ăˇteli chatovat na velmi neobvyklĂ˝ch mĂ­stech a cĂ­tit se pĹ™itom, jako byste tam skuteÄŤnÄ› byli.', 1, 8, NULL, -1),
(2, 'OvlĂˇdĂˇnĂ­ robotĹŻ pomocĂ­ VR headsetĹŻ', 'robots;headset;', '%PDF-1.3\r%âăĎÓ\r\n7 0 obj\r<</Linearized 1/L 7945/O 9/E 3524/N 1/T 7656/H [ 451 137]>>\rendobj\r                       \r\n13 0 obj\r<</DecodeParms<</Columns 4/Predictor 12>>/Filter/FlateDecode/ID[<4DC91A1875A6D707AEC203BB021C93A0><F6C92B368A8A13408457A1D395A37EB9>]/Index[7 21]/Info 6 0 R/Length 52/Prev 7657/Root 8 0 R/Size 28/Type/XRef/W[1 2 1]>>stream\r\nhŢbbd``b`˛ ‚±H0§	6G ńĺ#Ă4,#ąÄĆť_\0\0L¤đ\r\nendstream\rendobj\rstartxref\r\n0\r\n%%EOF\r\n        \r\n27 0 obj\r<</Filter/FlateDecode/I 69/Length 58/S 38>>stream\r\nhŢb```a``üĎ\0Ü6¨€‘$ËŃ€,ĆĹ\rÜÜÓt&€8ĚZ-Ś,\0\0żâ\r\nendstream\rendobj\r8 0 obj\r<</Metadata 1 0 R/Pages 5 0 R/Type/Catalog>>\rendobj\r9 0 obj\r<</Contents 11 0 R/CropBox[0 0 595 842]/MediaBox[0 0 595 842]/Parent 5 0 R/Resources 14 0 R/Rotate 0/Type/Page>>\rendobj\r10 0 obj\r<</Filter/FlateDecode/First 94/Length 773/N 13/Type/ObjStm>>stream\r\nhŢĽTmoÚ0ţ+ţŕ—Řq"UHĐŽ®ŇZˇ&[?Dů‚‘B‚WŁ˙~w	.µ+ĄŇĚůĺî|ľçąă’0Âáž&Ü''"€•&žç‰”ŠFTČŕ$ &gZá­ćDH°b!ŕ(°Ć$ą¸ —UQŐŃ&›\\4\n/cä~4˘ß¶ö:˛™ĹëăőÝÁ´*-ěMĆ\0[4ŽĐM%ŢŢM}Ľ¸›xgg>««ydlBgWS\Z›­MGŁ„^fĹýőŻĘÖë,C?ôP¦ô6łuľMŘPrt>=žŇ¸Ň\\A^ŘóP BŤ‘\rCĹTJVą5ł*/mŇmxá!D“BŃ<eEcht‹¦‚Ć÷ôfaJ›Ű\ZżlĚ>?Łč_ĺOO¦6ĺÜ4	§ŹĎEalşS,çŐ"/—­Ţ$k&F/ëÇŞx=DX1UŃóŁE#´ä4®~–9(ÂwIĹ3´oťŤ›9DDB¦ ›ď&_®,aôĘtűÁ9ťŮ˛Ć´V“IµM>Đgŕi$Ě`2HŰÓ»lmč¸Îłb0©ŠĹmLolVäóqą,řŤ¬Y˙*zű0đŞ:ßŘŞ>|Ý÷Fú—ă˛É_×ÓĽněĺ*«]|{wHl|đŹl§ÁążONýlb—ĄÖ\\/ěŞI„FJ~íkiň*}ÎßĐń}ýˇĄüÖş/»Ą“î/[-ĎóŇ>ŔAČßŘw\0ËŔĘG€™€±S0¦{\0ÇůÚ4wć÷}µÎĘYôĘěcŚ˙vtĐ‚­ĺ)@«ĂdCŤcÚÚŃ¦Ví˙O…Aíf{¨ŽuĐ;ČB)ßĐ”°«ŘˇÄČpŽŁO\0\rĂíăŘ˝¨ z''»¸#˙ëÓ>KżÔe|$Ę‘ĐÓÇ]ć|ę9óóç4Nj,ź-É0č—¤Ô]IrÁ|Ě†xż$ŰľŮeć(E®>Ó…˙é÷ĽÜ©ŁbüŚbÝ§č©=÷ŽĚ\\qş˙®¨ű1îôŠ\nŃŁ‹bWŇ@?\0>ĐŠń\r\nendstream\rendobj\r11 0 obj\r<</Filter/FlateDecode/Length 1530>>stream\r\nH‰´WKoă6FŻţs[Ş˝Çt·)ĐÓb+ ‡n˛Ä$*dŃé¤ůSýŤťi{ť-\n,ZPř\Zrć›™oĆ?t›Ű®Ë …îa“qR@‚2ĘŇ<®«¤‚ş¬qžäĐí7·ďm	ĺc	ŘasűÓ/)<ÚÍ6‰“$« 64Ş\Zč^6ż©»(MâLŤŃ¶ŽSev\Z˘mJCÜhâZ\rŃ6Sk´­â\nw{?ÜĂýDŤšµŤ~ď~&Żc&\nfĐ´q›‘rYç™(Ç:$­×!Łë0â»ÁGłş~7kř`P‡$nŐpÜëĹÁ}TĆąÂEZ[÷¸™Ł‚¨Ëg…Úđćç&KŞ''Ş‡ă2=ëŐöł,<L3Y•áČ¬{ăU÷F‡•Śo•¶z}ö/ë(Ăo¸qžŮĚ¶iś–Đ}`“ĆŇ¶™b˘aď×Q ńDÖÍâěÍĺ<Jđ»ň¬ŠŐłŚsÓm[ôË#ą§Q7|’E>!˘ł9Š´ĺ-^Fx”U™ž&‘±Q˘ŔČ˝^Q/Á—˝ĘSb˛Ĺ›EĘ[1\Z™IQŇT_şu´-qĎkÝÓ,÷Ž˘±YaÚ}ďŁ˘‘I#„ţp§ˇw“Y GĂsďČ‰p´¬F¦ôÎŔ°j	Ńß*”Ó0ą8ř,‹sď˛”ÂđqŚ™P+ŘNÇEf#_ZňĄĄšĹsB˘hčŮř[Í2\r„C•áĹđ8Y·N»ŁbQ?0¤Ůk+W& Ô''PjQü°\ZĚ˝Ü›ećZňf™˝°Z¶ć¸8Í]F/“{"MVĎK\rŔ©aźz2\0S>WÓňŃe‚ßí˝g˛a$Y+RH}uPúWţP\\Tţx•ťĆpWHťŇVµ%ßs·ĽšEß “__ž4zS„=« ^aI˝pť\n(0 ÇĚA#°HOŃ¶Á@#ŻfŠ\rŚán&*ČĆI™ŁÄř˘	!žˇŔâ@ü0¦ýŚb†‚N…ů°ú…qĂ$`Ľ¶¬+ą±Ć¦>´Ó¤©DáOšµëů;F’N4^1;\ns¤}ŇŻMÄ{Ť:LrdáăN"“dLQtľÄó\rŹO\rß §örąhâdbÁbTĘĘäp*/„qĄŢE‚UCČňĄžđĄvúň˘#˛^=2`‹µŤ¸č«éđ†#FłĽĂ`Eđá©î&(‰ŕĚž\Z(ő,2Ç?Q	śÓ¶˘´µWI€ú”ßĹ×ň@Bc†dRMŚ{Ť\\¨´>ˇ°(/.*Ď•rQ?żôŻ\\‘ř‘ŕ°NHD/¦h‰ZWÍ3YsóëU5ÇDj/ň.ÉNřű‚ĚËT[QE&ˇĆż3	QăĹQ?‹#Ä?ő5˝ß‹âżÄ6ôiÝ¦—Đ¦mŽt7q1ŞÚž˙™"/Č†)áń\ZeÔ\nz(ŽŐçË­kźPëđ–ĺäq.ŤµúłŢâś]á4oC‡DI‡Ł–lčąAqz¤Ň+í‹lŢa{gß,ů~†Ę.Ö.îC¬ypd+	­L˝Ł0\n4ů™ÂľL˝*¤ňíÚ7ü¬ov°4gi¬őë•P\Z‘ňeD%]Ůl¨Y	Íg''Ő¤JI­^ŚŮX,¦GM)şł-,¶HŰć\rşjŰŇěś*>Śź1\r3ö6fĆő´`Zp˘dj@ľB6ÜMóäŐ˙ÉŰłšľAËůéAüŹIwŚVnË?é~-ŃJ˝°?×3~äv•F‚n4/Ëlú‘»*‰,¬ˇ»SáŻ`üdDŹAôÔĆ ‰î.Yú*ysőDOtA…şaŰDł°Ş±%ýw ż™]s°h\Zß>˝7ěIŚřżN~Sś:Á\ZIńT8sOľé©˝¦ń*y,`÷˛:ű“+Ëa)‘e*‚<ĄĘ„&˙CFŽR§ÍŁÁ_yý´żiô>“›dÝ÷U„á¨}¤pŽ_D]F …]cŻ4üK¤]heÝíéQxçs«ˇŕWúîÄ?v›ż\0­‡Ý\n\r\nendstream\rendobj\r12 0 obj\r<</Filter/FlateDecode/Length 208>>stream\r\nH‰T˝Â0„÷>…GCÚÎUX:đ#\něiâV‘ąéĐ·'')ÄKöĺÓť-öÍˇ!@\\Ř©ô†4ăč&V† (AÖn©ĘJ"Âí<´\rőŞ*×(ŽgŘ´łíÜs—oAśY#\Z`s+îŹ8h''ďźh‘äP× ±ĎÄţ(ýIZŚňŠ.ób5t\ZG/˛¤ˇĘ‹ú]ôżö!şţÝţľVe^–u‰Ź–ŕ´É×[MĚ1Ö˛î’(e0„ß‹xç“ezŮK€\0CČi?\n\r\nendstream\rendobj\r1 0 obj\r<</Length 3656/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin="ď»ż" id="W5M0MpCehiHzreSzNTczkc9d"?>\n<x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 4.2.1-c043 52.372728, 2009/01/18-15:08:04        ">\n   <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">\n      <rdf:Description rdf:about=""\n            xmlns:dc="http://purl.org/dc/elements/1.1/">\n         <dc:format>application/pdf</dc:format>\n         <dc:creator>\n            <rdf:Seq>\n               <rdf:li>cdaily</rdf:li>\n            </rdf:Seq>\n         </dc:creator>\n         <dc:title>\n            <rdf:Alt>\n               <rdf:li xml:lang="x-default">This is a test PDF file</rdf:li>\n            </rdf:Alt>\n         </dc:title>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:xmp="http://ns.adobe.com/xap/1.0/">\n         <xmp:CreateDate>2000-06-29T10:21:08+11:00</xmp:CreateDate>\n         <xmp:CreatorTool>Microsoft Word 8.0</xmp:CreatorTool>\n         <xmp:ModifyDate>2013-10-28T15:24:13-04:00</xmp:ModifyDate>\n         <xmp:MetadataDate>2013-10-28T15:24:13-04:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:pdf="http://ns.adobe.com/pdf/1.3/">\n         <pdf:Producer>Acrobat Distiller 4.0 for Windows</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/">\n         <xmpMM:DocumentID>uuid:0805e221-80a8-459e-a522-635ed5c1e2e6</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:62d6ae6d-43c4-472d-9b28-7c4add8f9e46</xmpMM:InstanceID>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end="w"?>\r\nendstream\rendobj\r2 0 obj\r<</Filter/FlateDecode/First 4/Length 48/N 1/Type/ObjStm>>stream\r\nhŢ2U0P°±ŃwÎ/Í+Q0Ô÷ÎL)Ž¶ŠĹę‡T¤ę$¦§ŰŮ\0Öw€\r\nendstream\rendobj\r3 0 obj\r<</Filter/FlateDecode/First 4/Length 167/N 1/Type/ObjStm>>stream\r\nhŢ<ËÁ\nÂ0EŃ_™ť\r˘ťÄ*UJˇXÜ	.×±Ié@č@2Eü{ŠŹ»|ç\0MSv‹L‹ÁY\noUžŁ·B<÷V|ŃźćĚQŁŃXŻµ^!®~Ż¬®4DN<\n<8:¨·¨Ę+»?Ö»k˝7•Ţm°úâ[d·>]ĆO+ĐS\nÁG¨¶#GxĐěř•Ty''	ľ¸O” gA|¸ő)xŐ¶\0gg;d\r\nendstream\rendobj\r4 0 obj\r<</DecodeParms<</Columns 3/Predictor 12>>/Filter/FlateDecode/ID[<4DC91A1875A6D707AEC203BB021C93A0><F6C92B368A8A13408457A1D395A37EB9>]/Info 6 0 R/Length 37/Root 8 0 R/Size 7/Type/XRef/W[1 2 0]>>stream\r\nhŢbb```bä=ÂÄŔ?•‰ˇ‡‰‘…‰ń±$Í`\0*Y\r\nendstream\rendobj\rstartxref\r\n116\r\n%%EOF\r\n', 'Headsety pro virtuĂˇlnĂ­ realitu nejsou jen na hranĂ­. NASA se poohlĂ­ĹľĂ­ po headsetu, kterĂ˝ by pouĹľĂ­vali operĂˇtoĹ™i, jeĹľ Ĺ™Ă­dĂ­ na dĂˇlku roboty ve vesmĂ­ru.', 9, NULL, NULL, -1),
(3, 'Haptic Feedback: DalĹˇĂ­ RozmÄ›r VR', 'haptic;hardware;gaming;art;', '%PDF-1.3\r%âăĎÓ\r\n7 0 obj\r<</Linearized 1/L 7945/O 9/E 3524/N 1/T 7656/H [ 451 137]>>\rendobj\r                       \r\n13 0 obj\r<</DecodeParms<</Columns 4/Predictor 12>>/Filter/FlateDecode/ID[<4DC91A1875A6D707AEC203BB021C93A0><F6C92B368A8A13408457A1D395A37EB9>]/Index[7 21]/Info 6 0 R/Length 52/Prev 7657/Root 8 0 R/Size 28/Type/XRef/W[1 2 1]>>stream\r\nhŢbbd``b`˛ ‚±H0§	6G ńĺ#Ă4,#ąÄĆť_\0\0L¤đ\r\nendstream\rendobj\rstartxref\r\n0\r\n%%EOF\r\n        \r\n27 0 obj\r<</Filter/FlateDecode/I 69/Length 58/S 38>>stream\r\nhŢb```a``üĎ\0Ü6¨€‘$ËŃ€,ĆĹ\rÜÜÓt&€8ĚZ-Ś,\0\0żâ\r\nendstream\rendobj\r8 0 obj\r<</Metadata 1 0 R/Pages 5 0 R/Type/Catalog>>\rendobj\r9 0 obj\r<</Contents 11 0 R/CropBox[0 0 595 842]/MediaBox[0 0 595 842]/Parent 5 0 R/Resources 14 0 R/Rotate 0/Type/Page>>\rendobj\r10 0 obj\r<</Filter/FlateDecode/First 94/Length 773/N 13/Type/ObjStm>>stream\r\nhŢĽTmoÚ0ţ+ţŕ—Řq"UHĐŽ®ŇZˇ&[?Dů‚‘B‚WŁ˙~w	.µ+ĄŇĚůĺî|ľçąă’0Âáž&Ü''"€•&žç‰”ŠFTČŕ$ &gZá­ćDH°b!ŕ(°Ć$ą¸ —UQŐŃ&›\\4\n/cä~4˘ß¶ö:˛™ĹëăőÝÁ´*-ěMĆ\0[4ŽĐM%ŢŢM}Ľ¸›xgg>««ydlBgWS\Z›­MGŁ„^fĹýőŻĘÖë,C?ôP¦ô6łuľMŘPrt>=žŇ¸Ň\\A^ŘóP BŤ‘\rCĹTJVą5ł*/mŇmxá!D“BŃ<eEcht‹¦‚Ć÷ôfaJ›Ű\ZżlĚ>?Łč_ĺOO¦6ĺÜ4	§ŹĎEalşS,çŐ"/—­Ţ$k&F/ëÇŞx=DX1UŃóŁE#´ä4®~–9(ÂwIĹ3´oťŤ›9DDB¦ ›ď&_®,aôĘtűÁ9ťŮ˛Ć´V“IµM>Đgŕi$Ě`2HŰÓ»lmč¸Îłb0©ŠĹmLolVäóqą,řŤ¬Y˙*zű0đŞ:ßŘŞ>|Ý÷Fú—ă˛É_×ÓĽněĺ*«]|{wHl|đŹl§ÁążONýlb—ĄÖ\\/ěŞI„FJ~íkiň*}ÎßĐń}ýˇĄüÖş/»Ą“î/[-ĎóŇ>ŔAČßŘw\0ËŔĘG€™€±S0¦{\0ÇůÚ4wć÷}µÎĘYôĘěcŚ˙vtĐ‚­ĺ)@«ĂdCŤcÚÚŃ¦Ví˙O…Aíf{¨ŽuĐ;ČB)ßĐ”°«ŘˇÄČpŽŁO\0\rĂíăŘ˝¨ z''»¸#˙ëÓ>KżÔe|$Ę‘ĐÓÇ]ć|ę9óóç4Nj,ź-É0č—¤Ô]IrÁ|Ě†xż$ŰľŮeć(E®>Ó…˙é÷ĽÜ©ŁbüŚbÝ§č©=÷ŽĚ\\qş˙®¨ű1îôŠ\nŃŁ‹bWŇ@?\0>ĐŠń\r\nendstream\rendobj\r11 0 obj\r<</Filter/FlateDecode/Length 1530>>stream\r\nH‰´WKoă6FŻţs[Ş˝Çt·)ĐÓb+ ‡n˛Ä$*dŃé¤ůSýŤťi{ť-\n,ZPř\Zrć›™oĆ?t›Ű®Ë …îa“qR@‚2ĘŇ<®«¤‚ş¬qžäĐí7·ďm	ĺc	ŘasűÓ/)<ÚÍ6‰“$« 64Ş\Zč^6ż©»(MâLŤŃ¶ŽSev\Z˘mJCÜhâZ\rŃ6Sk´­â\nw{?ÜĂýDŤšµŤ~ď~&Żc&\nfĐ´q›‘rYç™(Ç:$­×!Łë0â»ÁGłş~7kř`P‡$nŐpÜëĹÁ}TĆąÂEZ[÷¸™Ł‚¨Ëg…Úđćç&KŞ''Ş‡ă2=ëŐöł,<L3Y•áČ¬{ăU÷F‡•Śo•¶z}ö/ë(Ăo¸qžŮĚ¶iś–Đ}`“ĆŇ¶™b˘aď×Q ńDÖÍâěÍĺ<Jđ»ň¬ŠŐłŚsÓm[ôË#ą§Q7|’E>!˘ł9Š´ĺ-^Fx”U™ž&‘±Q˘ŔČ˝^Q/Á—˝ĘSb˛Ĺ›EĘ[1\Z™IQŇT_şu´-qĎkÝÓ,÷Ž˘±YaÚ}ďŁ˘‘I#„ţp§ˇw“Y GĂsďČ‰p´¬F¦ôÎŔ°j	Ńß*”Ó0ą8ř,‹sď˛”ÂđqŚ™P+ŘNÇEf#_ZňĄĄšĹsB˘hčŮř[Í2\r„C•áĹđ8Y·N»ŁbQ?0¤Ůk+W& Ô''PjQü°\ZĚ˝Ü›ećZňf™˝°Z¶ć¸8Í]F/“{"MVĎK\rŔ©aźz2\0S>WÓňŃe‚ßí˝g˛a$Y+RH}uPúWţP\\Tţx•ťĆpWHťŇVµ%ßs·ĽšEß “__ž4zS„=« ^aI˝pť\n(0 ÇĚA#°HOŃ¶Á@#ŻfŠ\rŚán&*ČĆI™ŁÄř˘	!žˇŔâ@ü0¦ýŚb†‚N…ů°ú…qĂ$`Ľ¶¬+ą±Ć¦>´Ó¤©DáOšµëů;F’N4^1;\ns¤}ŇŻMÄ{Ť:LrdáăN"“dLQtľÄó\rŹO\rß §örąhâdbÁbTĘĘäp*/„qĄŢE‚UCČňĄžđĄvúň˘#˛^=2`‹µŤ¸č«éđ†#FłĽĂ`Eđá©î&(‰ŕĚž\Z(ő,2Ç?Q	śÓ¶˘´µWI€ú”ßĹ×ň@Bc†dRMŚ{Ť\\¨´>ˇ°(/.*Ď•rQ?żôŻ\\‘ř‘ŕ°NHD/¦h‰ZWÍ3YsóëU5ÇDj/ň.ÉNřű‚ĚËT[QE&ˇĆż3	QăĹQ?‹#Ä?ő5˝ß‹âżÄ6ôiÝ¦—Đ¦mŽt7q1ŞÚž˙™"/Č†)áń\ZeÔ\nz(ŽŐçË­kźPëđ–ĺäq.ŤµúłŢâś]á4oC‡DI‡Ł–lčąAqz¤Ň+í‹lŢa{gß,ů~†Ę.Ö.îC¬ypd+	­L˝Ł0\n4ů™ÂľL˝*¤ňíÚ7ü¬ov°4gi¬őë•P\Z‘ňeD%]Ůl¨Y	Íg''Ő¤JI­^ŚŮX,¦GM)şł-,¶HŰć\rşjŰŇěś*>Śź1\r3ö6fĆő´`Zp˘dj@ľB6ÜMóäŐ˙ÉŰłšľAËůéAüŹIwŚVnË?é~-ŃJ˝°?×3~äv•F‚n4/Ëlú‘»*‰,¬ˇ»SáŻ`üdDŹAôÔĆ ‰î.Yú*ysőDOtA…şaŰDł°Ş±%ýw ż™]s°h\Zß>˝7ěIŚřżN~Sś:Á\ZIńT8sOľé©˝¦ń*y,`÷˛:ű“+Ëa)‘e*‚<ĄĘ„&˙CFŽR§ÍŁÁ_yý´żiô>“›dÝ÷U„á¨}¤pŽ_D]F …]cŻ4üK¤]heÝíéQxçs«ˇŕWúîÄ?v›ż\0­‡Ý\n\r\nendstream\rendobj\r12 0 obj\r<</Filter/FlateDecode/Length 208>>stream\r\nH‰T˝Â0„÷>…GCÚÎUX:đ#\něiâV‘ąéĐ·'')ÄKöĺÓť-öÍˇ!@\\Ř©ô†4ăč&V† (AÖn©ĘJ"Âí<´\rőŞ*×(ŽgŘ´łíÜs—oAśY#\Z`s+îŹ8h''ďźh‘äP× ±ĎÄţ(ýIZŚňŠ.ób5t\ZG/˛¤ˇĘ‹ú]ôżö!şţÝţľVe^–u‰Ź–ŕ´É×[MĚ1Ö˛î’(e0„ß‹xç“ezŮK€\0CČi?\n\r\nendstream\rendobj\r1 0 obj\r<</Length 3656/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin="ď»ż" id="W5M0MpCehiHzreSzNTczkc9d"?>\n<x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 4.2.1-c043 52.372728, 2009/01/18-15:08:04        ">\n   <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">\n      <rdf:Description rdf:about=""\n            xmlns:dc="http://purl.org/dc/elements/1.1/">\n         <dc:format>application/pdf</dc:format>\n         <dc:creator>\n            <rdf:Seq>\n               <rdf:li>cdaily</rdf:li>\n            </rdf:Seq>\n         </dc:creator>\n         <dc:title>\n            <rdf:Alt>\n               <rdf:li xml:lang="x-default">This is a test PDF file</rdf:li>\n            </rdf:Alt>\n         </dc:title>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:xmp="http://ns.adobe.com/xap/1.0/">\n         <xmp:CreateDate>2000-06-29T10:21:08+11:00</xmp:CreateDate>\n         <xmp:CreatorTool>Microsoft Word 8.0</xmp:CreatorTool>\n         <xmp:ModifyDate>2013-10-28T15:24:13-04:00</xmp:ModifyDate>\n         <xmp:MetadataDate>2013-10-28T15:24:13-04:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:pdf="http://ns.adobe.com/pdf/1.3/">\n         <pdf:Producer>Acrobat Distiller 4.0 for Windows</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/">\n         <xmpMM:DocumentID>uuid:0805e221-80a8-459e-a522-635ed5c1e2e6</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:62d6ae6d-43c4-472d-9b28-7c4add8f9e46</xmpMM:InstanceID>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end="w"?>\r\nendstream\rendobj\r2 0 obj\r<</Filter/FlateDecode/First 4/Length 48/N 1/Type/ObjStm>>stream\r\nhŢ2U0P°±ŃwÎ/Í+Q0Ô÷ÎL)Ž¶ŠĹę‡T¤ę$¦§ŰŮ\0Öw€\r\nendstream\rendobj\r3 0 obj\r<</Filter/FlateDecode/First 4/Length 167/N 1/Type/ObjStm>>stream\r\nhŢ<ËÁ\nÂ0EŃ_™ť\r˘ťÄ*UJˇXÜ	.×±Ié@č@2Eü{ŠŹ»|ç\0MSv‹L‹ÁY\noUžŁ·B<÷V|ŃźćĚQŁŃXŻµ^!®~Ż¬®4DN<\n<8:¨·¨Ę+»?Ö»k˝7•Ţm°úâ[d·>]ĆO+ĐS\nÁG¨¶#GxĐěř•Ty''	ľ¸O” gA|¸ő)xŐ¶\0gg;d\r\nendstream\rendobj\r4 0 obj\r<</DecodeParms<</Columns 3/Predictor 12>>/Filter/FlateDecode/ID[<4DC91A1875A6D707AEC203BB021C93A0><F6C92B368A8A13408457A1D395A37EB9>]/Info 6 0 R/Length 37/Root 8 0 R/Size 7/Type/XRef/W[1 2 0]>>stream\r\nhŢbb```bä=ÂÄŔ?•‰ˇ‡‰‘…‰ń±$Í`\0*Y\r\nendstream\rendobj\rstartxref\r\n116\r\n%%EOF\r\n', 'HaptickĂˇ zpÄ›tnĂˇ vazba pĹ™idĂˇvĂˇ do virtuĂˇlnĂ­ reality dalĹˇĂ­ rozmÄ›r. JejĂ­ vyuĹľitĂ­ je nejen v hernĂ­m prĹŻmyslu, ale tĂ©Ĺľ v umÄ›nĂ­ ÄŤi zdravotnictvĂ­.', 5, 6, 7, 1),
(4, 'VR kamera Nokia Ozo', 'kamera;Nokia;hardware;', '%PDF-1.3\r%âăĎÓ\r\n7 0 obj\r<</Linearized 1/L 7945/O 9/E 3524/N 1/T 7656/H [ 451 137]>>\rendobj\r                       \r\n13 0 obj\r<</DecodeParms<</Columns 4/Predictor 12>>/Filter/FlateDecode/ID[<4DC91A1875A6D707AEC203BB021C93A0><F6C92B368A8A13408457A1D395A37EB9>]/Index[7 21]/Info 6 0 R/Length 52/Prev 7657/Root 8 0 R/Size 28/Type/XRef/W[1 2 1]>>stream\r\nhŢbbd``b`˛ ‚±H0§	6G ńĺ#Ă4,#ąÄĆť_\0\0L¤đ\r\nendstream\rendobj\rstartxref\r\n0\r\n%%EOF\r\n        \r\n27 0 obj\r<</Filter/FlateDecode/I 69/Length 58/S 38>>stream\r\nhŢb```a``üĎ\0Ü6¨€‘$ËŃ€,ĆĹ\rÜÜÓt&€8ĚZ-Ś,\0\0żâ\r\nendstream\rendobj\r8 0 obj\r<</Metadata 1 0 R/Pages 5 0 R/Type/Catalog>>\rendobj\r9 0 obj\r<</Contents 11 0 R/CropBox[0 0 595 842]/MediaBox[0 0 595 842]/Parent 5 0 R/Resources 14 0 R/Rotate 0/Type/Page>>\rendobj\r10 0 obj\r<</Filter/FlateDecode/First 94/Length 773/N 13/Type/ObjStm>>stream\r\nhŢĽTmoÚ0ţ+ţŕ—Řq"UHĐŽ®ŇZˇ&[?Dů‚‘B‚WŁ˙~w	.µ+ĄŇĚůĺî|ľçąă’0Âáž&Ü''"€•&žç‰”ŠFTČŕ$ &gZá­ćDH°b!ŕ(°Ć$ą¸ —UQŐŃ&›\\4\n/cä~4˘ß¶ö:˛™ĹëăőÝÁ´*-ěMĆ\0[4ŽĐM%ŢŢM}Ľ¸›xgg>««ydlBgWS\Z›­MGŁ„^fĹýőŻĘÖë,C?ôP¦ô6łuľMŘPrt>=žŇ¸Ň\\A^ŘóP BŤ‘\rCĹTJVą5ł*/mŇmxá!D“BŃ<eEcht‹¦‚Ć÷ôfaJ›Ű\ZżlĚ>?Łč_ĺOO¦6ĺÜ4	§ŹĎEalşS,çŐ"/—­Ţ$k&F/ëÇŞx=DX1UŃóŁE#´ä4®~–9(ÂwIĹ3´oťŤ›9DDB¦ ›ď&_®,aôĘtűÁ9ťŮ˛Ć´V“IµM>Đgŕi$Ě`2HŰÓ»lmč¸Îłb0©ŠĹmLolVäóqą,řŤ¬Y˙*zű0đŞ:ßŘŞ>|Ý÷Fú—ă˛É_×ÓĽněĺ*«]|{wHl|đŹl§ÁążONýlb—ĄÖ\\/ěŞI„FJ~íkiň*}ÎßĐń}ýˇĄüÖş/»Ą“î/[-ĎóŇ>ŔAČßŘw\0ËŔĘG€™€±S0¦{\0ÇůÚ4wć÷}µÎĘYôĘěcŚ˙vtĐ‚­ĺ)@«ĂdCŤcÚÚŃ¦Ví˙O…Aíf{¨ŽuĐ;ČB)ßĐ”°«ŘˇÄČpŽŁO\0\rĂíăŘ˝¨ z''»¸#˙ëÓ>KżÔe|$Ę‘ĐÓÇ]ć|ę9óóç4Nj,ź-É0č—¤Ô]IrÁ|Ě†xż$ŰľŮeć(E®>Ó…˙é÷ĽÜ©ŁbüŚbÝ§č©=÷ŽĚ\\qş˙®¨ű1îôŠ\nŃŁ‹bWŇ@?\0>ĐŠń\r\nendstream\rendobj\r11 0 obj\r<</Filter/FlateDecode/Length 1530>>stream\r\nH‰´WKoă6FŻţs[Ş˝Çt·)ĐÓb+ ‡n˛Ä$*dŃé¤ůSýŤťi{ť-\n,ZPř\Zrć›™oĆ?t›Ű®Ë …îa“qR@‚2ĘŇ<®«¤‚ş¬qžäĐí7·ďm	ĺc	ŘasűÓ/)<ÚÍ6‰“$« 64Ş\Zč^6ż©»(MâLŤŃ¶ŽSev\Z˘mJCÜhâZ\rŃ6Sk´­â\nw{?ÜĂýDŤšµŤ~ď~&Żc&\nfĐ´q›‘rYç™(Ç:$­×!Łë0â»ÁGłş~7kř`P‡$nŐpÜëĹÁ}TĆąÂEZ[÷¸™Ł‚¨Ëg…Úđćç&KŞ''Ş‡ă2=ëŐöł,<L3Y•áČ¬{ăU÷F‡•Śo•¶z}ö/ë(Ăo¸qžŮĚ¶iś–Đ}`“ĆŇ¶™b˘aď×Q ńDÖÍâěÍĺ<Jđ»ň¬ŠŐłŚsÓm[ôË#ą§Q7|’E>!˘ł9Š´ĺ-^Fx”U™ž&‘±Q˘ŔČ˝^Q/Á—˝ĘSb˛Ĺ›EĘ[1\Z™IQŇT_şu´-qĎkÝÓ,÷Ž˘±YaÚ}ďŁ˘‘I#„ţp§ˇw“Y GĂsďČ‰p´¬F¦ôÎŔ°j	Ńß*”Ó0ą8ř,‹sď˛”ÂđqŚ™P+ŘNÇEf#_ZňĄĄšĹsB˘hčŮř[Í2\r„C•áĹđ8Y·N»ŁbQ?0¤Ůk+W& Ô''PjQü°\ZĚ˝Ü›ećZňf™˝°Z¶ć¸8Í]F/“{"MVĎK\rŔ©aźz2\0S>WÓňŃe‚ßí˝g˛a$Y+RH}uPúWţP\\Tţx•ťĆpWHťŇVµ%ßs·ĽšEß “__ž4zS„=« ^aI˝pť\n(0 ÇĚA#°HOŃ¶Á@#ŻfŠ\rŚán&*ČĆI™ŁÄř˘	!žˇŔâ@ü0¦ýŚb†‚N…ů°ú…qĂ$`Ľ¶¬+ą±Ć¦>´Ó¤©DáOšµëů;F’N4^1;\ns¤}ŇŻMÄ{Ť:LrdáăN"“dLQtľÄó\rŹO\rß §örąhâdbÁbTĘĘäp*/„qĄŢE‚UCČňĄžđĄvúň˘#˛^=2`‹µŤ¸č«éđ†#FłĽĂ`Eđá©î&(‰ŕĚž\Z(ő,2Ç?Q	śÓ¶˘´µWI€ú”ßĹ×ň@Bc†dRMŚ{Ť\\¨´>ˇ°(/.*Ď•rQ?żôŻ\\‘ř‘ŕ°NHD/¦h‰ZWÍ3YsóëU5ÇDj/ň.ÉNřű‚ĚËT[QE&ˇĆż3	QăĹQ?‹#Ä?ő5˝ß‹âżÄ6ôiÝ¦—Đ¦mŽt7q1ŞÚž˙™"/Č†)áń\ZeÔ\nz(ŽŐçË­kźPëđ–ĺäq.ŤµúłŢâś]á4oC‡DI‡Ł–lčąAqz¤Ň+í‹lŢa{gß,ů~†Ę.Ö.îC¬ypd+	­L˝Ł0\n4ů™ÂľL˝*¤ňíÚ7ü¬ov°4gi¬őë•P\Z‘ňeD%]Ůl¨Y	Íg''Ő¤JI­^ŚŮX,¦GM)şł-,¶HŰć\rşjŰŇěś*>Śź1\r3ö6fĆő´`Zp˘dj@ľB6ÜMóäŐ˙ÉŰłšľAËůéAüŹIwŚVnË?é~-ŃJ˝°?×3~äv•F‚n4/Ëlú‘»*‰,¬ˇ»SáŻ`üdDŹAôÔĆ ‰î.Yú*ysőDOtA…şaŰDł°Ş±%ýw ż™]s°h\Zß>˝7ěIŚřżN~Sś:Á\ZIńT8sOľé©˝¦ń*y,`÷˛:ű“+Ëa)‘e*‚<ĄĘ„&˙CFŽR§ÍŁÁ_yý´żiô>“›dÝ÷U„á¨}¤pŽ_D]F …]cŻ4üK¤]heÝíéQxçs«ˇŕWúîÄ?v›ż\0­‡Ý\n\r\nendstream\rendobj\r12 0 obj\r<</Filter/FlateDecode/Length 208>>stream\r\nH‰T˝Â0„÷>…GCÚÎUX:đ#\něiâV‘ąéĐ·'')ÄKöĺÓť-öÍˇ!@\\Ř©ô†4ăč&V† (AÖn©ĘJ"Âí<´\rőŞ*×(ŽgŘ´łíÜs—oAśY#\Z`s+îŹ8h''ďźh‘äP× ±ĎÄţ(ýIZŚňŠ.ób5t\ZG/˛¤ˇĘ‹ú]ôżö!şţÝţľVe^–u‰Ź–ŕ´É×[MĚ1Ö˛î’(e0„ß‹xç“ezŮK€\0CČi?\n\r\nendstream\rendobj\r1 0 obj\r<</Length 3656/Subtype/XML/Type/Metadata>>stream\r\n<?xpacket begin="ď»ż" id="W5M0MpCehiHzreSzNTczkc9d"?>\n<x:xmpmeta xmlns:x="adobe:ns:meta/" x:xmptk="Adobe XMP Core 4.2.1-c043 52.372728, 2009/01/18-15:08:04        ">\n   <rdf:RDF xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">\n      <rdf:Description rdf:about=""\n            xmlns:dc="http://purl.org/dc/elements/1.1/">\n         <dc:format>application/pdf</dc:format>\n         <dc:creator>\n            <rdf:Seq>\n               <rdf:li>cdaily</rdf:li>\n            </rdf:Seq>\n         </dc:creator>\n         <dc:title>\n            <rdf:Alt>\n               <rdf:li xml:lang="x-default">This is a test PDF file</rdf:li>\n            </rdf:Alt>\n         </dc:title>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:xmp="http://ns.adobe.com/xap/1.0/">\n         <xmp:CreateDate>2000-06-29T10:21:08+11:00</xmp:CreateDate>\n         <xmp:CreatorTool>Microsoft Word 8.0</xmp:CreatorTool>\n         <xmp:ModifyDate>2013-10-28T15:24:13-04:00</xmp:ModifyDate>\n         <xmp:MetadataDate>2013-10-28T15:24:13-04:00</xmp:MetadataDate>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:pdf="http://ns.adobe.com/pdf/1.3/">\n         <pdf:Producer>Acrobat Distiller 4.0 for Windows</pdf:Producer>\n      </rdf:Description>\n      <rdf:Description rdf:about=""\n            xmlns:xmpMM="http://ns.adobe.com/xap/1.0/mm/">\n         <xmpMM:DocumentID>uuid:0805e221-80a8-459e-a522-635ed5c1e2e6</xmpMM:DocumentID>\n         <xmpMM:InstanceID>uuid:62d6ae6d-43c4-472d-9b28-7c4add8f9e46</xmpMM:InstanceID>\n      </rdf:Description>\n   </rdf:RDF>\n</x:xmpmeta>\n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                                                                                                    \n                           \n<?xpacket end="w"?>\r\nendstream\rendobj\r2 0 obj\r<</Filter/FlateDecode/First 4/Length 48/N 1/Type/ObjStm>>stream\r\nhŢ2U0P°±ŃwÎ/Í+Q0Ô÷ÎL)Ž¶ŠĹę‡T¤ę$¦§ŰŮ\0Öw€\r\nendstream\rendobj\r3 0 obj\r<</Filter/FlateDecode/First 4/Length 167/N 1/Type/ObjStm>>stream\r\nhŢ<ËÁ\nÂ0EŃ_™ť\r˘ťÄ*UJˇXÜ	.×±Ié@č@2Eü{ŠŹ»|ç\0MSv‹L‹ÁY\noUžŁ·B<÷V|ŃźćĚQŁŃXŻµ^!®~Ż¬®4DN<\n<8:¨·¨Ę+»?Ö»k˝7•Ţm°úâ[d·>]ĆO+ĐS\nÁG¨¶#GxĐěř•Ty''	ľ¸O” gA|¸ő)xŐ¶\0gg;d\r\nendstream\rendobj\r4 0 obj\r<</DecodeParms<</Columns 3/Predictor 12>>/Filter/FlateDecode/ID[<4DC91A1875A6D707AEC203BB021C93A0><F6C92B368A8A13408457A1D395A37EB9>]/Info 6 0 R/Length 37/Root 8 0 R/Size 7/Type/XRef/W[1 2 0]>>stream\r\nhŢbb```bä=ÂÄŔ?•‰ˇ‡‰‘…‰ń±$Í`\0*Y\r\nendstream\rendobj\rstartxref\r\n116\r\n%%EOF\r\n', ' Nokia Ozo dokĂˇĹľe zachytĂˇvat kvalitnĂ­ video a audio v celĂ©m svÄ›m okolĂ­. MĹŻĹľe se tak hodit tĹ™eba pro ĹľivĂ© pĹ™enosy z rĹŻznĂ˝ch udĂˇlostĂ­, kterĂ© budeme sledovat dĂ­ky VR headsetu.', 2, 3, 4, 0);

-- --------------------------------------------------------
--
-- Data tabulky `authors`
--  

TRUNCATE TABLE `mochurap_authors`;
INSERT INTO `mochurap_authors` (`id`, `author_id`, `article_id`) VALUES
(1, 9, 1),
(2, 8, 1),
(3, 0, 1),
(4, 8, 2),
(5, 14, 2),
(6, 0, 2),
(7, 12, 3),
(8, 4, 4),
(9, 15, 4),
(10, 0, 4);



TRUNCATE TABLE `mochurap_reviews`;
--
-- Data tabulky `reviews`
--

INSERT INTO `mochurap_reviews` (`id`, `reviewer_id`, `criteria1`, `criteria2`, `criteria3`, `criteria4`, `criteria5`, `submitted`) VALUES
(1, 2, 3, 4, 3, 4, 5, 1),
(2, 5, 2, 3, 1, 3, 2, 1),
(3, 6, 2, 2, 1, 4, 2, 1),
(4, 7, 3, 4, 1, 3, 3, 1),
(5, 1, 5, 4, 4, 5, 5, 1),
(6, 4, 5, 4, 3, 4, 4, 1),
(7, 3, 4, 5, 3, 5, 5, 1),
(8, 6, NULL, NULL, NULL, NULL, NULL, 0),
(9, 7, NULL, NULL, NULL, NULL, NULL, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



--��������1.2�޸Ĳ��֣����ԭ����jymodify.lua����






---��ģ���Ŷ�JYMain.lua ���޸ĺ����䡣

--������������ģ�����������޸�ԭʼJYMain.Lua�ļ���
--����һ��������¼�������
--1. SetModify������   �ú�������Ϸ��ʼʱ���ã������ڴ��޸�ԭ�е����ݣ��Լ��ض���ԭ�еĺ�������ʵ�ֶ�ԭ�к������޸ġ�
--                    �����Ϳ��Ի�������ԭʼ�ĺ���
--2. ԭ�к��������غ����� SetModify�����صĺ������ڴ˴����������޸�JYMain.lua�ļ����������޸Ĳ����ض��庯������ʽ��
--3. �µ���Ʒʹ�ú�����
--4. �µĳ����¼�������





--��jymain���޸ģ��Լ������µ���Ʒ�����ͳ����¼�������
--ע��������Զ���ȫ�̱�����
function SetModify()

   --����һ�����庯�������ӡ����������޸����˵��е�ϵͳ�˵�����������Ϸ�����п�����Ч�Ĺ��ܡ�
   --ԭ��ֻ����jyconst.lua��ͨ������������ǰ���ƣ���������ʵʱ���ơ�
   Menu_System_old=Menu_System;         --����ԭʼ����������µĺ�����Ҫ�������Ե���ԭʼ������
   Menu_System=Menu_System_new;

   ExecDoctor_old=ExecDoctor;         --�µ�ҽ�ƺ���
   ExecDoctor=ExecDoctor_new;

   War_PersonLostLife_old=War_PersonLostLife;         --�µ��ж�������������
   War_PersonLostLife=War_PersonLostLife_new;

   instruct_11_old=instruct_11;         --�µ�ָ��
   instruct_11=instruct_11_new;

   instruct_45_old=instruct_45;
   instruct_45=instruct_45_new;

   instruct_46_old=instruct_46;
   instruct_46=instruct_46_new;

   instruct_47_old=instruct_47;
   instruct_47=instruct_47_new;

   instruct_48_old=instruct_48;
   instruct_48=instruct_48_new;

   --�ڴ˶���������Ʒ��û�ж���ľ�����ȱʡ��Ʒ����
    JY.ThingUseFunction[182]=Show_Position;     --���̺���


--�޸�CC�ĳ���

   --������ͼ�ļ�����
   CC.SMAPPicFile={CONFIG.DataPath .. "sdx",CONFIG.DataPath .. "smp"};
   CC.WMAPPicFile={CONFIG.DataPath .. "wdx",CONFIG.DataPath .. "wmp"};
   CC.FightPicFile={CONFIG.DataPath .. "fdx%03d",CONFIG.DataPath .. "fmp%03d"};  --�˴�Ϊ�ַ�����ʽ��������C��printf�ĸ�ʽ��

       --�����Ա�б�: {��Աid����ӵ��ú���}      ----������µ������Ա���룬ֱ������������
    CC.PersonExit={{1,100},{2,102},{4,104},{9,106},{16,108},
                   {17,110},{25,112},{28,114},{29,116},{30,118},
                   {35,120},{36,122},{37,124},{38,126},{44,128},
                   {45,130},{47,132},{48,134},{49,136},{51,138},
                   {52,140},{53,142},{54,144},{55,146},{56,148},
                   {58,150},{59,152},{63,154},{66,156},{72,158},
                   {73,160},{74,162},{75,164},{76,166},{77,168},
                   {78,170},{79,172},{80,174},{81,176},{82,178},
                   {83,180},{84,182},{85,184},{86,186},{87,188},
                   {88,190},{89,192},{90,194},{91,196},{92,198},

				   };
				   
       --�����Ա�б�: {��Աid����ӵ��ú���}      ----������µ������Ա���룬ֱ������������
    CC.PersonExit={{1,100},{2,102},{4,104},{9,106},{16,108},
                   {17,110},{25,112},{28,114},{29,116},{30,118},
                   {35,120},{36,122},{37,124},{38,126},{44,128},
                   {45,130},{47,132},{48,134},{49,136},{51,138},
                   {52,140},{53,142},{54,144},{55,146},{56,148},
                   {58,150},{59,152},{63,154},{66,156},{72,158},
                   {73,160},{74,162},{75,164},{76,166},{77,168},
                   {78,170},{79,172},{80,174},{81,176},{82,178},
                   {83,180},{84,182},{85,184},{86,186},{87,188},
                   {88,190},{89,192},{90,194},{91,196},{92,198},
                   {589,200},{590,202},{591,204},{592,206},{593,208},
				   {594,210},{595,212},{596,214},{97,216},{597,218},
				   {50,220},{598,222},{599,224},{600,226},{601,228},
				   {103,230},{602,232},{603,234},{604,236},{605,238},
				   {606,240},{607,242},{608,244},{609,246},{610,248},
				   {93,250},{611,252},
				   };
				   


    CC.ExtraOffense={{52,75,100},             --�书����������ӹ������� ����Ϊ��������Ʒid���书id������������
                   {45,67,100},
                   {37,41,100},
                   {49,80,200},
                   {44,63,150},
                   {40,40,150},
                   {36,45,100},}
				   
  CC.Effect={[0]=10,14,17,9,13,                    --eft.idx/grp
                 17,17,17,18,19,
                 19,15,13,10,10,
                 15,21,16,9,11,
                 8,9,8,8,7,
                 8,8,9,12,19,
                 11,14,12,17,8,
                 11,9,13,10,19,
                 14,17,19,14,21,
                 16,13,18,14,17,
                 17,16,7,14,14,
 				 14,8,8,8,8,
				 8,15,14,7,7,
				 10,9,9,9,9,
				 9,19,19,19,19,
				 18,18,18,12,12,
				 12,12,14,14,14,
				 16,16,10,10,10,
				 8,15,17,17,14,
				 14,9,9,18,13,
				 8,17,9,16,21,
				 14,13,12,14,16,
				 20,19,14,19,20,
				 12,12,12,12,12,
				 12,12,12,12,12,
				 9,7,15,10,11,
				 11,13,6,10,10,
				 13,10,10,19,16,
				 14,14,15,12,7,
				 9,13,11,12,13,
				 21,21,12,12,6,
				 12,20,6,12,21,
				 15,14,13,13,7,
				 15,14,14,15,12,
				 15,16,14,20,13,
				 15,13,13,11,16	,			 
				 16,15,16,8,16,
				 16,19,10,14,16,
				 18,12,12,7,8,
				 13,17,15,17,26,};				   

   CC.PersonAttribMax={};             --�����������ֵ
   CC.PersonAttribMax["����"]=60000;
   CC.PersonAttribMax["��Ʒ��������"]=60000;
   CC.PersonAttribMax["��������"]=60000;
   CC.PersonAttribMax["�������ֵ"]=9999;
   CC.PersonAttribMax["���˳̶�"]=100;
   CC.PersonAttribMax["�ж��̶�"]=100;
   CC.PersonAttribMax["�������ֵ"]=9999;
   CC.PersonAttribMax["����"]=100;
   CC.PersonAttribMax["������"]=999;
   CC.PersonAttribMax["������"]=999;
   CC.PersonAttribMax["�Ṧ"]=999;
   CC.PersonAttribMax["ҽ������"]=999;
   CC.PersonAttribMax["�ö�����"]=999;
   CC.PersonAttribMax["�ⶾ����"]=999;
   CC.PersonAttribMax["��������"]=999;
   CC.PersonAttribMax["ȭ�ƹ���"]=999;
   CC.PersonAttribMax["��������"]=999;
   CC.PersonAttribMax["ˣ������"]=999;
   CC.PersonAttribMax["�������"]=999;
   CC.PersonAttribMax["��������"]=999;
   CC.PersonAttribMax["��ѧ��ʶ"]=999;
   CC.PersonAttribMax["Ʒ��"]=100;
   CC.PersonAttribMax["����"]=100;
   CC.PersonAttribMax["��������"]=999;


    CC.NewPersonName="��С��";                --����Ϸ������
    CC.NewGameSceneID=70;                      --����ID
    CC.NewGameSceneX=16;                       --��������
    CC.NewGameSceneY=31;
    CC.NewGameEvent=691;                       --����Ϸ����ִ���¼������û�У���ִ������Ϸ����·���¼���
    CC.NewPersonPic=2515;                      --��ʼ����pic


   if CONFIG.MP3==1 then
      CC.MIDIFile=CONFIG.SoundPath .. "game%02d.MP3";
   else
      CC.MIDIFile=CONFIG.SoundPath .. "game%02d.MID";
   end
   
    CC.LoadThingPic=1              --��ȡ��Ʒ��ͼ��ʽ 0 ��mmap/smap/wmap�ж�ȡ  1 ��ȡ������thing.idx/grp
	CC.StartThingPic=4131          --��Ʒ��ͼ��mmap/smap/wmap�е���ʼ��š�CC.LoadThingPic=0��Ч


end


--�µ�ϵͳ�Ӳ˵������ӿ������ֺ���Ч
function Menu_System_new()
	local menu={
	             {"��ȡ����",Menu_ReadRecord,1},
                 {"�������",Menu_SaveRecord,1},
				 {"�ر�����",Menu_SetMusic,1},
				 {"�ر���Ч",Menu_SetSound,1},
				 {"ȫ���л�",Menu_FullScreen,1},
                 {"�뿪��Ϸ",Menu_Exit,1},   };

    if JY.EnableMusic==0 then
	    menu[3][1]="������";
	end

	if JY.EnableSound==0 then
	    menu[4][1]="����Ч";
    end


    local r=ShowMenu(menu,6,0,CC.MainSubMenuX,CC.MainSubMenuY,0,0,1,1,CC.DefaultFont,C_ORANGE, C_WHITE);
    if r == 0 then
        return 0;
    elseif r<0 then   --Ҫ�˳�ȫ���˵���
        return 1;
 	end
end

function Menu_FullScreen()
    lib.FullScreen();
	lib.Debug("finish fullscreen");
end

function Menu_SetMusic()
    if JY.EnableMusic==0 then
	    JY.EnableMusic=1;
		PlayMIDI(JY.CurrentMIDI);
	else
	    JY.EnableMusic=0;
		lib.PlayMIDI("");
	end
	return 1;
end

function Menu_SetSound()
    if JY.EnableSound==0 then
	    JY.EnableSound=1;
	else
	    JY.EnableSound=0;
	end
	return 1;
end


----------------------------------------------------------------
---------------------------��Ʒʹ�ú���--------------------------


--���̺�������ʾ����ͼ����λ��
function Show_Position()
    if JY.Status ~=GAME_MMAP then
        return 0;
    end
    DrawStrBoxWaitKey(string.format("��ǰλ��(%d,%d)",JY.Base["��X"],JY.Base["��Y"]),C_ORANGE,CC.DefaultFont);
	return 1;
end


--ִ��ҽ��
--id1 ҽ��id2, ����id2�������ӵ���
function ExecDoctor_new(id1,id2)      --ִ��ҽ��
	if JY.Person[id1]["����"]<50 then
        return 0;
	end

	local add=JY.Person[id1]["ҽ������"];
    local value=JY.Person[id2]["���˳̶�"];
    if value > add+20 then
        return 0;
	end

    if value <25 then    --�������˳̶ȼ���ʵ��ҽ������
        add=add*4/2;         --�˴��޸�
      --add=add*4/5;
	elseif value <50 then
        add=add*3/4;
	elseif value <75 then
        add=add*2/3;
	else
        add=add/2;
	end
 	add=math.modf(add)+Rnd(5);

    AddPersonAttrib(id2,"���˳̶�",-add);
    return AddPersonAttrib(id2,"����",add)
end



function War_PersonLostLife_new()             --����ս����ÿ�غ������ж������˶���Ѫ
    for i=0,WAR.PersonNum-1 do
        local pid=WAR.Person[i]["������"]
        if WAR.Person[i]["����"]==false then
            if JY.Person[pid]["���˳̶�"]>0 then
                local dec=math.modf(JY.Person[pid]["���˳̶�"]/20);
                AddPersonAttrib(pid,"����",-dec);
            end
            if JY.Person[pid]["�ж��̶�"]>0 then
                --local dec=math.modf(JY.Person[pid]["�ж��̶�"]/10);
                local dec=math.modf(JY.Person[pid]["�ж��̶�"]);          --�˴��޸�
                AddPersonAttrib(pid,"����",-dec);
            end
            if JY.Person[pid]["����"]<=0 then
                JY.Person[pid]["����"]=1;
            end
        end
    end
end


function instruct_11_new()              --�Ƿ�ס��
    Cls();
    return DrawStrBoxYesNo(-1,-1,"�Ƿ�(Y/N)?",C_ORANGE,CC.DefaultFont);
end


function instruct_45_new(id,value)        --�����Ṧ
    local add,str=AddPersonAttrib(id,"�Ṧ",value);
end


function instruct_46_new(id,value)            --��������
    local add,str=AddPersonAttrib(id,"�������ֵ",value);
    AddPersonAttrib(id,"����",0);
end


function instruct_47_new(id,value)
    local add,str=AddPersonAttrib(id,"������",value);           --���ӹ�����
end


function instruct_48_new(id,value)         --��������
    local add,str=AddPersonAttrib(id,"�������ֵ",value);
    AddPersonAttrib(id,"����",0);
end

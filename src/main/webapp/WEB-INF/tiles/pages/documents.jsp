<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>
<%@ page import="com.sedlackova2902.svj.controller.DownFile" %>

<%!
    String linkDownfile(DownFile downFile) {
	   StringBuilder sb = new StringBuilder();
       sb.append("<a href=\"documents.html?f=").append(downFile.getFileId());
       sb.append("\" title=\"PDF soubor ").append(downFile.getFileSize()).append("\">");
       sb.append(downFile.getFileName()).append("</a>");
       //sb.append(" &nbsp; <small>").append(downFile.getFileSize()).append("</small>");
       return sb.toString();
    }

    String linkDownfile(DownFile downFile, String linkText) {
        StringBuilder sb = new StringBuilder();
        sb.append("<a href=\"documents.html?f=").append(downFile.getFileId());
        sb.append("\" title=\"").append(downFile.getFileName()).append(" - ").append(downFile.getFileSize()).append("\">");
        sb.append(linkText).append("</a>");
        return sb.toString();
    }

%>
<%
    String type = (String) request.getAttribute("type");
    if ("r".equals(type)) {
%>
<h3>Stanovy SVJ</h3>
<br/>
<p>Na <a href="documents.html?t=j">schůzi SVJ dne 2.6.2015</a> došlo ke schválení nových stanov.</p>
<br/>
<ul>
	<li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Stanovy_2015_SVJ, "stanovy SVJ") %></li>
	<li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2015_notarsky_zapis, "scan notářského zápisu") %></li>
</ul>
<%--
<br/>
<ul>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2012_notarskyZapis, "změna k 11.6.2012 - doplnění stanov") %></li>

    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Stanovy_SVJ, "Aktuální stanovy SVJ") %></li>

    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.SHROMAZDENI_3_NotarskyZapis, "změna z 24.11.2011 - zvýšení limitu pro uzavírání smluv") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; Zakládací stanovy:  
        <%= linkDownfile(DownFile.SHROMAZDENI_1a, "část a") %>, <%= linkDownfile(DownFile.SHROMAZDENI_1b, "část b") %>, 
        <%= linkDownfile(DownFile.SHROMAZDENI_1c, "část c") %>, <%= linkDownfile(DownFile.SHROMAZDENI_1d, "část d") %> 
    </li>
</ul>
 --%>
<%
    }
    if ("g".equals(type)) {
%>
<h3>GDPR -  General Data Protection Regulation</h3>
<p><br/>Dne 25. 5. 2018 nabývá účinnosti obecné nařízení Evropského parlamentu a Rady (EU) 2016/679 ze dne 27. 4. 2016 o ochraně fyzických osob
v souvislosti se zpracováním osobních údajů a o volném pohybu těchto údajů a o zrušení směrnice 95/46/ES (obecné nařízení o ochraně osobních údajů).<br/>
<br/>
V souvislosti s tímto nařízením byla přijata <%= linkDownfile(DownFile.GDPR_smernice, "Směrnice pro nakládání s osobními údaji") %>.</p>

 <% 
    }
    if ("v".equals(type)) {
%>
<h3>Vyúčtování - často kladené otázky</h3>
<p>zde jsou často kladené otázky k vyúčtování služeb a odpovědi na ně, které připravila naše správcovská firma, která toto vyúčtování provádí.</p>
<br/>
<ul>
<li><a href="#Polozka_vodne_pro_TUV">Co je to položka <i>'Vodné pro TUV'</i> a proč se na ni nestanovují zálohy?</a></li>
<li><a href="#Proc_neni_vyuctovan_fond_oprav">Proč není vyúčtován fond oprav?</a></li>
<li><a href="#Zalohy_vs_mesicni_platby">Nesedí mi zálohy uvedené na vyúčtování služeb s tím, co měsíčně platím, proč?</a></li>
<li><a href="#Preplatek_vs_nedoplatek">Přeplatek s mínusem – Mám tedy přeplatek nebo nedoplatek</a></li>
</ul>
<br/>
<hr/>
<br/>
<a id="Polozka_vodne_pro_TUV" name="Polozka_vodne_pro_TUV"></a>
<h1>Co je to položka <i>'Vodné pro TUV'</i> a proč se na ni nestanovují zálohy?</h1>
<p>Položka Vodné pro TUV je nedílnou součástí Teplé užitkové vody. Ve vyúčtování služeb rozlišujeme 4 náklady na vodu a teplo.
<ul>
<li>Teplo = ústřední topení</li>
<li>Teplá voda= množství GJ potřebných pro ohřátí studené vody, aby z ní byla teplá voda</li>
<li>Vodné, stočné = studená voda</li>
<li>Vodné pro TUV= množství studené vody spotřebované pro ohřev teplé(počítá se jako náměr teplé vody x cena studené vody)</li>
</ul>
Zálohy na položku <i>'Vodné pro TUV'</i> se nestanovují – ve většině případů k tomu není důvod. Zálohy na tuto položku by měly být obsaženy v zálohách na vodné, stočné. Pokud tomu tak není nejsou správně stanoveny zálohy na vodné, stočné.</p>
<br/>
<br/>
<a id="Proc_neni_vyuctovan_fond_oprav" name="Proc_neni_vyuctovan_fond_oprav"></a>
<h1>Proč není vyúčtován fond oprav?</h1>
<p>Jednotlivé čerpání fondu oprav jde vidět vždy při schvalování účetní závěrky za rok předcházející na shromáždění SVJ, kdy se přistupuje k jejímu schválení. Ze zákona nám nevyplývá povinnost fond oprav vyúčtovávat na jednotlivé vlastníky. Fond oprav = dlouhodobá záloha, která zůstává na účtu SVJ a jsou z ni hrazeny opravy domu, atd.</p>
<br/>
<br/>
<a id="Zalohy_vs_mesicni_platby" name="Zalohy_vs_mesicni_platby"></a>
<h1>Nesedí mi zálohy uvedené na vyúčtování služeb s tím, co měsíčně platím, proč?</h1>
<p>Vyúčtování služeb je vyhotoveno vždy z předepsaných záloh. Vyúčtování nikdy nebylo a ani nikdy vyhotoveno nebude ze skutečně uhrazených plateb (kdyby se tak provádělo po každém uhrazení částky kterýmkoliv vlastníkem, tak by se vyúčtování muselo předělávat – což opravdu není možné). Skutečné úhrady jsou ve vyúčtování služeb uvedeny v položce stav z evidence k danému datu. Zde vidíte, zda-li jste zálohy platili ve správné výši či nikoliv (zde jsou vidět rozdíly).</p>
<p>Vyúčtování služeb je zhotovováno pouze ze záloh na služby, nevstupuje sem položka Fond oprav (dlouhodobá záloha), kterou všichni vlastníci platí společně se zálohami. Aby jste se tedy dopočítali správné částky, kterou máte uvedenou ve vyúčtování služeb jako „zálohy celkem“ je nutné z částky, kterou měsíčně hradíte odečíst fond oprav. V tuto chvíli má každý vlastník ve svém rozpisu záloh uvedeny dvě položky, které vstupují do Fondu oprav a to: 
<ul>
<li>Fond oprav – klasický fond, který hradíte již od vzniku Vašeho SVJ a 
<li>Fond oprav – příspěvky na výtahy (nová položka od 8/2014), tato položka byla do předpisu záloh přidána z důvodu nutných oprav na všech výtazích ve Vašem bytovém domě.</li>
</ul>
</p>
<br/>
Ukázka:<br/>
<p><b>Pan A</b> má ve vyúčtování služeb uvedeny zálohy ve výši 12.108,--Kč; celkem měsíčně hradí na předpise záloh na účet SVJ částku vy výši 2.215Kč. Ovšem ví, že měsíčně do fondu oprav přispívá částku ve výši 1.206,--Kč, která není předmětem vyúčtování služeb. Kontrolu správnosti vyúčtovaných záloh tedy provede následovně: 2215-1206=1009Kč/měsíčně na služby x12=1009x12=12.108,--Kč. V tuto chvíli ví, že má zálohy ve vyúčtování služeb uvedeny správně a zaevidovány všechny platby, tak jak skutečně uhradil. Nemá zde uveden žádný stav z evidence ke dni, což znamená, že zálohy platil řádně.</p>
<p><b>Pan B</b> má ve vyúčtování služeb uvedeny zálohy ve výši 12.108,--Kč; celkem měsíčně má předepsáno na zálohách částku ve výši 2215Kč. Ovšem hradí každý měsíc částku 2.500,--Kč, ví že měsíčně do fondu oprav přispívá částku ve výši 1.206,--Kč, která není předmětem vyúčtování služeb. Kontrolu správnosti vyúčtovaných záloh tedy provede následovně: 2215-1206=1009x12=12.108,--Kč. V tuto chvíli ví, že zálohy má ve vyúčtování služeb uvedeny správně. Kam se ovšem poděly navíc uhrazené peníze? Kontrolou ve vyúčtování si všimne, že v položce stav evidence ke dni je uvedena částka -3420,--Kč jenž je částkou zaplacenou navíc oproti předepsaným zálohám. Po sečtení všech těchto částek dojde k závěru, že ve vyúčtování má uvedeno vše správně.</p>
<br/>
<br/>
<a id="Preplatek_vs_nedoplatek" name="Preplatek_vs_nedoplatek"></a>
<h1>Přeplatek s mínusem – Mám tedy přeplatek nebo nedoplatek</h1>
Bohužel náš systém generuje přeplatek, jako výsledek vyúčtování s mínusem. Vždy je zde uvedeno např. přeplatek -100Kč. Opravdu v tuto chvíli přeplatek s mínusem znamená skutečný přeplatek, který Vám bude vrácen po skončení reklamační doby. Nedoplatek je vždy uveden, jako kladné číslo. Pro svoji vlastní kontrolu mohu porovnat skutečné náklady se zálohami a poté se dostanu logicky na přeplatek nebo nedoplatek dle situace.
<% 
    }
    if ("e".equals(type)) {
%>
<h3>Zápisy ze shromáždění SVJ</h3>
<p></p>
<br/>
<ul>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2018_zapis, "2018_06_04_Zapis_shromazdeni_SVJ.pdf") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2017_zapis, "2017_06_06_Zapis_shromazdeni_SVJ.pdf") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2016_zapis, "2016_06_09_Zapis_shromazdeni_SVJ.pdf") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2015_zapis, "2015_06_02_Zapis_shromazdeni_SVJ.pdf") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2014_zapis, "2014_06_25_Zapis_shromazdeni_SVJ.pdf") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2013_zapis, "2013_09_25_Zapis_shromazdeni_SVJ.pdf") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.MimoradneSchuze2013_zapis, "2013_03_20_Zapis_mimoradne_shromazdeni_SVJ.pdf") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Schuze2012_zapis, "2012_06_11_Zapis_shromazdeni_SVJ.pdf") %>, <%= linkDownfile(DownFile.Schuze2012_notarskyZapis, "2012_06_11_Shromazdeni_SVJ_notarsky_zapis.pdf") %></li>
<%--
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Stanovy_SVJ, "Aktuální stanovy SVJ") %></li>
 --%>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.SHROMAZDENI_3) %>, <%= linkDownfile(DownFile.SHROMAZDENI_3_NotarskyZapis) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.SHROMAZDENI_2) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; 2010_02_11_Schuze_shromazdeni_SVJ_1:  
        <%= linkDownfile(DownFile.SHROMAZDENI_1a, "část a") %>, <%= linkDownfile(DownFile.SHROMAZDENI_1b, "část b") %>, 
        <%= linkDownfile(DownFile.SHROMAZDENI_1c, "část c") %>, <%= linkDownfile(DownFile.SHROMAZDENI_1d, "část d") %> 
    </li>
</ul>
<br/>
<br/>

<h3>Zápisy ze schůzí výboru</h3>
<p>Zde můžete nahlédnout co a kdy se projednávalo na schůzi, kdo byl čím pověřen a kdo a co zařídil</p>
<br/>
<ul>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_18) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_17) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_16) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_15) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_14) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_13) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_12) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_11) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_10) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_9) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_8) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_7) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_6) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_5) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_4) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_3) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_2) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.ZAPIS_1) %></li>
</ul>
<br/>
<br/>

<h3>Zápisy z pracovních schůzek</h3>
<p></p>
<br/>
<ul>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.JEDNANI_MUHLBACHER_2) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.JEDNANI_EEIKA_201102) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.JEDNANI_TEPLARNY) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.JEDNANI_EEIKA) %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.JEDNANI_MUHLBACHER) %></li>
</ul>
<br/>
<br/>

<h3>Zápisy kontrolní komise</h3>
<p></p>
<br/>
<ul>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.Zprava_KK_2011, "Zpráva KK za rok 2011") %></li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; 2012_01_24_Zapis_kontroly_KK:  
        <%= linkDownfile(DownFile.Zapis_KK_20120124_a, "část a") %>, <%= linkDownfile(DownFile.Zapis_KK_20120124_b, "část b") %> 
    </li>
</ul>

<% }
    if ("c".equals(type)) {
%>
<h3>Uzavřené smlouvy SVJ</h3>
<br/>  
<ul>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.POJISTKA_201811) %> - období 2018/2019</li>
    <%--
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.POJISTKA_201311) %> - období 2013/2014</li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.POJISTKA_201111) %> - období 2011/2012</li>
    <li><img src="img/icons/pdf.gif"/> &nbsp; <%= linkDownfile(DownFile.POJISTKA) %> - období 2010/2011</li>
     --%>
</ul>  	
<%
    }
    if ("h".equals(type)) {
      %>
      <h3>Návody a rady</h3>
      <i>S uplaťňováním reklamací vhledem k našemu dodavateli ABD vs. Na Panence nelze očekávat že by se něco podařilo, proto si musíme pomoct sami přes soukromé specialisty. Nalezte zde proto návody a rady, připadně odkazy na osvědčené lidi.</i>
      <br/><br/>
      <ul>
		<li><a href="#Ovladac_garazovych_vrat">Ovladač garážových vrat</a></li>
        <li><a href="#Kapajici_nebo_praskle_topeni">Kapajicí nebo prasklé topení</a></li>
        <li><a href="#Okna_a_balkonove_dvere">Okna a balkónové dveře</a></li>
        <li><a href="#Zabouchnute_dvere">Zabouchnuté dveře</a></li>
        <li><a href="#El_zamek_vchodovych_dveri">El. zámek vchodových dveří</a></li>
        <li><a href="#Reklamace_a_odpovednost_za_vady">Reklamace a odpovědnost za vady</a></li>
        <li><a href="#Nefunkcni_garazova_vrata">Nefunkční garážová vrata</a></li>
        <li><a href="#Meric_Sontex_Supercal_539">Měřič Sontex Supercal 539</a></li>
        <li><a href="#Kam_s_tim">Kam s tím?</a></li>
      </ul>
      <br/>
      <hr/>
      <br/> 
      <a id="Ovladac_garazovych_vrat" name="Ovladac_garazovych_vrat"></a>
	  <h1>Ovladač garážových vrat</h1>
	  <p>Jetliže si zničíte nebo potřebujete nový dálkový ovladač, můžete si koupit u firmy Lomax v její <a href="https://www.lomax.cz/kontakt/lomax-brno.html?vzorkovna=230" target="contractor" >vzorkové prodejně</a>. Nový ovladač Vám pak nakóduje <a href="committee.html">Skřivánek nebo Zemánek</a>.</br/>
	  Ovladač by měl pracovat na frekvenci 868,3 MHz:
	  <ul>
		<li><a href="https://www.1pohony.cz/dalkovy-ovladac-lomax-digital-302-2-kanalovy-ovladac-868-3-mhz-lx302-868/?gclid=CjwKCAiA_c7UBRAjEiwApCZi8ZqumYZwt88H2Ts7QVw9FhqLdS9S87Wqb3WfRWGiptrfEBKrJDKuiRoC-N8QAvD_BwE" target="contractor">2 tlačítkový ovladač - Marantec Digital 302 - 868,3 MHZ</a></li>
		<li><a href="https://www.1pohony.cz/lomax-digital-313-3-tlacitkovy-ovladac-pro-pohony-marantec-na-vrata-lomax-868-3-mhz/?gclid=CjwKCAiA_c7UBRAjEiwApCZi8bUNhAGrFyGRA93oWBUd9L0S_t60RlbXk_lslxLsISSAfOeBPMZx9BoC_lgQAvD_BwE" target="contractor">3 tlačítkový ovladač - Marantec Digital 313 - 868,3 MHZ</a></li>
		<li><a href="http://eshop.montego.cz/o/dalkove-ovladace-Lomax-dalkove-ovladani-vrat-Lomax" target="contractor">4 tlačítkový ovladač - Marantec Digital 304 - 868,3 MHZ</a></li>
	  </ul>
	  </p>
      <br/><br/>
      <a id="Kapajici_nebo_praskle_topeni" name="Kapajici_nebo_praskle_topeni"></a>
      <h1>Kapajicí nebo prasklé topení</h1>
      <p>Pokud zjistíte že vám kapou raditátory nečekejte na havárii a raději se obraťe na instalatéry nebo přímo na <a href="contractors.html?t=s">havarijní servis tepláren</a>. Pokud vám prasklo potrubí tak pak již jen havarijní servis tepláren, tel kontakt: <b>+420 545 162 206</b> nebo <b>+420 603 291 699</b> nebo <b>+420 605 209 744</b>.
      </p>
      <br/><br/>
      <a id="Okna_a_balkonove_dvere" name="Okna_a_balkonove_dvere"></a>
      <h1>Okna a balkónové dveře</h1> 
      <p>Kování v oknech a balkonových dveří je typu <b>SIEGENIA A300</b> a dostupné informace jsou na 
            <a href="http://www.siegenia-aubi.cz/cz/service/documents_downloads/product_information_window_fitting/a300/index.html" target="contractor">této adrese</a>, 
            manuál na seřízení je přímo zde - <%= linkDownfile(DownFile.OKNA_KOVANI) %><br/>
         Pokud vám okna nebo balkónové dveře netěsní, špatně se zavírají nebo dokonce jsou špatně usazeny, tak se obťte na specializovanou firmu.<br/><br/> 
         Dobré zkušenosti máme s panem <a href="http://www.okna-servis.cz">Leschinger</a> tel: <b>+420 775 335 020</b>. Práci si učtuje za kus a typ práce, seřízení provádí od přesklení/usazení skel až po jemné poladění <a href="documents.html?f=102" target="contracts">viz návod</a>. 
         Cena za kompletní seřízení v celém bytě (9xokno + 2xbalkónové dveře) je cca 1900,- Kč. Čekací doba cca 14 dní.
      </p>
      <br/><br/>
      <a id="Zabouchnute_dvere" name="Zabouchnute_dvere"></a>
      <h1>Zabouchnuté dveře</h1>
      <p>Občas se stane, že si zabouhnete dveře, zlomíte si klíč v zámkové vložce nebo prostě dveře nelze otevřít. V takovém případě je potřeba zavolat zámečníka.
      Na některých vchodových dveřích se objevily nálepky na agenturu, které zavoláte ona zavolá zámečníka a vy pak platíte jak zámečníkovi tak i té agentuře. <br/>
      Zde je proto kontakt přímo na daného zámečníka: pan Záruba tel: <b>+420 608 416 338</b> nebo <b>+420 774 163 381</b>. Provádí jak nouzové otvírání tak i montáže zámků. Pokud zrovna někde někomu neotvírá je tady za 20 minut v kteroukoliv dobu.
      </p>
      <br/><br/>
      <a id="El_zamek_vchodovych_dveri" name="El_zamek_vchodovych_dveri"></a>
      <h1>El. zámek vchodových dveří</h1>
      <p>V každých vchodových dveřích domu je umístěn samozamykací el. zámek typu <b>BERA D 35</b>. V každém bytě ja pak u dveří umístěn domácí telefon typu <b>ELEGANT 2-BUS 4 FP 211 03</b>. 
         Bližší informace jsou na <a href="http://www.teslastropkov.cz/navody.htm" target="contracts">této adrese</a> nebo přímo zde - <%= linkDownfile(DownFile.DOMACI_TELEFON) %>. 
         Občas se stává že tento bytový telefon nefunguje nebo přes něj nelze ovládat el. vrátného.<br/>
         Příčiny:
      <ul>
      <li>telefon má na spodní straně ovládání hlasitosti, který má tří stupně - hlasitě/slabě/vypnuto. Zkontrolujte jestli vám dítě u telefonu nevyplo vyzvánění.</li>
      <li>při zvednutí sluchátka nedojde k odskočení vidlice - telefon je hluchý a el. vrátný je nefunkční. Při zvednutí sluchátka je vidlici potřeba pomoct. Je to způsobeno "zkrouceným" krytem - instalační šrouby nejsou dotaženy stejně</li>
      <li>neaktivovaný el. vrátný - je potřeba podle <a href="documents.html?f=101" target="contracts">návodu</a> v kapitole <i>3.4.Programování kódu pro otevírání elektrického zámku</i> nastavit nějaký libovolný kód. Po jeho zadání bude otvírání přes tlačítko zámku funkční.</li>
      </ul>
      <br/><br/>
      <a id="Reklamace_a_odpovednost_za_vady" name="Reklamace_a_odpovednost_za_vady"></a>
      <h1>Reklamace a odpovědnost za vady</h1>
      <ul>
      <li type="1">Objednatel je povinen reklamovat písemně zjevné vady kvality a rozsahu služeb a prací okamžitě při jejich zjištění, nejpozději však do tří dnů ode dne provedeného zákroku nebo prací souvisejících s opravou předmětného zařízení.</li>
      <li type="1">Zhotovitel je povinen bezúplatně odstranit reklamovanou vadu prací nebo zákroku do pěti dnů od doručení reklamace.</li>
      <li type="1">V případě, že reklamovaná vada není včas a řádně odstraněna, má objednatel právo na přiměřenou slevu z ceny nebo na odstranění vady vlastními pracovníky či třetími osobami na účet zhotovitele.</li>
      <li type="1">Objednatel nemá právo na slevu z ceny nebo úhradu nákladů podle předchozího bodu, pokud neumožní zhotoviteli odstranit oprávněně reklamovanou vadu.</li>
      </ul>
      <p>V případě dotazů se, prosím, obraťte na <a href="committee.html">svého zástupce vchodu</a>.</p>
      <br/><br/>
      <a id="Nefunkcni_garazova_vrata" name="Nefunkcni_garazova_vrata"></a>
      <h1>Nefunkční garážová vrata</h1>
      <p>Pokud dojde k závadě na garážových vratech, tak závada je většinou čistě mechanická.
        Stačí proto kontaktovat pana <a href="committee.html">Zemánka, Skřivánka nebo Valáška</a>, a oni závadu odstraní sami nebo Vám poradí jak ji odstranit.
        Každopádně pokud nevíte jak provést opravu tak <b>do vrat nevrtejte ať nenaděláte ješte větší škodu!</b></p><br/>
      <p>
        K závadě může dojít pokud se někdo snaží otevřít zavírající se dveře. Takže dveře raději nechte zavřít a následně je znovu otevřete.
      </p><br/>
      <p>
      Tlačítka na ovladačích jsou jen pro otevření vrat (každé tlačítko pro jedny vrata). Vrata se automaticky zavírají:
      <ul>
      <li> po projetí auta (fotobuňka cca 10cm od země)</li>
      <li> nebo po uplynutí 30 sec.</li>
      </ul>
      </p>
      <br/>
      <p style="color: red"><b>Pokud dojde ke krádeži nebo ztrátě ovladače od garáží neprodleně tuto skutečnost sdělte <a href="committee.html">Výboru SVJ!</a></b></p>
      <br/><br/>
      <a id="Meric_Sontex_Supercal_539" name="Meric_Sontex_Supercal_539"></a>
      <h1>Měřič Sontex Supercal 539</h1>
      <p>Vzhledem k vyměněným měřičům tepla v září 2012, je <a href="documents.html?f=306">zde návod</a> na obsluhu měřiče Sontex Supercal 539.</p>
      <br/><br/>
	  <a id="Kam_s_tim" name="Kam_s_tim"></a>
	  <h1>Kam s tím?</h1>
	  <p>Pokud se potřebujete zbavit nepotřebného nábytku nebo elektrospotřebičů, tak využijte <a href="http://www.brno-lisen.cz/sberna-strediska-odpadu-na-uzemi-mc-brno-lisen/t2723" target="contractor">sběných dvorů</a>, které máme v okolí hned dva:<br/><br/>
		<table class="oam_table">
			<thead>
			<tr>
				<th>Adresa</th>
				<th>Provozní doba</th>
				<th>Provozovatel</th>
				<th>Telefon</th>
			</tr>
			</thead>
			<tr>
				<td><a href="http://www.sberne-dvory.cz/dvur/23152/" target="contractor">Josefy Faimonové 602 00</a></td>
				<td>Po 13-18, 
Út-Pá 9-13 a 14-18, 
So-Ne 9-12 a 13-17</td>
				<td>SAKO Brno, a.s.</td>
				<td>+420 606 914 901</td>
			</tr>
			<tr>
				<td><a href="http://www.fcc-group.eu/cs/Ceska-republika/Sluzby/Sberne-dvory/Jizni-Morava/SD-Lisenska.html" target="contractor">Líšeňská 35</a></td>
				<td>Po-Pá 8:00-12:30, 13:00-16:00,
So 9:00-12:00, 14:00-17:00, 
Ne 14:00-17:00</td>
				<td>FCC Environment</td>
				<td>+420 602 173 308</td>
			</tr>
		</table>
	  </p>
	  <br/<br/>
<%
    }
    // aukce
    if ("a".equals(type)) {
%>
      Zde najdete stručný seznam dražených bytů, garážových stání a parkovacích stání. Detail k dané dražbě je možné stáhnout z přiloženého PDF souboru ve sloupci dražební vyhláška.
      Dražby proběhnout v <b>pondělí 28.3.2011</b> v BVV, pavilon E, sál tiskového centra.
      Mapa je <a target="contractor" href="http://www.bvv.cz/i2000/b-bvv.nsf/WWWAllPZDocsID/PKAY-68UCZL?OpenDocument&NAV=2&ZOOM=MAPA2010BVV.jpg&PAR=1">zde</a><br/>
      <br/>
      <i>Zde uvedené informace jsou jednorázově převzaty z portlálu <a href="http://www.portaldrazeb.cz" target="contractors">www.portaldrazeb.cz</a> dne 4.3.2011. Za chyby vzniklé přepisem nijak neručíme</i><br/>
      
      <br/>
      <h3>Dražba bytů (11 ks)</h3>
      Byty budou draženy v níže uvedených časech, každý byt zlášť. <br/>
      Aby jste se mohli dražby zůčastnit je potřeba uhradit zálohu 'Dražební jistotu' ve výši 100.000,- Kč<br/>
      Obhlídka bytů proběhne dne 17.03. a 24.03.2011 v 16:00.<br/>
      <br/>
      <table class="oam_table">
        <thead>
            <tr>
                <th>Bytová jednotka</th><th>Označení bytu</th><th>Čas dražby</th><th>Velikost</th><th>Plocha</th>
                <th>Vyvolávací cena</th><th>Tržní cena</th><th>Znalecký posudek</th><th>Dražební vyhláška</th>
            </tr>
        </thead>
        <tbody>            
            <tr>
                <td>2902/006</td><td>A1-01-3</td><td>08:30</td><td>3+kk</td><td>63,1 m2</td><td style="text-align:right">1.304.065,- Kč</td><td style="text-align:right">1.956.098,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_6_14179) %></td><td><%= linkDownfile(DownFile.Aukce_6_14179_2) %></td>
            </tr>
            <tr>
                <td>2902/008</td><td>A2-01-2</td><td>09:15</td><td>1+kk</td><td>36,1 m2</td><td style="text-align:right">777.333,- Kč</td><td style="text-align:right">1.165.999,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_8_14180) %></td><td><%= linkDownfile(DownFile.Aukce_8_14180_2) %></td>
            </tr>
            <tr>
                <td>2902/020</td><td>B2-01-2</td><td>10:00</td><td>2+kk</td><td>65,4 m2</td><td style="text-align:right">1.304.065,- Kč</td><td style="text-align:right">1.956.098,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_20_14181) %></td><td><%= linkDownfile(DownFile.Aukce_20_14181_2) %></td>
            </tr>
            <tr>
                <td>2902/023</td><td>B3-01-1</td><td>10:45</td><td>2+kk</td><td>62,4 m2</td><td style="text-align:right">1.184.332,- Kč</td><td style="text-align:right">1.776.498,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_23_14183) %></td><td><%= linkDownfile(DownFile.Aukce_23_14183_2) %></td>
            </tr>
            <tr>
                <td>2902/038</td><td>C2-01-2</td><td>11:30</td><td>2+kk</td><td>65,4 m2</td><td style="text-align:right">1.339.799,- Kč</td><td style="text-align:right">2.009.698,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_38_14184) %></td><td><%= linkDownfile(DownFile.Aukce_38_14184_2) %></td>
            </tr>
            <tr>
                <td>2902/042</td><td>C3-01-2</td><td>12:00</td><td>2+kk</td><td>57,4 m2</td><td style="text-align:right">1.089.465,- Kč</td><td style="text-align:right">1.634.198,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_42_14185) %></td><td><%= linkDownfile(DownFile.Aukce_42_14185_2) %></td>
            </tr>
            <tr>
                <td>2902/047</td><td>C4-01-2</td><td>13:30</td><td>1+kk</td><td>33,2 m2</td><td style="text-align:right">721.533,- Kč</td><td style="text-align:right">1.082.299,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_47_14186) %></td><td><%= linkDownfile(DownFile.Aukce_47_14186_2) %></td>
            </tr>
            <tr>
                <td>2902/203</td><td>A3-05-2</td><td>14:15</td><td>1+kk</td><td>39,3 m2</td><td style="text-align:right">898.666,- Kč</td><td style="text-align:right">1.347.999,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_203_14187) %></td><td><%= linkDownfile(DownFile.Aukce_203_14187_2) %></td>
            </tr>
            <tr>
                <td>2902/217</td><td>B3-05-2</td><td>15:00</td><td>2+kk</td><td>57,2 m2</td><td style="text-align:right">1.245.799,- Kč</td><td style="text-align:right">1.868.698,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_217_14188) %></td><td><%= linkDownfile(DownFile.Aukce_217_14188_2) %></td>
            </tr>
            <tr>
                <td>2902/332</td><td>A2-08-1</td><td>16:30</td><td>4+kk</td><td>66,5 m2</td><td style="text-align:right">1.391.199,- Kč</td><td style="text-align:right">2.086.798,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_332_14190) %></td><td><%= linkDownfile(DownFile.Aukce_332_14190_2) %></td>
            </tr>
            <tr>
                <td>2902/346</td><td>B3-08-1</td><td>17:30</td><td>3+kk</td><td>63,7 m2</td><td style="text-align:right">1.358.932,- Kč</td><td style="text-align:right">2.038.398,- Kč</td>
                <td><%= linkDownfile(DownFile.Aukce_346_14191) %></td><td><%= linkDownfile(DownFile.Aukce_346_14191_2) %></td>
            </tr>
        </tbody>
      </table>
      <br/>
      <h3>Dražba garážových stání (11 ks)</h3>
      Aby jste se mohli dražby zůčastnit je potřeba uhradit zálohu 'Dražební jistotu' ve výši 10.000,- Kč<br/>
      Termín obhlídky je 17.03.2011 a 24.03.2011 v 16:00, sraz zájemců u vjezdu do podzemních garáží<br/>
      <br/>
      <table class="oam_table">
        <thead>
            <tr>
                <th>Označení garážového stání</th><th>Čas dražby</th><th>Vyvolávací cena</th><th>Tržní cena</th><th>Dražební vyhláška</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>GS-A1-2 + GS-A1-3</td><td>18:30</td><td>230.000,- Kč</td><td>400.000,- Kč</td><td><%= linkDownfile(DownFile.Aukce_1_14565) %></td>
            </tr>
            <tr>
                <td>GS-A1-5, GS-A2-3, GS-A3-1, GS-B4-7, GS-D-6, GS-D-9, GS-D-11, GS-D-14, GS-D-15, GS-D-16</td><td>18:30</td><td>153.333,- Kč</td><td>266.667,- Kč</td><td><%= linkDownfile(DownFile.Aukce_1_14565) %></td>
            </tr>
        </tbody>
      </table>
      <br/>
      <br/>
      <h3>Dražba parkovacích stání (30 ks)</h3>
      Aby jste se mohli dražby zůčastnit je potřeba uhradit zálohu 'Dražební jistotu' ve výši 2.000,- Kč<br/>
      <br/>
      <table class="oam_table">
        <thead>
            <tr>
                <th>Pozemek parcely číslo</th><th>Čas dražby</th><th>Vyvolávací cena</th><th>Tržní cena</th><th>Dražební vyhláška</th><th>Znalecký posudek</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>4422/412, 4422/415, 4422/416, 4422/417, 4422/418, 4422/419, 4422/420, 4422/421,<br/>
                    4422/422, 4422/423, 4422/424, 4422/425, 4422/426, 4422/428, 4422/429, 4422/430,<br/>
                    4422/431, 4422/432, 4422/433, 4422/434, 4422/435, 4422/436, 4422/437, 4422/438,<br/>
                    4422/439, 4422/440, 4422/441, 4422/443</td>
                <td>19:30</td><td style="text-align:right">63.587,- Kč</td><td style="text-align:right">95.380,- Kč</td><td><%= linkDownfile(DownFile.Aukce_14566) %></td><td><a href="http://www.portaldrazeb.cz/pdf1/14566.pdf" title="Informace o parcele">14566.pdf</a></td>
            </tr>
            <tr>
                <td>4422/413</td><td>19:30</td><td style="text-align:right">66.890,- Kč</td><td style="text-align:right">100.335,- Kč</td><td><%= linkDownfile(DownFile.Aukce_14566) %></td><td><a href="http://www.portaldrazeb.cz/pdf1/14566.pdf" title="Informace o parcele">14566.pdf</a></td>
            </tr>
            <tr>
                <td>4422/414</td><td>19:30</td><td style="text-align:right">70.193,- Kč</td><td style="text-align:right">105.290,- Kč</td><td><%= linkDownfile(DownFile.Aukce_14566) %></td><td><a href="http://www.portaldrazeb.cz/pdf1/14566.pdf" title="Informace o parcele">14566.pdf</a></td>
            </tr>
        </tbody>
      </table>
      <br/>
      <br/>
<%
    }
    if ("s".equals(type)) {
%>
<h3>Schůze SVJ dne 24.11.2011</h3>
<p><i>Zde jsou zveřejněny podrobnosti k chystané schůzi SVJ.  <br/>
U každého bodu programu budou uvedeny i jednotlivé podklady. Podklady budou průběžně doplňovany a do 20.11.2011 zde budou ve finální podobě.</i></p>
<br/>
      <ul>
        <li><a href="#Misto_konani">Místo konání</a></li>
        <li><a href="#Casovy_harmonogram">Časový harmonogram</a></li>
        <li><a href="#Registrace">Registrace</a></li>
        <li><a href="#Plna_moc">Plná moc</a></li>
        <li><a href="#Prubeh_schuze">Vlastní průběh schůze</a></li>
        <li><a href="#Program">Program schůze s jednotlivými detaily</a></li>
        <br/>
        <li><%= linkDownfile(DownFile.SHROMAZDENI_3, "Výsledek schůze - zápis") %></li>
      </ul>

    <br/>
    <hr/>
    <br/>
    
<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň.
<br/><br/>

<a id="Casovy_harmonogram" name="Casovy_harmonogram"></a>
<h4>Časový harmonogram:</h4>
15:30 - 17:00  Registrace<br/>
17:00 - 21:45  Schůze<br/>
<br/><br/>
<a id="Registrace" name="Registrace"></a>
<h4>Registrace:</h4>
<p>Registrace začne v 15:30 v Dělnickém domě. Při registraci se všichni budou prokazovat platným občanským průkazem.<br/>
U každého se ověří či doplní jeho emailový a telefonní kontakt. Zároveň majitel ověří/doplní informace o umístění a čísle:</p>
<ul>
<li>sklepní kóje</li>
<li>garážového stání</li>
<li>parkovacího stání</li>
</ul>
<p>Vzhledem k tomu, že agenda registrace bude náročnější prosíme Vás abyste jste se dostavili co nejdříve. <br/>
Po ověření dostanete hlasovací lísteček kde bude vyznačený Váš spoluvlastnický podíl na domě Sedláčkova 2902</p>
<br/><br/>

<a id="Plna_moc" name="Plna_moce"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic ohlasovat. <br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/>
Formulář plné moci je <%= linkDownfile(DownFile.Schuze_plnaMoc, "zde") %><p>.
<br/>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - vystaví plnou moc</li></ul>
<li>byt je ve společném jmění manželů
    <ul>
        <li>na schůzi stačí jeden z manželů, nepotřebuje plnou moc druhého</li>
        <li>na schůzi se nemůže dostavit ani jeden - stačí plna moc jednoho z manželů</li>
    </ul> 
</li>
<li>byt je ve spoluvlastnictví
    <ul>
        <li>nutné zůčastnění všech majitelů (každý spolumajitel má pouze hlas odpovídající jeho poměrné části bytu)</li>
        <li>na schůzi jde pouze jeden majitel - nutná plná moc zbývajících spoluvlastníků</li>
        <li>na schůzi se nemůže dostavit ani jeden - nutná plná moc všech</li>
    </ul>
</li>
</ul>
<br/><br/>

<a id="Prubeh_schuze" name="Prubeh_schuze"></a>
<h4>Vlastní průběh schůze:</h4>
<p>Vzhledem k velkému počtu bodů které se budou probírat, musí schůze probíhat dosti svižně. Takže to bude probíhat takto:</p>
<ul>
    <li>prezentace bude probíhat bod po bodu podle programu</li>
    <li>prezentace bude promítana</li> 
    <li>ke každému prezentovanému bodu bude komentář ze strany zastupce/zástupců SVJ</li>
    <li>pokud někdo bude mít dotaz nebo připomínku, tak se přihlásí a až po vyzvání se postaví, představí a řekne co má na srdci</li>
    <li>bude probíhat hlasovaní hlasovacími lístečky k navrženým variantám</li>
    <li>proběhne sečtení hlasů - (čísel na hlasovacích lístečcích)</li>
    <li>změny ve stanovách SVJ budou zapsány notařem</li>
    <li>celá schůze bude zároveň průběžně dokumentována</li>
</ul>
<br/><br/>

</td>
<td>
<iframe width="430" height="450" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>
<br/>

<a id="Program" name="Program"></a>
<h4>Program schůze s jednotlivými detaily:</h4>
  <table class="oam_table">
    <colgroup>
        <col />
        <col />
    </colgroup>
    <thead>
        <tr>
            <th>Projednávané body</th><th>Podklady</th>
        </tr>
    </thead>
    <tbody>
        <tr>
            <td>1) Kontrola usnášeníschopnosti.</td>
            <td></td>
        </tr>
        <tr>
            <td>2) Hlasování o změně Stanov SVJ:</td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  a) zvýšení limitu pro uzavírání smluv ve věcech předmětu činnosti SVJ (Čl. VII bod 8b Stanov)</td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  b) změna podmínek usnášeníschopnosti Shromáždění (Čl. VI bod 8 Stanov).</td>
            <td></td>
        </tr>
        <tr>
            <td>3) Hlasování o způsobu rozúčtování cen služeb a výši záloh na služby - výtahy.</td>
            <td><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b3, "Rozůčtování nákladů za výtahy") %></td>
        </tr>
        <tr>
            <td>4) Projednání hospodaření, hlasování o zásadách hospodaření a hlasování o schválení účetní závěrky SVJ za rok 2010.</td>
            <td><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b4, "Účetní uzávěrka za rok 2010") %></td>
        </tr>
        <tr>
            <td>5) Hlasování o nutnosti rekonstrukcí, včetně stanovení podrobností jejich zajištění a investic s nimi spojených:</td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  a) izolace sklepů v bloku B,</td>
            <td><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b5, "Posudek oprav k bodům 5a) 5b) 5c)") %></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  b) úprava vjezdu do garáží,</td>
            <td><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b5, "Posudek oprav k bodům 5a) 5b) 5c)") %></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  c) vstupní dveře v jednotlivých vchodech,</td>
            <td>
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b5, "Posudek oprav k bodům 5a) 5b) 5c)") %> , &nbsp; 
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b5c_1, "Rozpočet") %> , &nbsp; 
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b5c_2, "Krycí list") %> 
            </td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  d) podbití střechy a dokončení fasády A3 a A4.</td>
            <td>
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b5d_1, "Podbití střechy") %> , &nbsp; 
                <img src="img/icons/excel.png"/> <%= linkDownfile(DownFile.Schuze_b5d_2, "Cenová kalkulace") %>
            </td>
        </tr>
        <tr>
            <td>6) Hlasování o nutnosti stavebních úprav, včetně stanovení podrobností jejich zajištění a investic s nimi spojených:</td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  a) zastřešení vchodů v bloku A,</td>
            <td><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b6a, "Zastřešení vchodu") %></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  b) úklidová místnost A3,</td>
            <td><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b6b, "Úklidová místnost") %></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  c) elektroinstalace v garážích (okruhy),</td>
            <td><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b6c, "Nabídka na světelné okruhy v garážích") %></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  d) přesunutí UPS do jedné místnosti,</td>
            <td></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  e) zabezpečení společných prostor (kamery, karty, vstup do elektrorozvoden atd.),</td>
            <td>
                <img src="img/icons/excel.png"/> <%= linkDownfile(DownFile.Schuze_b6e_1, "Nabídka na přístupový systém") %> ,  &nbsp;
                <img src="img/icons/excel.png"/> <%= linkDownfile(DownFile.Schuze_b6e_2, "Nabídka na kamerový systém") %>
            </td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  f) terénní úpravy,</td>
            <td>
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b6f_2, "Terenní úpravy") %> ,  &nbsp;
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b6f_1, "Nabídka na terenní úpravy") %>
            </td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  g) schody k tramvajové zastávce „Novolíšeňská“,</td>
            <td><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b6g, "Schodiště novolíšeňská") %></td>
        </tr>
        <tr>
            <td>&nbsp; &nbsp;  h) opatření proti hnízdění holubů na střeše domu.</td>
            <td>
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b6h_1, "Opatření proti holubům") %> ,  &nbsp; 
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b6h_2, "Nabídka opatření proti holubům") %>
            </td>
        </tr>
        <tr>
            <td>7) Hlasování o způsobu zajištění údržby komunikací v zimním období.</td>
            <td></td>
        </tr>
        <tr>
            <td>8) Hlasování o odměně členů výboru SVJ.</td>
            <td></td>
        </tr>
        <tr>
            <td>9) Návrhy kandidátů do výboru SVJ.</td>
            <td></td>
        </tr>
        <tr>
            <td>10) Doplňující volby členů výboru SVJ.</td>
            <td></td>
        </tr>
        <tr>
            <td>11) Seznámení členů s právními kroky SVJ vůči spol. Na Panence, s. r. o., v likvidaci.</td>
            <td></td>
        </tr>
        <tr>
            <td>12) Seznámení členů s právním a faktickým stavem veřejného osvětlení a okolních pozemků.</td>
            <td>
                <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze_b12_1, "Katastrální mapa") %>, &nbsp; 
                <img src="img/icons/pdf.gif"/><%= linkDownfile(DownFile.Schuze_b12_2, "Katastrální mapa + ortofoto") %>
            </td>
        </tr>
        <tr>
            <td>13) Diskuze.</td>
            <td></td>
        </tr>
    </tbody>
  </table>

<%
    }
    if ("z".equals(type)) {
%>
<h3>Schůze SVJ dne 11.6.2012</h3>
<p><i>Zde jsou budou zveřejněny a postupně doplňovány podrobnosti k chystané schůzi SVJ. <br/>
</i></p>
<br/>
      <ul>
        <li><a href="#Misto_konani">Místo konání</a></li>
        <li><a href="#Casovy_harmonogram">Časový harmonogram</a></li>
        <li><%= linkDownfile(DownFile.Schuze2012_pozvanka, "Pozvánka") %></li>
        <li><a href="#Plna_moc">Plná moc</a></li>        
        <li><a href="#Program">Klíčové body programu</a></li>
        <br/>
        <li><%= linkDownfile(DownFile.Schuze2012_zapis, "Výsledek schůze - zápis") %></li>
      </ul>

    <br/>
    <hr/>
    <br/>
    
<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň.
<br/><br/>

<a id="Casovy_harmonogram" name="Casovy_harmonogram"></a>
<h4>Časový harmonogram:</h4>
15:30 - 17:00  Registrace<br/>
17:00 - 21:45  Schůze<br/>
<br/><br/>

<a id="Plna_moc" name="Plna_moce"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic ohlasovat. <br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/>
Formulář plné moci je <%= linkDownfile(DownFile.Schuze2012_plnaMoc, "zde") %>.<p>
<br/>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - vystaví plnou moc</li></ul>
<li>byt je ve společném jmění manželů
    <ul>
        <li>na schůzi stačí jeden z manželů, nepotřebuje plnou moc druhého</li>
        <li>na schůzi se nemůže dostavit ani jeden - stačí plna moc jednoho z manželů</li>
    </ul> 
</li>
<li>byt je ve spoluvlastnictví
    <ul>
        <li>nutné zůčastnění všech majitelů (každý spolumajitel má pouze hlas odpovídající jeho poměrné části bytu)</li>
        <li>na schůzi jde pouze jeden majitel - nutná plná moc zbývajících spoluvlastníků</li>
        <li>na schůzi se nemůže dostavit ani jeden - nutná plná moc všech</li>
    </ul>
</li>
</ul>
<br/><br/>
<td>
<iframe width="430" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>
<a id="Program" name="Program"></a>
<h4>Klíčové body programu:</h4>
<ul>
<li>Hlasování o změně Stanov SVJ vzhledem k realizaci investic, které vyžaduje legislativa České republiky. Návrh usnesení:
<ul>
    <li><i>"Shromáždění SVJ pověřuje výbor jako výkonný orgán SVJ zajišťováním plnění právních povinností, které pro SVJ vyplývají z právního řádu ČR a souhlasí se všemi právními úkony, které budou v zájmu dosažení řádného a včasného plnění těchto povinností nezbytně třeba.“</i></li>
</ul>
</li>
    
<li>Výroční zpráva výboru o správě domu a pozemků a o dalších činnostech SVJ:
<ul>
    <li>"Dědictví minulosti"</li>
    <li>Vztahy s dodavateli</li>
    <li>Bezpečnostní situace domu</li>
    <li>Provozní a ostatní záležistosti</li>
</ul>
</li>
<li><%= linkDownfile(DownFile.Zprava_KK_2011, "Zpráva kontrolní komise za rok 2011") %></li>
<li><%= linkDownfile(DownFile.UcetniUzaverka_2011, "Schválení účetní závěrky SVJ za rok 2011") %></li>
<li>Projednání problematiky bytových měřičů tepla a vodoměrů (<%= linkDownfile(DownFile.PravniRozborMericu,  "legislativní rámec") %>)</li>
<li>Hlasování o změně příspěvků do fondu oprav z 5 Kč/m2 na 15 Kč/m2</li>

<li>Projednání bezpečnostní situace domu:
<ul>
  <li> Shrnutí provedených opatření</li>
  <li>Komplexní zabezpečení celého domu – Kamerový systém</li>
</ul>
<li>Diskuze:
<ul>
    <li>Úpravy dotýkající se stavebního zákona – potřebné procento pro schválení</li>
    <li><%= linkDownfile(DownFile.Uzavreni_terasy_C421, "Zasklení balkonu (vlastník bytu ve vchodu C4)") %>)</li>
    <li>Realizace investičních akcí v roce 2012</li>
    <li>Zvýšení nákladů na energie</li> 
</ul>
</ul>


<br/>
<%
    }
    if ("x".equals(type)) {
%>
<h3>Mimořádná schůze SVJ dne 20.3.2013</h3>
<p><i>Zde jsou zveřejněny podrobnosti k chystané mimorádné schůzi SVJ. 
Pozvánku můžete stáhnou <%= linkDownfile(DownFile.MimoradneSchuze2013_pozvanka, "zde") %>.<br/><br/>
Zápis se schůze je dostupný <%= linkDownfile(DownFile.MimoradneSchuze2013_zapis, "zde") %>.<br/><br/>
</i></p>
<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň.
<br/><br/>

<a id="Casovy_harmonogram" name="Casovy_harmonogram"></a>
<h4>Časový harmonogram:</h4>
16:00 - 17:30  Registrace<br/>
17:30 - 21:45  Schůze<br/>
<br/><br/>

<a id="Plna_moc" name="Plna_moce"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic ohlasovat. <br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/>
Formulář plné moci je <%= linkDownfile(DownFile.MimoradneSchuze2013_plnaMoc, "zde") %><p>.
<br/>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - vystaví plnou moc</li></ul>
<li>byt je ve společném jmění manželů
    <ul>
        <li>na schůzi stačí jeden z manželů, nepotřebuje plnou moc druhého</li>
        <li>na schůzi se nemůže dostavit ani jeden - stačí plna moc jednoho z manželů</li>
    </ul> 
</li>
<li>byt je ve spoluvlastnictví
    <ul>
        <li>nutné zůčastnění všech majitelů (každý spolumajitel má pouze hlas odpovídající jeho poměrné části bytu)</li>
        <li>na schůzi jde pouze jeden majitel - nutná plná moc zbývajících spoluvlastníků</li>
        <li>na schůzi se nemůže dostavit ani jeden - nutná plná moc všech</li>
    </ul>
</li>
</ul>
<br/><br/>
<td>
<iframe width="430" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>
<a id="Program" name="Program"></a>
<h4>Body programu:</h4>
<ul>
<li>Kontrola usnášeníschopnosti.</li>
<li>Volba sčitatelů hlasů.</li>
<li>Volba zapisovatele.</li>
<li>Volba ověřovatelů zápisu.</li>
<li>Seznámení s okolnostmi ohledně trestního oznámení a odstoupení výboru SVJ Sedláčkova 2902.</li>
<li>Projednání rezignace členů Kontrolní komise SVJ.</li>
<li>Návrhy kandidátů do Kontrolní komise SVJ.</li>
<li>Doplňující volba členů Kontrolní komise SVJ.</li>
<li>Projednání rezignace členů Výboru SVJ.</li>
<li>Návrhy kandidátů do Výboru SVJ.</li>
<li>Doplňující volba členů Výboru SVJ.</li>
<li>Diskuze.</li>
</ul>

<%
    }
    if ("p".equals(type)) {
%>
<h3>Průkaz energetické náročnosti budovy (PENB)</h3>
<p>
Celá budova Sedláčkova 2902 má vypracovaný PENB známý jako <i>energetický průkaz</i> nebo také <i>energetický štítek</i>. 
</p>
<p>Tento štítek byl vypracován podle vyhlášky 148/2007 Sb.
Pokud by se vypracoval podle nové vyhlášky, která začíná platit v dubnu 2013, tak koeficient spotřeby energie by byl horší a vypracování nákladnější.
</p>
<br/>
Hodnocení budovy Sedláčkova 2902:
<ul>
<li>Koeficient <b>B</b> &nbsp; <i>(koeficient A mají pasivní domy)</i></li>
<li>Měrná vypočtená roční spotřeba energie <b>65,19 kWh/m2</b></li>
<li>Celková vypočtená roční dodaná energie <b>6694,68 GJ</b></li>
</ul>
<br/>
Informace k vypracovanému PENB:
<ul>
<li>platnost 10 let do 31.3.2023.</li>
<li>průkaz je na celou budovu, tzn. všech 12 vchodů dohromady</li>
<li>jedná se o <%= linkDownfile(DownFile.EnergetickyStitek, "několika stránkový dokument") %> + <%= linkDownfile(DownFile.EnergetickyStitek_grafika, "\"grafická nálepka\"") %></li>
<li>průkaz je vyžadován pokud byt prodáváte nebo pronajímáte</li>
</ul>
<br/>

<p>
Pokud někdo z vlastníků bude PENB chtít, tak mu je <a href="committee.html?t=c">zástupce</a> <b>zapůjčí</b> k okopírování.<br/> 
Pokud vlastník požaduje originál, tak mu bude u dodavatelské firmy, vyhotoven <b>za 150,- Kč bez DPH za kus</b>.
</p>
<%
    }
    if ("t".equals(type)) {
%>
<h3>Schůze SVJ dne 25.9.2013</h3>
<p><i>Zde jsou podrobnosti k chystané schůzi SVJ dne 25.9.2013 v 17:30 <br/>
</i></p>
<br/>
      <ul>
        <li><a href="#Misto_konani">Místo konání</a></li>
        <li><%= linkDownfile(DownFile.Schuze2013_pozvanka, "Pozvánka") %></li>
        <li><a href="#Program">Klíčové body programu</a></li>
        <li><a href="#Plna_moc">Informace k plné moci</a> a <%= linkDownfile(DownFile.Schuze2013_plnaMoc, "vlastní plná moc") %></li>        
        <br/>
        <li><%= linkDownfile(DownFile.Schuze2013_zapis, "Zápis ze schůze") %></li>
      </ul>
<br/>
<hr/>
<br/>

<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň ve středu 25.9.2013 v 17.30 hod.<br/>
Prezence bude probíhat od 16.00 hod.
<br/><br/><br/>

<a id="Plna_moc" name="Plna_moc"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic ohlasovat. <br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/>
Formulář plné moci je <%= linkDownfile(DownFile.Schuze2013_plnaMoc, "zde") %>.<p>
<br/>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - vystaví plnou moc</li></ul>
<li>byt je ve společném jmění manželů
    <ul>
        <li>na schůzi stačí jeden z manželů, nepotřebuje plnou moc druhého</li>
        <li>na schůzi se nemůže dostavit ani jeden - stačí plna moc jednoho z manželů</li>
    </ul> 
</li>
<li>byt je ve spoluvlastnictví
    <ul>
        <li>nutné zůčastnění všech majitelů (každý spolumajitel má pouze hlas odpovídající jeho poměrné části bytu)</li>
        <li>na schůzi jde pouze jeden majitel - nutná plná moc zbývajících spoluvlastníků</li>
        <li>na schůzi se nemůže dostavit ani jeden - nutná plná moc všech</li>
    </ul>
</li>
</ul>
<br/><br/>

</td>
<td>
<iframe width="430" height="310" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>

<a id="Program" name="Program"></a>
<h4>Klíčové body programu:</h4>
<ul>
<li>Projednání hospodaření, hlasování o zásadách hospodaření a hlasování o schválení <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.UcetniZaverka_2012, "účetní závěrky SVJ za rok 2012") %>.</li>
<li>Projednání způsobu a termínů úhrad záloh na služby (možnost plateb SIPO, termíny).</li>
<li>Projednání možnosti optimalizace nákladů na provoz UPS.</li>
<li>Seznámení s výsledky požární kontroly domu, projednání návrhů na řešení nedostatků.</li>
<li>Projednání bezpečnostní situace domu.</li>
<li>Informace o postupu SVJ v případě odstěhování členů a poškození společného majetku.</li>
<li>Projednání návrhů na realizaci předpokládaných investic:
<ul>
<li>Výtahy a zlepšení jejich technického stavu.</li>
<li>Financování nutných záležitostí, vyžadovaných legislativou (např. protipožární opatření) a řešení případných havarijních stavů.</li>
<li>Odstranění vlhkosti ve sklepech II fáze - Zateplení sklepních prostor B4, C4 - 
   <img src="img/icons/ppt.gif"/> <%= linkDownfile(DownFile.Schuze2013_zatepleniFasadaB4C4_prezentace, "prezentace") %> a
   <img src="img/icons/zip.png"/> <%= linkDownfile(DownFile.Schuze2013_zatepleniFasadaB4C4_nabidka, "nabídky") %>.
</li>
<li><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2013_vysadbaDrevin, "Výsadba okrasných dřevin v okolí domu") %> &nbsp;-
    <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2013_vysadbaDrevin_CN_Skoupy, "nabídka Skoupý") %>, 
    <img src="img/icons/jpg.png"/> <%= linkDownfile(DownFile.Schuze2013_vysadbaDrevin_CN_Kaisler, "nabídka Kaisler") %>
</li>
<li>Klece v prostoru odpadkových kontejnerů.</li>
<li>Schody k tramvajové zastávce Novolíšeňská.</li>
</ul>
<li>Projednání problematiky veřejného osvětlení a okolních pozemků.</li>
<li><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2013_zpravaKK, "Zpráva kontrolní komise") %>.</li>
<li>Návrhy kandidátů a doplňující volba členů Výboru SVJ (za vchod B1).</li>
<li>Projednání 3x žádosti majitelů bytů v A3 o zasklení balkonu/lodžie. 
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2013_uzavreniLodgieA371, "A3.7.1") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2013_uzavreniLodgieA372, "A3.7.2") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2013_uzavreniLodgieA333, "A3.3.3") %>
</li>
<li>Diskuze:
<ul>
<li><img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2013_vozakNavrhHlasovani, "Návrhy p. Vozáka na změny pravidel fungovani SVJ") %></li>
<li><img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2013_masarikHlucnostChodby, "Podmět p. Masaříka s řešením hluku na chodbách v přízemí") %></li>
<li>Podmět p. Henčla k odstanění grafiti B2,C4</li>
</ul>
</li>
</ul>
<br/>
Kompletní program schůze je v pozvánce, kterou si můžete stáhnout <%= linkDownfile(DownFile.Schuze2013_pozvanka, "zde") %>.<br/>



<br/><br/>

<%
    }
    if ("f".equals(type)) {
%>
<h3>Schůze SVJ dne 25.6.2014</h3>
<p><i>Zde jsou podrobnosti k chystané schůzi SVJ dne 25.6.2014 v 17:00 <br/>
</i></p>
<br/>
      <ul>
        <li><a href="#Misto_konani">Místo konání</a></li>
        <li><%= linkDownfile(DownFile.Schuze2014_pozvanka, "Pozvánka") %></li>
        <li><a href="#Program">Klíčové body programu</a></li>
        <li><a href="#Plna_moc">Informace k plné moci</a> a <%= linkDownfile(DownFile.Schuze2014_plnaMoc, "vlastní plná moc") %></li> 
        <br/>
        <li><%= linkDownfile(DownFile.Schuze2014_zapis, "Zápis ze schůze") %></li>       
      </ul>
<br/>
<hr/>
<br/>

<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň <b>ve středu 25.6.2014 v 17.00 hod.</b><br/>
Prezence bude probíhat <b>od 15.30 hod.</b><br/>
V rámci prezence budou členové SVJ <b>aktualizovat</b> do připravených archů údaje, potřebné pro správu domu (kontakty, a další skutečnosti rozhodné pro rozúčtování služeb).
<br/><br/><br/>

<a id="Plna_moc" name="Plna_moc"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic ohlasovat. <br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/>
Formulář plné moci je <%= linkDownfile(DownFile.Schuze2014_plnaMoc, "zde") %>.<p>
<br/>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - vystaví plnou moc</li></ul>
<li>byt je ve společném jmění manželů
    <ul>
        <li>na schůzi stačí jeden z manželů, nepotřebuje plnou moc druhého</li>
        <li>na schůzi se nemůže dostavit ani jeden - stačí plna moc jednoho z manželů</li>
    </ul> 
</li>
<li>byt je ve spoluvlastnictví
    <ul>
        <li>nutné zůčastnění všech majitelů (každý spolumajitel má pouze hlas odpovídající jeho poměrné části bytu)</li>
        <li>na schůzi jde pouze jeden majitel - nutná plná moc zbývajících spoluvlastníků</li>
        <li>na schůzi se nemůže dostavit ani jeden - nutná plná moc všech</li>
    </ul>
</li>
</ul>
<br/><br/>

</td>
<td>
<iframe width="430" height="310" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>

<a id="Program" name="Program"></a>
<h4>Klíčové body programu:</h4>
<ul>
<li>Projednání hospodaření, hlasování o zásadách hospodaření a hlasování o schválení <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.UcetniZaverka_2012, "účetní závěrky SVJ za rok 2012") %>.</li>
<li>Projednání hospodaření, hlasování o zásadách hospodaření a hlasování o schválení <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.UcetniZaverka_2013, "účetní závěrky SVJ za rok 2013") %>.</li>
<li><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_zpravaKK, "Zpráva kontrolní komise") %>.</li>
<li>Informace o uzavření smlouvy o reklamě s Českou pojišťovnou, hlasování o schválení způsobu zaúčtování příjmu z této smlouvy.</li>
<li>Povinnosti členů SVJ ve vztahu ke správě domu – <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_vybrannePovinnostiClenu, "informace o vybraných problémech") %>.</li>
<li>Projednání změny způsobu stanovení výše záloh na služby hrazených členy SVJ a hlasování o ní.</li>
<li>Informace o změnách v legislativě (nový Občanský zákoník) a nutnosti změn ve Stanovách SVJ.</li>
<li>Projednání bezpečnostní situace domu, hlasování o schválení změn v zajištění bezpečnosti.</li>
<li>Seznámení s výsledky požární kontroly domu, projednání návrhů na řešení nedostatků <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_pozarniKontrolaVysledek, "Požární kontrola") %>.</li>
<li>Informace o postupu SVJ v případě odstěhování členů a <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_poskozenaChodba, "poškození společného majetku") %>.</li>
<li>Návrhy kandidátů a doplňující volba členů Výboru SVJ (za vchody B1, B4).</li>
<li>Výtahy
<ul>
<li>Seznámení s technickým stavem výtahů.</li>
<li>Hlasování o schválení navýšení fondu oprav na odstranění nevyhovujícího technického stavu výtahů.</li>
</ul>
</li>
<li>Projednání dalších návrhů na realizaci investic, hlasování o jejich schválení:
<ul>
<li>Optimalizace nákladů na provoz UPS.</li>
<li>Výsadba okrasných dřevin v okolí domu.
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_VysadbaSituace, "Situace") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_VysadbaVolneRostouciPloty, "Volně rostoucí ploty") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_VysadbaStrihanePloty, "Stříhané ploty") %>.
</li>
<li>Klece v prostoru odpadkových kontejnerů 
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_kleceVizualizaceA, "Vizualizace a") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_kleceVizualizaceB, "Vizualizace b") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_kleceMaterial, "Material výplně") %>.
</li>
<li>Oprava dlažby ve společných prostorách.</li>
<li>Výmalba společných prostor.</li>
</ul>
</li>
<li>Informace o postupech při umisťování zařízení na fasádu domu nebo na příslušenství k bytové jednotce a při stavebních úpravách v bytových jednotkách.</li>
<li>Hlasování o schválení žádosti majitelů bytů o zasklení balkonu/lodžie.
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2013_uzavreniLodgieA371, "A3.7.1") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2013_uzavreniLodgieA372, "A3.7.2") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2013_uzavreniLodgieA333, "A3.3.3") %>,
    <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2014_pristresekA412, "A4.1.2") %>
</li>

<li>Diskuze</li>
</ul>

<br/>
Kompletní program schůze je v pozvánce, kterou si můžete stáhnout <%= linkDownfile(DownFile.Schuze2014_pozvanka, "zde") %>.<br/>



<br/><br/>


<%  
    }
    if ("j".equals(type)) {
%>
<h3>Schůze SVJ dne 2.6.2015</h3>
<p><i>Zde jsou podrobnosti k chystané schůzi SVJ dne 2.6.2014 v 17:00 <br/>
</i></p>
<br/>
      <ul>
        <li><a href="#Misto_konani">Místo konání</a></li>
        <li><%= linkDownfile(DownFile.Schuze2015_pozvanka, "Pozvánka") %></li>
        <li><a href="#Plna_moc">Informace k plné moci</a></li> 
        <li><a href="#Program">Klíčové body programu</a></li>
        <br/>
        <li><%= linkDownfile(DownFile.Schuze2015_zapis, "Zápis ze schůze") %></li> 
        <li><a href="documents.html?t=r">Schválené stanovy</a></li>
        <li><%= linkDownfile(DownFile.Schuze2015_notarsky_zapis, "Notářský zápis ze schůze") %></li>
      </ul>
<br/>
<hr/>
<br/>

<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň <b>v úterý 2.6.2015 v 17.00 hod.</b><br/>
Prezence bude probíhat <b>od 15.30 hod.</b><br/>
<br/><br/><br/>

<a id="Plna_moc" name="Plna_moc"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic odhlasovat. <br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/><br/>
<b><i>Pozor, letos máme dva druhy plných mocí</i></b>.
<ul>
	<li>plná moc pro byt s jedním majitelem/zmocnitelem <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2015_plnaMocDoc, "doc") %>, 
		<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_plnaMoc, "pdf") %></li>
	<li>zmocnění pro byt ve společném jmění manželů nebo spoluvlastnictví <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2015_zmocneniSJMDoc, "doc") %>, 
		<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_plnaMoc_spoluvlastniku, "pdf") %>.<br/>Formulář je určen pro jednoho až tři spoluvlastníky nebo dva manželé.</li>
</ul>
.<p>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - potřebujete plnou moc, <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Plna_Moc, "ukázka majitelky Dvořákové, která udějuje plnou moc panu Slavíkovi") %></li></ul>
</li>
<br/>
<li>byt je ve společném jmění manželů - je vždy nutné zmocnění společného zástupce
    <ul>
    	<li>na schůzi příjdou oba manželé, hlasovat může ale jen jeden, tzn jeden dá zmocnění druhému, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka manželů Dvořákových, kdy hlasovat bude paní Dvořáková") %></li>
        <li>na schůzi příjde jeden z manželů ale potřebuje zmocnění druhého, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka manželů Dvořákových, kdy na schůzi jde pouze paní Dvořáková") %></li></li>
        <li>na schůzi se nemůže dostavit ani jeden. V takovém případě je potřeba jak zmocnění tak i plné moci. <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka jak pan Dvořák udělí zmocnění své manželce") %> a 
        <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Plna_Moc, "ukázka jak paní Dvořáková udělí plnou moc panu Slavíkovi") %></li>
    </ul> 
</li>
<br/>
<li>byt je ve spoluvlastnictví - je vždy nutné zmocnění společného zástupce
    <ul>
        <li>na schůzi příjdou všichni spoluvlastníci, hlasovat může ale jen jeden, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka spoluvlastníků Zralý, Jonáš a Moudrá, kdy hlasovat bude pan Jonáš") %></li>
        <li>na schůzi jde pouze jeden spolumajitel - nutná zmocnění zbývajících spoluvlastníků, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Zmocneni, "ukázka spoluvlastníků Zralý, Jonáš a Moudrá, kteří dají zmocnění panu Jonášovi") %></li>
        <li>na schůzi se nemůže dostavit ani jeden. Je nutné zmocnění i plné moci, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Zmocneni, "ukázka zmocnění spoluvlastníku") %> a 
        <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Plna_Moc, "ukázka udělení plné moci panu Moulíkovi") %>.</li>
    </ul>
</li>
</ul>
<br/><br/><br/>

</td>
<td>
<iframe width="430" height="310" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>

<a id="Program" name="Program"></a>
<h4>Klíčové body programu:</h4>
<ul>
<li>Výroční zpráva výboru a správce o správě domu a pozemků a o dalších činnostech SVJ za rok 2014</li>
<li>Projednání návrhu nového znění <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_navrhNovychStanov, "Stanov SVJ") %> a hlasování o schválení</li>
<li>Projednání hospodaření, hlasování o schválení <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.UcetniZaverka_2014, "účetní závěrky SVJ za rok 2014") %></li>
<li>Zpráva kontrolní komise</li>
<li>Návrhy kandidátů a doplňující volba členů Výboru SVJ (za vchody A1, A3, B2, B3, C1, C2, C3, C4)</li>
<li>Projednání aktuálního stavu výtahů, hlasování o dalším postupu</li>
<li>Diskuze</li>
</ul>

<br/>
Kompletní program schůze je v pozvánce, kterou si můžete stáhnout <%= linkDownfile(DownFile.Schuze2015_pozvanka, "zde") %>.<br/>

<br/><br/>

<%  
    }
    if ("k".equals(type)) {
%>
<h3>Schůze SVJ dne 9.6.2016</h3>
<p><i>Zde jsou podrobnosti k chystané schůzi SVJ dne 9.6.2016 v 16.30 <br/>
</i></p>
<br/>
    <ul>
        <li><a href="#Misto_konani">Místo konání</a></li>
        <li><%= linkDownfile(DownFile.Schuze2016_pozvanka, "Pozvánka") %></li>
        <li><a href="#Plna_moc">Informace k plné moci</a></li> 
        <li><a href="#Program">Klíčové body programu</a></li>
        <br/>
        <li><%= linkDownfile(DownFile.Schuze2016_zapis, "Zápis ze schůze") %></li> 
    </ul>
<br/>
<hr/>
<br/>

<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň <b>ve čvtvrtek 9.6.2016 v 16.30 hod.</b><br/>
Prezence bude probíhat <b>od 15.00 hod.</b><br/>
<br/><br/><br/>

<a id="Plna_moc" name="Plna_moc"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic odhlasovat.<br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/><br/>
<b><i>Máme zde dva druhy plných mocí.</i></b>.
<ul>
	<li>plná moc pro byt s jedním majitelem/zmocnitelem <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2016_plnaMocDoc, "doc") %>, 
		<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2016_plnaMoc, "pdf") %></li>
	<li>zmocnění pro byt ve společném jmění manželů nebo spoluvlastnictví <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2016_zmocneniSJMDoc, "doc") %>, 
		<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_plnaMoc_spoluvlastniku, "pdf") %>.<br/>Formulář je určen pro jednoho až tři spoluvlastníky nebo dva manželé. Tato plná moc je stejná jako loni, proto jsme ji letos do schránek nedistribuovali.</li>
</ul>
.<p>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - potřebujete plnou moc, <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Plna_Moc, "ukázka majitelky Dvořákové, která udějuje plnou moc panu Slavíkovi") %></li></ul>
</li>
<br/>
<li>byt je ve společném jmění manželů - je vždy nutné zmocnění společného zástupce
    <ul>
        <li>na schůzi příjdou oba manželé, hlasovat může ale jen jeden, tzn jeden dá zmocnění druhému, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka manželů Dvořákových, kdy hlasovat bude paní Dvořáková") %></li>
        <li>na schůzi příjde jeden z manželů ale potřebuje zmocnění druhého, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka manželů Dvořákových, kdy na schůzi jde pouze paní Dvořáková") %></li></li>
        <li>na schůzi se nemůže dostavit ani jeden. V takovém případě je potřeba jak zmocnění tak i plné moci. <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka jak pan Dvořák udělí zmocnění své manželce") %> a 
        <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Plna_Moc, "ukázka jak paní Dvořáková udělí plnou moc panu Slavíkovi") %></li>
    </ul> 
</li>
<br/>
<li>byt je ve spoluvlastnictví - je vždy nutné zmocnění společného zástupce
    <ul>
        <li>na schůzi příjdou všichni spoluvlastníci, hlasovat může ale jen jeden, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka spoluvlastníků Zralý, Jonáš a Moudrá, kdy hlasovat bude pan Jonáš") %></li>
        <li>na schůzi jde pouze jeden spolumajitel - nutná zmocnění zbývajících spoluvlastníků, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Zmocneni, "ukázka spoluvlastníků Zralý, Jonáš a Moudrá, kteří dají zmocnění panu Jonášovi") %></li>
        <li>na schůzi se nemůže dostavit ani jeden. Je nutné zmocnění i plné moci, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Zmocneni, "ukázka zmocnění spoluvlastníku") %> a 
        <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Plna_Moc, "ukázka udělení plné moci panu Moulíkovi") %>.</li>
    </ul>
</li>
</ul>
<br/><br/><br/>

</td>
<td>
<iframe width="430" height="310" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>

<a id="Program" name="Program"></a>
<h4>Klíčové body programu:</h4>
<ul>
<li>Výroční zpráva výboru a správce o správě domu a pozemků a o dalších činnostech SVJ za rok 2015</li>
<li>Projednání hospodaření, hlasování o schválení <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.UcetniZaverka_2015, "účetní závěrky SVJ za rok 2015") %> a o <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2016_rozpocet2017, "rozpočtu na rok 2017") %> </li>
<li>Výměna výtahů (účast zástupce vybraného dodavatele)</li>
<li>Prezentace a hlasování o doplnění rozvodů kabelové sítě o UPC (účast zástupce UPC) 
(<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2016_UPC_Specifikace_sluzeb, "specifikace služeb") %>, 
<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2016_UPC_Technologicke_schema, "technologické schéma") %>, 
<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2016_UPC_UR_zemni_trasa_privod, "zemní přívod") %>, 
<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2016_UPC_Poskytovane_sluzby, "poskytované služby") %>, 
<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2016_UPC_Souhlas_vlastnika, "souhlas vlastníka") %>) </li>
<li>Prezentace a hlasování o instalaci kamerového monitorovacího systému</li>
<li>Doplňující volba členů Výboru SVJ. <i>Pokud má někdo zájem o členství ve výboru, tak svou kandidaturu oznamte písemně kterému koliv členu výboru do 3.6.2016.</i></li>
<li>Diskuze</li>
</ul>

<br/>
Kompletní program schůze je v pozvánce, kterou si můžete stáhnout <%= linkDownfile(DownFile.Schuze2016_pozvanka, "zde") %>.<br/>

<br/><br/>

<%  
    }
    if ("i".equals(type)) {
%>
<h3>Shromáždění SVJ v úterý 6.6.2017</h3>
<p><i>Zde jsou podrobnosti k chystané schůzi SVJ která se bude konat v úterý 6.6.2017 v 16.30 v Židenicích<br/>
</i></p>
<br/>
    <ul>
        <li><a href="#Misto_konani">Místo konání</a></li>
        <li><%= linkDownfile(DownFile.Schuze2017_pozvanka, "Pozvánka") %></li>
        <li><a href="#Program">Klíčové body programu</a></li>
        <li><a href="#Plna_moc">Informace k plné moci</a></li>
        <br/>
        <li><%= linkDownfile(DownFile.Schuze2017_zapis, "Zápis ze schůze") %></li>
    </ul>
<br/>
<hr/>
<br/>

<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň <b>v úterý 6.6.2017 v 16.30 hod.</b><br/><br/>
<p>Prezence bude probíhat <b>od 15.00 hod.</b> Vzhledem k velkému počtu členů SVJ žádáme <b>všechny</b> aby se dostavili k prezenci včas.<br/> V rámci prezence budou členové SVJ <b>aktualizovat</b> do připravených archů ůdaje, potřebné pro správu domu (kontakty a další informace potřebné pro rozůčtování služeb).</p>
<br/><br/><br/>

<a id="Program" name="Program"></a>
<h4>Klíčové body programu:</h4>
<ul>
<li>Výroční zpráva výboru a správce o správě domu a pozemků a o dalších činnostech SVJ za rok 2016</li>
<li>Projednání hospodaření, hlasování o schválení<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.UcetniZaverka_2016, "účetní závěrky SVJ za rok 2016") %> a <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2017_rozpocet2018, "rozpočtu na rok 2018") %><br/><br/></li>
<li>Prezentace a hlasování o navrhovaných opravách a investicích:
	<ul>
		<li>Výmalba společných prostor</li>
		<li><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2017_kamerovySystemVytahy, "Doplnění kamerového systému ve výtazích") %></li>
		<li><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2017_elektronickeCtecky, "Instalace elektronických čteček ke vchodovým dveřím") %>
		<ul><li>na shromáždění bude k dispozici čtečka, můžete si vyzkoušet jestli Vaš čip/kartu detekuje</li></ul><br/>
		</li>
		<li>Instalace klecí v prostoru odpadkových kontejnerů<br/><br/></li>
	</ul>
</li>
<li>Doplňující volba členů Výboru SVJ.<i> Pokud má někdo zájem o členství ve výboru, tak svou kandidaturu oznamte písemně nebo emailem kterému koliv členu výboru.</i></li>
<li>Diskuze</li>
</ul>

<br/>
Kompletní program schůze je v pozvánce, kterou si můžete stáhnout <%= linkDownfile(DownFile.Schuze2017_pozvanka, "zde") %>.<br/>
<br/>
<br/>

</td>
<td>
<iframe width="430" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>

<a id="Plna_moc" name="Plna_moc"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic odhlasovat.<br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/><br/>
Máme dva druhy plných mocí:
<ul>
	<li>plná moc pro byt s jedním majitelem/zmocnitelem <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2017_plnaMocDoc, "doc") %>, 
		<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2017_plnaMoc, "pdf") %></li>
	<li>zmocnění pro byt ve společném jmění manželů nebo spoluvlastnictví <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2017_zmocneniSJMDoc, "doc") %>, 
		<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2017_zmocneniSJM, "pdf") %>.<br/>Formulář je určen pro jednoho až tři spoluvlastníky nebo dva manželé. Tato plná moc je stejná jako loni a předloni, proto jsme ji do schránek nedistribuovali.</li>
</ul>
.<p>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - potřebujete plnou moc, <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Plna_Moc, "ukázka majitelky Dvořákové, která udějuje plnou moc panu Slavíkovi") %></li></ul>
</li>
<br/>
<li>byt je ve společném jmění manželů - je vždy nutné zmocnění společného zástupce
    <ul>
        <li>na schůzi příjdou oba manželé, hlasovat může ale jen jeden, tzn jeden dá zmocnění druhému, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka manželů Dvořákových, kdy hlasovat bude paní Dvořáková") %></li>
        <li>na schůzi příjde jeden z manželů ale potřebuje zmocnění druhého, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka manželů Dvořákových, kdy na schůzi jde pouze paní Dvořáková") %></li></li>
        <li>na schůzi se nemůže dostavit ani jeden. V takovém případě je potřeba jak zmocnění tak i plné moci. <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka jak pan Dvořák udělí zmocnění své manželce") %> a 
        <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Plna_Moc, "ukázka jak paní Dvořáková udělí plnou moc panu Slavíkovi") %></li>
    </ul>
</li>
<br/>
<li>byt je ve spoluvlastnictví - je vždy nutné zmocnění společného zástupce
    <ul>
        <li>na schůzi příjdou všichni spoluvlastníci, hlasovat může ale jen jeden, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka spoluvlastníků Zralý, Jonáš a Moudrá, kdy hlasovat bude pan Jonáš") %></li>
        <li>na schůzi jde pouze jeden spolumajitel - nutná zmocnění zbývajících spoluvlastníků, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Zmocneni, "ukázka spoluvlastníků Zralý, Jonáš a Moudrá, kteří dají zmocnění panu Jonášovi") %></li>
        <li>na schůzi se nemůže dostavit ani jeden. Je nutné zmocnění i plné moci, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Zmocneni, "ukázka zmocnění spoluvlastníku") %> a 
        <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Plna_Moc, "ukázka udělení plné moci panu Moulíkovi") %>.</li>
    </ul>
</li>
</ul>
<br/><br/><br/>

<%  
    }
    if ("w".equals(type)) {
%>
<h3>Shromáždění SVJ v pondělí 4.6.2018</h3>
<p><i>Zde jsou podrobnosti k chystané schůzi SVJ která se bude konat v pondělí 4.6.2018 v 16.30 v Židenicích<br/>
</i></p>
<br/>
    <ul>
        <li><a href="#Misto_konani">Místo konání</a></li>
        <li><%= linkDownfile(DownFile.Schuze2018_pozvanka_plna_moc, "Pozvánka s plnou mocí") %></li>
        <li><a href="#Program">Klíčové body programu</a></li>
        <li><a href="#Plna_moc">Informace k plné moci</a></li>
        <br/>
        <li><%= linkDownfile(DownFile.Schuze2018_zapis, "Zápis ze schůze") %></li> 
    </ul>
<br/>
<hr/>
<br/>

<table>
<tr>
<td style="padding:0px">
<a id="Misto_konani" name="Misto_konani"></a>
<h4>Místo konání:</h4>
Dělnický dům na ulici Jamborova č. 65, Brno-Líšeň <b>v pondělí 4.6.2018 v 16.30 hod.</b><br/><br/>
<p>Prezence bude probíhat <b>od 15.00 hod.</b> Vzhledem k velkému počtu členů SVJ žádáme <b>všechny</b> aby se dostavili k prezenci včas.<br/> V rámci prezence budou členové SVJ <b>aktualizovat</b> do připravených archů ůdaje, potřebné pro správu domu (kontakty a další informace potřebné pro rozůčtování služeb).</p>
<br/><br/><br/>

<a id="Program" name="Program"></a>
<h4>Klíčové body programu:</h4>
<ul>
<li>Zpráva kontrolní komise</li>
<li>Výrocní zpráva výboru a správce o správe domu a pozemku a o dalších cinnostech SVJ, aktuální informace o probíhajících akcích</li>
<li>Projednání hospodaření, hlasování o schválení 
<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.UcetniZaverka_2016, "účetní závěrky SVJ za rok 2016") %> a 
<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2017_rozpocet2018, "rozpočtu na rok 2018") %><br/</li>
<li>Projednání hospodaření, hlasování o schválení 
<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.UcetniZaverka_2017, "účetní závěrky SVJ za rok 2017") %> a 
<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2018_rozpocet2019, "rozpočtu na rok 2019") %><br/></li>
<li>Prezentace a hlasování o navrhovaných opravách a investicích:
	<ul>
		<li>Výmalba společných prostor</li>
		<li><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2017_kamerovySystemVytahy, "Doplnění kamerového systému ve výtazích") %></li>
		<li><img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2017_elektronickeCtecky, "Instalace elektronických čteček ke vchodovým dveřím") %></li>
		<li>Instalace klecí v prostoru odpadkových kontejnerů</li>
		<li>Výměna vchodových dveří a dveří v zádveří včetně zárubní<br/><br/></li>
	</ul>
</li>
<li>Prezentace hlasovacího SW pro hlasování Per rollam</li>
<li>Doplňující volba členů Výboru SVJ.</li>
<li>Volba členů kontrolní komise</li>	
<li>Diskuze</li>
</ul>

<br/>
Kompletní program schůze je v pozvánce, kterou si můžete stáhnout <%= linkDownfile(DownFile.Schuze2017_pozvanka, "zde") %>.<br/>
<br/>
<br/>

</td>
<td>
<iframe width="430" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A&amp;output=embed"></iframe><br />
<small><a href="http://maps.google.cz/maps?q=jamborova+%C4%8D.+65,+Brno-L%C3%AD%C5%A1e%C5%88&amp;hl=cs&amp;ie=UTF8&amp;sll=49.196459,16.645029&amp;sspn=0.06035,0.156212&amp;vpsrc=6&amp;brcurrent=5,0,0&amp;hnear=Jamborova+3323%2F65,+615+00+%C5%BDidenice&amp;t=m&amp;hq=&amp;source=embed&amp;ll=49.198616,16.652699&amp;spn=0.012619,0.018067&amp;z=15&amp;iwloc=A"  target="maps" style="color:#0000FF;text-align:left">Zvětšit mapu</a></small>
</td>
</tr>
</table>

<a id="Plna_moc" name="Plna_moc"></a>
<h4>Plná moc:</h4>
<p>Aby schůze byla usnášenischopná je nutná účast nadpoloviční většiny vlastníků. V opačném připadě nemůžeme nic odhlasovat.<br/>
Proto pokud se nemůžete schůze zůčastnit můžete použít plnou moc a pověřit někoho jiného aby Vás zastupoval, třeba souseda nebo zástupce Vašeho vchodu.<br/><br/>
Máme dva druhy plných mocí:
<ul>
	<li>plná moc pro byt s jedním majitelem/zmocnitelem <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2018_plnaMocDoc, "doc") %>, 
		<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2018_plnaMoc, "pdf") %></li>
	<li>zmocnění pro byt ve společném jmění manželů nebo spoluvlastnictví <img src="img/icons/doc.gif"/> <%= linkDownfile(DownFile.Schuze2018_zmocneniSJMDoc, "doc") %>, 
		<img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2018_zmocneniSJM, "pdf") %>.<br/>Formulář je určen pro jednoho až tři spoluvlastníky nebo dva manželé. Tato plná moc je stejná jako loni a předloni, proto jsme ji do schránek nedistribuovali.</li>
</ul>
.<p>
Kdy je potřeba plná moc:
<ul>
<li>byt má jednoho majitele</li>
    <ul><li>na schůzi se nemůže dostavit - potřebujete plnou moc, <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Plna_Moc, "ukázka majitelky Dvořákové, která udějuje plnou moc panu Slavíkovi") %></li></ul>
</li>
<br/>
<li>byt je ve společném jmění manželů - je vždy nutné zmocnění společného zástupce
    <ul>
        <li>na schůzi příjdou oba manželé, hlasovat může ale jen jeden, tzn jeden dá zmocnění druhému, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka manželů Dvořákových, kdy hlasovat bude paní Dvořáková") %></li>
        <li>na schůzi příjde jeden z manželů ale potřebuje zmocnění druhého, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka manželů Dvořákových, kdy na schůzi jde pouze paní Dvořáková") %></li></li>
        <li>na schůzi se nemůže dostavit ani jeden. V takovém případě je potřeba jak zmocnění tak i plné moci. <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka jak pan Dvořák udělí zmocnění své manželce") %> a 
        <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Plna_Moc, "ukázka jak paní Dvořáková udělí plnou moc panu Slavíkovi") %></li>
    </ul>
</li>
<br/>
<li>byt je ve spoluvlastnictví - je vždy nutné zmocnění společného zástupce
    <ul>
        <li>na schůzi příjdou všichni spoluvlastníci, hlasovat může ale jen jeden, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_SJM_Zmocneni, "ukázka spoluvlastníků Zralý, Jonáš a Moudrá, kdy hlasovat bude pan Jonáš") %></li>
        <li>na schůzi jde pouze jeden spolumajitel - nutná zmocnění zbývajících spoluvlastníků, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Zmocneni, "ukázka spoluvlastníků Zralý, Jonáš a Moudrá, kteří dají zmocnění panu Jonášovi") %></li>
        <li>na schůzi se nemůže dostavit ani jeden. Je nutné zmocnění i plné moci, viz <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Zmocneni, "ukázka zmocnění spoluvlastníku") %> a 
        <img src="img/icons/pdf.gif"/> <%= linkDownfile(DownFile.Schuze2015_Ukazka_Spoluvlastnici_Plna_Moc, "ukázka udělení plné moci panu Moulíkovi") %>.</li>
    </ul>
</li>
</ul>
<br/><br/><br/>

<%
    }
%>

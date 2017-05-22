<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>
<%@ page import="com.sedlackova2902.svj.controller.DownFile" %>

<%
	String type = (String) request.getAttribute("type");
	if ("c".equals(type)) {
%>
<h3>Kontakty</h3>
<p>Seznam rychlých telefoních kontaktu v případě havarijní poruchy</p><br/>
<table class="oam_table">
<thead>
    <tr>
        <th>Typ problému</th>
        <th>Firma</th>
		<th>Nonstop</th>
        <th>Tel. kontakt</th>
    </tr>
</thead>
<tr>
    <td>Výtahy</td>
    <td><a href="http://www.schindler.com/cz/internet/cs/servis.html" target="contractor">Schindler CZ a.s.</a></td>
	<td>Ano</td>
    <td>+420 844 844 808</td>    
</tr>
<tr>
    <td>Elektro instalace</td>
    <td>Valerio Bevilacqua</td>
    <td>Ne</ne>
    <td>+420 604 163 186</td>
</tr>
<tr>
    <td>Kanalizace (čištění ucpaných odpadů)</td>
    <td><a href="http://www.sebak.cz/hlaseni-havarii/" target="contractor">Sebak</a></td>
	<td>Ano</td>
    <td>+420 545 222 278,  +420 602 591 057</td>
</tr>
<tr>
    <td>Topení nebo Voda</td>
    <td>Ager - p.Kejř Oldřich</td>
	<td>Ne</td>
    <td>+420 533 338 654, +420 728 056 913</td>
</tr>
<tr>
    <td>Topení</td>
    <td><a href="http://www.teplarny.cz/stranka/116/zajistime-pro-vas/" target="contractor">TB-služby</a></td>
	<td>Ano</td>
    <td>+420 545 162 206, +420 603 291 699, +420 605 209 744</td>
</tr>
<tr>
    <td>Voda</td>
    <td>Anýž</td>
	<td>?</td>
    <td>+420 549 273 656</td>
</tr>
<tr>
    <td>Zámečnictví</td>
    <td><a href="http://www.zamecnik-sos.cz/" target="contractor">Zámečník S.O.S</a></td>
	<td>Ano</td>
    <td>+420 774 163 381</td>
</tr>
<tr>
	<td>Vodoinstalace, Kanalizace (havarie / opravy)</td>
	<td><a href="http://www.nonstop-opravy.cz/" target="contractor">Havarijní a poruchová služba</a></td>
	<td>Ano</td>
    <td>+420 607 278 972</td>
</tr>
</table>
<br/>
<p>Pokud daný kontakt použijete dejte pak prosím vědět svému zástupci, abychom měli zpětnou vazbu.<br/>
Na základě těchto zkušeností pak vedeme s dodavateli příslušná jednání.</p>


<%  }
	if ("l".equals(type)) { %>
  
<h3>Seznam současných dodavatelů:</h3>
<p>Zde je seznam smluvních dodavatelů, kteří nám poskytuji svoje služby a servis. 
</p>
<br/>
<table class="oam_table">
<thead>
	<tr>
		<th>Typ</th>
		<th>Dodavatel</th>
		<th>Detail</th>
	</tr>
</thead>
	<tr>
		<td>Elektřina</td>
		<td><a href="http://www.eeikasafranek.cz" target="contractor">EEIKA ŠAFRÁNEK s.r.o.</a></td>
		<td></td>
	</tr>
	<tr>
		<td>Teplo</td>
		<td><a href="http://www.teplarny.cz" target="contractor">Teplárny Brno, a.s.</a></td>
		<td></td>
	</tr>
	<tr>
		<td>Voda</td>
		<td><a href="http://www.bvk.cz" target="contractor">Brněnské vodárny a kanalizace, a.s.</a></td>
		<td></td>
	</tr>
	<tr>
		<td>Výtahy</td>
		<td><a href="http://www.schindler-cz.cz/prg-index/prg-ser.htm" target="contractor">Schindler CZ a.s.</a></td>
		<td></td>
	</tr>
	<tr>
		<td>Úklid</td>
		<td><a href="http://homepartner.cz" target="contractor">Home Partner s.r.o.</a></td>
		<td></td>
	</tr>
	<tr>
		<td>Správce</td>
		<td>BERGA S.N. s.r.o.</td>
		<td></td>
	</tr>
	<tr>
		<td>Pojištění domu</td>
		<td><a href="http://www.ceskapojistovna.cz" target="contractor">Česká pojištovna</a></td>
		<td></td>
	</tr>
</table>
<br/><br/>
<h3>Internet a televize:</h3>
<p>v bytě máte dvě internetové přípojky <a href="http://o2.adsl.cz" target="contractor">O2</a> a <a href="http://www.poda.cz" target="contractor">Poda</a> a od konce roku 2016, ti kteří měli zájem, také přípojky od <a href="http://www.netbox.cz" target="contractor">NetBoxu</a> a <a href="https://www.upc.cz" target="contractor">UPC</a>.<br/>
Stačí si vybrat daného poskytovale, uzavřít s ním smlouvu. Následně pak Váš kabel zacvaknou do switche v elektrorozvodně našeho domu a internet/tv máte funkční.</p>
<br/>
<table class="oam_table">
<thead>
	<tr>
		<th>Dodavatel</th>
		<th>Tel. kontakt</th>
		<th></th>
	</tr>
</thead>
	<tr>
		<td><a href="http://o2.adsl.cz" target="contractor">O2</a></td>
		<td>+420 800 269 269</td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.poda.cz" target="contractor">Poda</a></td>
		<td>+420 730 430 017</td>
		<td></td>
	</tr>
	<tr>
		<td><a href="http://www.netbox.cz" target="contractor">NetBox</a></td>
		<td>+420 734 360 863</td>
		<td></td>
	</tr>
	<tr>
		<td><a href="https://www.upc.cz" target="contractor">UPC</a></td>
		<td>+420 725 815 814</td>
		<td></td>
	</tr>
</table><br/>
<p>Pro rozvod internetu po bytě je ideální si koupit/pronajmout nějaký wi-fi router, který umístíte do rozvodné krabice nad dveřmi bytu. Do krabice jsou dovedeny UTP kabely z pokojů a přípojky od operátorů. Propojením přes router pak máte internet/televizi v každém pokoji a wi-fi signál v celém bytě.
</p>
<%	}
	if ("p".equals(type)) {
%>
<h3>Měsíční zálohy:</h3>
<p>Z našich pravidelných mesíčních záloh, které platíme na účet <strong>2105697050/2700</strong> jsou následně dodavatelům prováděny platby.<br/>
Výše měsíčních částek se odvíjí od stanovených pravidelných záloh. V některých případech se navíc provádí splácení dluhu podle dohodnutého splátkového kalendáře.</p>
<br/>
<%--
<table class="oam_table">
<thead>
	<tr>
		<th></th>
		<th colspan="3">Částka</th>
		<th></th>
	</tr>
	<tr>
		<th>Dodavatel</th>
		<th>Měsíční</th>
		<th>Roční</th>
		<th>Splátka dluhu</th>
		<th>Detail</th>
	</tr>
</thead>
	<tr>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
		<td></td>
	</tr>
</table>
<br/>
 --%>
Účetní závěrka za rok 2016:
    <a href="documents.html?f=<%= DownFile.UcetniZaverka_2016.getFileId() %>" title="<%= DownFile.Schuze_b4.getFileName() %>">zde</a><br/>
Účetní závěrka za rok 2015:
    <a href="documents.html?f=<%= DownFile.UcetniZaverka_2015.getFileId() %>" title="<%= DownFile.Schuze_b4.getFileName() %>">zde</a><br/>
Účetní závěrka za rok 2014:
    <a href="documents.html?f=<%= DownFile.UcetniZaverka_2014.getFileId() %>" title="<%= DownFile.Schuze_b4.getFileName() %>">zde</a><br/>
Účetní závěrka za rok 2013:
    <a href="documents.html?f=<%= DownFile.UcetniZaverka_2013.getFileId() %>" title="<%= DownFile.Schuze_b4.getFileName() %>">zde</a><br/>
Účetní závěrka za rok 2012:
    <a href="documents.html?f=<%= DownFile.UcetniZaverka_2012.getFileId() %>" title="<%= DownFile.Schuze_b4.getFileName() %>">zde</a><br/>
Účetní závěrka za rok 2011:
    <a href="documents.html?f=<%= DownFile.UcetniUzaverka_2011.getFileId() %>" title="<%= DownFile.Schuze_b4.getFileName() %>">zde</a><br/>
Účetní závěrka za rok 2010:
    <a href="documents.html?f=<%= DownFile.Schuze_b4.getFileId() %>" title="<%= DownFile.Schuze_b4.getFileName() %>">zde</a><br/>
<br/>
Vyúčtování spotřeby el. energie ve společných prostorách za druhé pololetí roku 2010: 
    <a href="documents.html?f=<%= DownFile.EEIKA_II_2010.getFileId() %>" title="<%= DownFile.EEIKA_II_2010.getFileName() %>">zde</a><br/>
<%	}
	if ("s".equals(type)) {
%>
<h3>Provoz výtahů</h3>
<p>Provoz a servis výtahů je zajištěn jejich dodavatelem, společností <a href="http://www.schindler-cz.cz/prg-index/prg-ser.htm" target="contractor">Schindler CZ a.s.</a>.
Servisní činnosti jsou prováděny na základě uzavřené „Servisní smlouvy č. HS 61065 E o poskytování prací a služeb“.</p><br/>
<p>Z uvedené smlouvy vyplývá povinnost dodavatele k nastoupení na opravu, a to následovně:</p>
<table border="0" style="width: 400px">
	<tr><td style="padding:5px"> - v pracovní dny</td><td style="padding:5px">do 3 hodin od nahlášení</td></tr>
    <tr><td style="padding:5px"> - o víkendech a svátcích</td><td style="padding:5px">do 3 hodin od nahlášení</td></tr>
    <tr><td style="padding:5px"> - vyproštění osob</td><td style="padding:5px">do 1 hodiny</td></tr>
</table>
<br/>
<p>Kontakty pro nahlášení poruchy: <b>+420 844 844 808</b><p><br/>
<p>Volejte, prosím, ihned při zjištění poruchy výtahu a nečekejte na to, že zavolá někdo jiný!!! Čím později se porucha nahlásí, tím později bude odstraněna.</p>
<p>V případě dotazů se, prosím, obraťte na <a href="committee.html">svého zástupce vchodu</a>.</p>
<br/>
<br/>
<h3>Havarijní servis Teplárny Brno a.s.</h3>
<p>Je uzavřená SoD s TB - služby, s.r.o., dceřinou společností Teplárny Brno na havarijní stavy ( dále jen HS ) v rozsahu:</p><br/>
<ul>
<li type="1">Výkon HS se vztahuje na hlášené poruchy a havárie (dále jen závada) na objektu Sedláčkova 12, 14, 16, 18, 20, 22, 24, 26, 28, 30, 32, 34 v těchto oblastech:</li>
<ul>
<li><b>veškeré rozvody topení včetně těles a armatur</b></li>
<li><b>veškeré rozvody TUV v objektu k bytovým uzávěrům (včetně)</b></li>
</ul>
<li type="1">HS je nepřetržitá 24 hod. denně i v sobotu, neděli a ve svátek.</li>
<li type="1">Hlášení závady se provádí na dispečinku Tepláren Brno a.s.: tel. <b>+420 545 162 206</b> nebo <b>+420 603 291 699</b> nebo <b>+420 605 209 744</b></li>
<li type="1">Hlášení závady může provádět zaměstnanec objednatele, funkcionář objednatele nebo vlastník / nájemce bytu případně nebytového prostoru v objektu.
Pracovník DS vyšle HS na zásah až po zpětném ověření pravdivosti hlášené závady u oznamovatele, v případech, kde zpětné ověření je možné.
<li type="1">Pracovníci HS provedou při výjezdu na hlášenou závadu její bezprostřední odstranění, případně zajištění základních funkcí zařízení tak, aby bylo zabráněno dalším škodám na majetku nebo ohrožení zdraví osob. Práce na řešení závady budou zahájeny do <b>dvou hodin</b> od jejího nahlášení.<br/>
Předpokládá se úplné odstranění závady tak, aby v co největší míře bylo zabráněno dalšímu výjezdu na předmětnou závadu druhý den. V případě materiálové náročnosti bude do dvou pracovních dnů, po dohodě s pověřeným pracovníkem objednatele, provedeno dokončení opravy závady nebo dohodnuto jiné opatření.</li>
<li type="1">Provedení zásahu na místě hlášené závady, způsob odstranění poruchy, délku zásahu a spotřebovaný materiál potvrdí oznamovatel pracovníkům HS do výkazu.</li>
<li type="1">O výjezdu HS a provedeném zásahu (případně o nutnosti provedení dalších prací a větších oprav vyplývajících ze zjištěné závady) bude informován pověřený pracovník objednatele, a to členové výboru SVJ.</li>
<li type="1">Zajištění pohotovosti HS je <b>bezplatné.</b></li>
<li type="1">Výjezd HS na hlášenou závadu  bude účtován následovně:</li>
<ul>
<li><b>práce hodinovou zúčt. sazbou (HZS) v částce max. 300,- Kč bez DPH / hod./ prac</b>.</li>
<li><b>použitý materiál dle vykázané nebo potvrzené spotřeby</b></li>
<li><b>cestovné částkou 12,00 Kč bez DPH / km</b></li>
</ul>
</ul>
<br/>
<p><i>
Náklady na odstranění hlášené závady v bytě, tj. od hlavních uzávěrů v bytě
( stoupačkách ), si hradí vlastník / nájemce sám.
Tyto opravy nebudou hrazeny z fondu oprav!!!</i></p>


<%		
	}
%>	
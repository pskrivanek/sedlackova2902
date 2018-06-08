<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>

<%
String type = (String) request.getAttribute("type");
if ("c".equals(type)) {
%>
<h2>Výbor SVJ a její členové:</h2>
<p>Výbor byl ustanoven a zvolen na schůzi vlastníků dne 16.9.2010. Každý člen výboru je zároveň i zástupcem vchodu/bloku.</p><br/>
<p>Pokud máte nějaký problém, dotaz nebo nápad na zlepšení týkající se bydlení v tomto domě kontaktujte svého zástupce.</p>
<p><b>Zároveň Vás chceme poprosit aby jste zaslali vaše kontakty na email Vašeho zástupce.</b></p>
<p><i>Tyto kontakty jsou jen a pouze pro výbor a pro komunikaci s Vámi.</i></p><br/>
<br/>
<table class="oam_table" >
	<thead>
	<tr>
		<th>Vchod</th>
		<th>Blok</th>
		<th>E-mail</th>
		<th>Jméno</th>
		<th>Funkce</th>
	</tr>
	</thead>
	<tr>
		<td align="center">Sedláčkova 20</td>
		<td align="center">A1</td>
		<td><a href="mailto:a1.sedlackova2902@gmail.com">a1.sedlackova2902@gmail.com</a></td>
		<td>Ing. Jiří Ševčík</td>
		<td>místopředseda</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 22</td>
		<td align="center">A2</td>
		<td><a href="mailto:a2.sedlackova2902@gmail.com">a2.sedlackova2902@gmail.com</a></td>
		<td>Ing. Radim Zemánek</td>
		<td>člen</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 24</td>
		<td align="center">A3</td>
		<td><a href="mailto:a3.sedlackova2902@gmail.com">a3.sedlackova2902@gmail.com</a></td>
		<td>Ing. Petr Dzik</td>
		<td>člen</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 26</td>
		<td align="center">A4</td>
		<td><a href="mailto:a4.sedlackova2902@gmail.com">a4.sedlackova2902@gmail.com</a></td>
		<td>Ing. Petr Vozák</td>
		<td>člen</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 28</td>
		<td align="center">B1</td>
		<td><a href="mailto:b1.sedlackova2902@gmail.com">b1.sedlackova2902@gmail.com</a></td>
        <td>Michal Indrák</td>
        <td>člen</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 30</td>
		<td align="center">B2</td>
		<td><a href="mailto:b2.sedlackova2902@gmail.com">b2.sedlackova2902@gmail.com</a></td>
		<td>Vratislav Běčák</td>
		<td>člen</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 32</td>
		<td align="center">B3</td>
		<td><a href="mailto:b3.sedlackova2902@gmail.com">b3.sedlackova2902@gmail.com</a></td>
		<td>Jiří Kadaník</td>
		<td>člen</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 34</td>
		<td align="center">B4</td>
		<td><a href="mailto:b4.sedlackova2902@gmail.com">b4.sedlackova2902@gmail.com</a></td>
		<td>RNDr. Martin Podhorský</td>
		<td>člen</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 18</td>
		<td align="center">C1</td>
		<td><a href="mailto:c1.sedlackova2902@gmail.com">c1.sedlackova2902@gmail.com</a></td>
		<td>Ing. Ladislav Valášek</td>
		<td>předseda</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 16</td>
		<td align="center">C2</td>
		<td><a href="mailto:c2.sedlackova2902@gmail.com">c2.sedlackova2902@gmail.com</a></td>
		<td>Ing. Hana Hrabcová</td>
		<td>člen</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 14</td>
		<td align="center">C3</td>
		<td><a href="mailto:c3.sedlackova2902@gmail.com">c3.sedlackova2902@gmail.com</a></td>
		<td>Mgr. Lucie Sýkorová, DiS</td>
		<td>místopředseda</td>
	</tr>
	<tr>
		<td align="center">Sedláčkova 12</td>
		<td align="center">C4</td>
		<td><a href="mailto:c4.sedlackova2902@gmail.com">c4.sedlackova2902@gmail.com</a></td>
		<td>Ing. Petr Skřivánek</td>
		<td>člen</td>
	</tr>
</table>
<%	}
	if ("cc".equals(type)) {%>
<h2>Kontrolní komise SVJ a její členové:</h2>
<p>Kontrolní komise byla ustanovena dne 11.2.2010 na první schůzi SVJ jako reakce na samovolné zvolení p.Jonáše jednatelem SVJ.</p><br/> 
<!-- <br/>
Kontrolní komise zanikla
<br/> -->
<br/>

<table class="oam_table">
	<thead>
	<tr>
		<th>E-mail</th>
		<th>Jméno</th>
		<th>Funkce</th>
	</tr>
	</thead>
	<tr>
		<td><a href="mailto:komise.sedlackova2902@gmail.com">komise.sedlackova2902@gmail.com</a></td>
		<td>Aneta Carbolová</td>
		<td>člen kontrolní komise</td>
	</tr>
	<tr>
		<td><a href="mailto:komise.sedlackova2902@gmail.com">komise.sedlackova2902@gmail.com</a></td>
		<td>Šárka Adamová</td>
		<td>člen kontrolní komise</td>
	</tr>
	<tr>
		<td><a href="mailto:komise.sedlackova2902@gmail.com">komise.sedlackova2902@gmail.com</a></td>
		<td>Renata Šusterová</td>
		<td>člen kontrolní komise</td>
	</tr>
</table>

<%	} 
	if ("i".equals(type)) {%>

<h2>Identifikační údaje:</h2>
<p>Jsme společenství vlastníků jednotek, kde statutárním orgánem je výbor.<br/>Za výbor jedná navenek jeho předseda. Jde-li o písemný právní úkon, musí být podepsán předsedou výboru a dalším členem výboru.</p>
<br/>
<table class="oam_table">
	<thead>
	<tr>
		<th colspan="2">Základní údaje SVJ</th>
	</tr>
	</thead>
	<tr>
		<td>Název:</td>
		<td>Společenství vlastníků jednotek Sedláčkova čp. 2902</td>
	</tr>
	<tr>
		<td>Sídlo:</td>
		<td>Sedláčkova 2902/18, Líšeň, 628 00 Brno</td>
	</tr>
	<tr>
		<td>IČO:</td>
		<td>29214424</td>
	</tr>
	<tr>
		<td>Účet:</td>
		<td>2105697050 / 2700</td>
	</tr>
</table>
<%	} %>
<br/>
Výpis z obchodního rejstříku <a href="https://or.justice.cz/ias/ui/rejstrik-firma.vysledky?subjektId=408231&typ=PLATNY" target="contractor">zde</a>
<%--
Výpis z obchodního rejstříku <a href="javascript:document.forms['orJustice'].submit();" >zde</a>.

<div style="display:none">
	<form name="justice" method="post" action="http://www.justice.cz/xqw/xervlet/insl/index" target="justice">
		<input type="hidden" name="sysinf.@typ" value="or">
		<input type="hidden" name="sysinf.@strana" value="searchResults">
		<input type="hidden" name="hledani.@typ" value="subjekt">
		<input type="hidden" name="hledani.podminka.subjekt" >
		<input type="hidden" name="hledani.podminka.ico" value="29214424">
		<input type="hidden" name="hledani.podminka.obec" >
		<input type="hidden" name="hledani.podminka.spisZnacka.oddil" >
		<input type="hidden" name="hledani.podminka.spisZnacka.vlozka" >
		<input type="hidden" name="hledani.podminka.spisZnacka.soud" value="7"/>
		<input type="hidden" name="hledani.format.pocet_polozek" value="50" >
		<input type="hidden" name="hledani.format.trideni" value="netridit">
		<input type="hidden" name="hledani.format.typHledani" value="x*" > 
		<input type="hidden" name="hledani.format.typHledani" value="*x*">
		<input type="hidden" name="hledani.format.obchodniJmeno" value="platne" > 
		<input type="hidden" name="hledani.podminka.pravniForma" value="-1">
		<input type="hidden" name="hledani.podminka.ulice">
	</form>
    <form name="orJustice" method="post" action="https://or.justice.cz/ias/ui/rejstrik-dotaz" target="justice">
        <input type="hidden" name="dotaz" value="Společenství vlastníků jednotek Sedláčkova čp. 2902"/>
    </form>
</div>
--%>
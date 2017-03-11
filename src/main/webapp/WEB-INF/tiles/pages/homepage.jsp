<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>

<table>
    <tr>
        <td><img src="img/home_<%= "" + (int)Math.ceil(Math.random() * 6) %>.jpg" align="middle"/></td>
        <td>
Vážení sousedé,<br/><br/>

vítáme vás na oficiálních webových stránkách Společenství vlastníků jednotek Sedláčkova 2902, Brno. 
Prostřednictvím těchto stránek budete mít možnost se seznamovat se základními údaji o SVJ 
a současně zde dostanete aktuální informace o dění v domě. 
Tento nový způsob komunikace má přispět k lepší informovanosti všech členů Společenství, popřípadě i nájemníků žijících v domě.
<br/><br/> 
Tyto stránky jsou zatím ve výstavbě a budou se postupně vylepšovat tak, aby jsme my všichni na nich nalezli údaje, 
které nás budou v souvislosti s naším domem zajímat.
<br/><br/>
<div align="right">výbor Společenství</div>
<br/><br/><br/>
<br/>

<h4>Odstávka vody 22.3.2017 od 10 hodin</h4>
<p>ve středu 22. března 2017 proběhnou servisní práce na tlakově-regulačním ventilu přívodu vody ... <a href="noticeboard.html#odstavka_vody_2017">více zde</a></p>
<br/><br/>

<h4>Instalace kamerového systému</h4>
<p>Dne 27.2.2017 začaly práce na instalaci kamerového systému na základě registrace u ÚOOÚ. ... <a href="noticeboard.html#instalace_kameroveho_systemu">více zde</a></p>
<br/><br/>


<h4>Aktualizace výměny výtahů v roce 2017</h4>
<p>aktualizovaný harmonogram začátku výměny zbylých výtahu v roce 2017 je
<a href="noticeboard.html#aktualizace_vymeny_vytahu_2017">zde</a><p>
<br/><br/>

<%--
<h4>Odečty bytových měřičů leden 2017</h4>
<p>v termímu od 7.1.2017 do 21.1.2017 bude probíhat oděčet stavu měříčů tepla a stavu vodoměrů ... 
<a href="noticeboard.html#odecty_bytovych_mericu_2017">více zde</a><p>
<br/><br/>

<h4>Výměna výtahů v roce 2017</h4>
<p>V roce 2017 bude proveda výměna zbývajících výtahů v našem domě. ... <a href="noticeboard.html#vymena_vytahu_2017">více zde</a></p>
<br/><br/>

<h4>Doplnění rozvodů kabelové sítě - <span style="color: red">3. aktualizace</span></h4>
<p>instalace kabeláže od nových providerů UPC a NetBox se chýlí ke konci. Zbývá doinstalovat kabeláž do cca 30 bytů v celém domě. ... <a href="noticeboard.html#kabelove_site_3aktualizace">více zde</a></p></p>
<br/><br/>

<h4>Přístupový systém v C3</h4>
<p>Ve vchodě Sedláčkova 14 (blok C3) byl na zkoušku spuštěn nový přístupový systém na bezkontaktní karty a čipy. ... <a href="noticeboard.html#pristupovy_system_c3">více zde</a></p>
<br/><br/>


<h4>Výměna výtahů v roce 2016 - <span style="color: red">aktualizace</span></h4>
<p>jak bylo na shromáždění SVJ dne 9.6.2016 oznámeno a odhlasováno proběhne výměna stávajících výtahů za nové typu Schindler 6300 ... <a href="noticeboard.html#vytahy_2016_aktualizace">více zde</a></p>
<br/><br/>


<h4>Doplnění rozvodů kabelové sítě - <span style="color: red">2. aktualizace</span></h4>
<p>instalace kabelů se dostala do další fáze a nyní bude probíhat "zatahování" kabelů do jednotlivých bytů. ... <a href="noticeboard.html#kabelove_site_2aktualizace">více zde</a></p>
<br/><br/>


<h4>Doplnění rozvodů kabelové sítě - aktualizace</h4>
<p>na shromáždění SVJ dne 9.6.2016 bylo odhlasováno doplnění kabelových sítí o další dodavatele internetu ... <a href="noticeboard.html#kabelove_site_aktualizace">více zde</a></p>
<br/><br/>

<h4>Kalibrace měřičů tepla</h4>
<p>Tento rok je nutné provést ověření a kalibraci měřičů tepla. Ve dnech <b>26.9 - 3.10.2016</b> ... <a href="noticeboard.html#kalibrace_mericu">více zde</a></p>
<br/><br/>




<h4>Čištění garážových a sklepních prostor dne 26.8.2016</h4>
<p>v pátek 26.8.2016 od 8:00 do 16:00 bude probíhat strojové čištění podlahy celého garážového prostoru a společných sklepních prostor v našem domě ... <a href="noticeboard.html">více zde</a></p>
<br/><br/>

<h4>Zápis ze Shromáždění SVJ 9.6.2016</h4>
<p>Zápis ze shromáždění které se konalo 9.6.2016 v Dělnickém domě v Židenicích ... <a href="documents.html?t=k">více zde</a></p>
<br/><br/>

<h4>Schůze SVJ dne 9.6.2016</h4>
<p>Ve čtvrtek 9.6.2016 se bude konat schůze SVJ v Dělnickém domě v Židenicích ... <a href="documents.html?t=k">více zde</a></p>
<br/><br/>

<h4>Vyúčtování - často kladené otázky</h4>
<p>Vzhledem k často kladeným otázkám k vyúčtování služeb připravila naše správcovská firma, která vyúčtování provádí, na tyto otázky odpovědi ... <a href="documents.html?t=v">více zde</a></p>

<h4>Zastavená voda dne 22.4.2016</h4>
<p>v posledních dnech si lidé z vyšších pater stěžovali na problém s tlakem vody. Jednalo se především o vchody Sedláčkova 12, 14, ... <a href="noticeboard.html">více zde</a></p>
<br/>

<h4>Poznámka Z-274/2016-702</h4>
<p>S ohledem na množící se dotazy k této problematice zdůrazňujeme, že veškeré informace dostupné výboru a naší AK jsou zveřejňovány ... <a href="noticeboard.html">více zde</a></p>
<br/>

<h4>Informace k Z-274/2016-702</h4>
<p>Vážení vlastníci bytových jednotek, v reakci na Vaše – obsahově téměř totožná podání – podaná ve dnech 15. 1. – 2. 2. 2016 ... <a href="noticeboard.html">více zde</a></p>
<br/>


<h4>Poznámka na katastru nemovitostí z 7.1.2016</h4>
<p>Dne 7.1.2016 se na Katastru nemovitostí - dále jen KN, objevila u některých bytových jednotek - dále jen BJ nová poznámka "Zápis spornosti" - číslo <b>Z-274/2016</b> ... <a href="noticeboard.html">více zde</a></p>
<br/>


<h4>Vyklízení odložených věcí</h4>
<p>V pátek dne 11.9.2015 dojde k vyhození všech věcí, které se vyskytují ve společných prostorách ... <a href="noticeboard.html">více zde</a>.</p>
<br/>

<h4>Úklid garáží dne 8.7.2015</h4>
<p>V garážích našeho domu Sedláčkova 2902 bude provedeno strojové čištění jednotlivých garážových stání ... <a href="noticeboard.html">více zde</a>.</p>
<br/>
<h4>Evidenční listy na garážové stání</h4>
<p>Dne 29.6.2015 bylo všem vlastníkům garážových stání Sedláčkova 2902 doručeny nové evidenční listy ... <a href="noticeboard.html">více zde</a>.
<br/><br/>

<h4>Nové stanovy</h4>
<p>Na schůzi SVJ dne 2.6.2015 byly schváleny nové stanovy. Tyto stanovy i s notářským zápisem naleznete <a href="documents.html?t=r">zde</a>.</p>
<br/>

<h4>Vrácení přeplatků za rok 2014</h4>
<p>V období od 4.6.2015 do 15.6.2015 proběhlo vyplácení přeplatků z vyúčtování služeb za rok 2014 <a href="noticeboard.html">více zde</a>.
<br/><br/>

<h4>Schůze SVJ dne 2.6.2015</h4>
<p>V úterý 2.6.2015 se bude konat schůze SVJ v Dělnickém domě v Židenicích ... <a href="documents.html?t=j">více zde</a></p>
<br/><br/>
<h4>Vyúčtování služeb za rok 2014</h4>
<p>Dne 23.4.2015 proběhla na Vaše korespondenční adresy distribuce vyúčtování služeb za rok 2014 ... <a href="noticeboard.html">více zde</a></p>


<h4>Úklidová firma Home Partner s.r.o.</h4>
<p>jak jste si asi všimli tak s novým rokem máme i novou úklidovou firmu Home Partner ... <a href="noticeboard.html">více zde</a></p>


<h4>Odečty bytových měřičů leden 2015</h4>
<p>v termímu od 5.1.2015 do 9.1.2015 bude probíhat oděčet stavu měříčů tepla a stavu vodoměrů v našem domě ... <a href="noticeboard.html">více zde</a></p>


<h4>Info výboru - dohoda o narovnání</h4>
<p>Někteří z Vás obdrželi návrh Dohody o narovnání ve věci „žaloby EU Profit“ .... <a href="noticeboard.html">více zde</a></p>


<h4>Oznámení o přerušení dodávky teplé vody 30.7.2014</h4>
<p>Dovolujeme si Vás informovat o přerušení dodávky teplé vody do našeho domu z důvodu ... <a href="noticeboard.html">více zde</a></p>
<br/>

<h4>Překódování garážových vrat</h4>
<p>Z důvodu zvýšení bezpečnosti bylo rozhodnuto o přeprogramování a kontrole registrace všech 
ovladačů garážových vrat ... <a href="noticeboard.html">více zde</a></p>
<br/>

<h4>Schůze SVJ dne 25.6.2014</h4>
<p>Dne 25.6.2014 se bude konat schůze SVJ v Dělnickém domě v Židenicích. ... 
<a href="documents.html?t=f">více zde i se zapisem ze schůze</a></p>
<br/>

<h4>Žaloba EU Profit</h4>
<p>někteří z Vás mají u svých bytů v katastru nemovitostí tzv. poznámku spornosti.
Zasíláme informaci k této poznámce z AK. ... <a href="noticeboard.html">více zde</a></p>
<br/>

<h4>Schůze SVJ dne 25.9.2013</h4>
<p>Dne 25.9.2013 se bude konat schůze SVJ v Dělnickém domě v Židenicích. ... <a href="documents.html?t=t">více zde</a></p>


<h4>Úklid garáží</h4>
<p>V garážích našeho domu Sedláčkova 2902 bude proveden úklid.<br/>
Úklid proběhne:
<ul>
<li><i>Dne 20.5.2013 od 8:00 - 20:00 hod</i></li>
<li><i>Dne 21.5.2013 od 8:00 - 15:00 hod</i></li>
</ul>
 ... <a href="noticeboard.html">více zde</a></p>


<h4>Mimořádná schůze SVJ dne 20.3.2013</h4>
<p>Dne 20.3.2013 se bude konat schůze SVJ v Dělnickém domě v Židenicích. ... <a href="documents.html?t=x">více zde</a></p>
<br/>

<h4>Vymáhání dlužných částek</h4>
<p>Dle schválených a platných stanov našeho SVJ Sedláčkova 2902 (čl. III odst. 6 ve spojení s čl. VII odst. 9 písm. c) 
máme jako zvolený výbor SVJ za povinnost vymáhání dluhů, které ... <a href="noticeboard.html">více zde</a></p>
<br/>

<h4>Provoz a servis výtahů</h4>
<p>dovolujeme si Vás informovat, že s koncem měsíce října 2012 končí firma Müllbacher se servisem našich výtahů. 
Od 1.11.2012 (tedy čtvrtka) bude servisovat naše výtahy ... <a href="noticeboard.html">více zde</a></p>
<br/>

<h4>Harmonogram montáže měřičů tepla</h4>
<p>Na <a href="documents.html?t=z">schůzi ze dne 11.6.2012</a> jste byli informování, že bude provedena výměna měřičů tepla. 
Výměna měřičů bude probíhat od 13.9. do 27.9.2012. Podrobný rozpis ... <a href="noticeboard.html">více zde</a></p>
<br/>
<br/>


<h4>Daň z převodu nemovitostí</h4>
<p>protože se množí případy, kdy členové SVJ dostávají výzvu z FU k zaplacení daně z němovitostí ... <a href="noticeboard.html">více zde</a></p>


<br/>
<h4>Legislativa ověřování měřidel</h4>
<p>Vzhledem k množícím se dotazům a četným výpadům vůči výboru SVJ ve věci výměny
měřičů tepla v bytových jednotkách, tímto ... <a href="noticeboard.html">více zde</a></p>
--%>
<br/>
<br/>
		</td>
	</tr>

</table>

<%@ page contentType="text/html; charset=utf-8" %>
<%@ include file="/WEB-INF/tiles/commons/taglibs.jsp" %>
<%@ page import="com.sedlackova2902.svj.controller.DownFile,org.apache.commons.lang.StringUtils" %>
<%!
    String linkDownfile(DownFile downFile, String linkText) {
        StringBuilder sb = new StringBuilder();
        sb.append("<a href=\"documents.html?f=").append(downFile.getFileId());
        sb.append("\" title=\"").append(downFile.getFileName()).append(" - ").append(downFile.getFileSize()).append("\">");
        sb.append(linkText).append("</a>");
        return sb.toString();
    }
    
    String linkArchive(String year, String currentPage) {
      if (year.equals(currentPage)) {
        return "<span class=\"selArchive\">" + year + "</span>"; 
      }
      return "<a href=\"noticeboard.html?a=" + year +"\">" + year + "</a>";
    }
%>
<%
String archive = (String) request.getAttribute("a");
if (!StringUtils.isEmpty(archive)) {
%>
<div class="archive">
 Archív zpráv z roku <%= linkArchive("2015", archive) %>, <%= linkArchive("2014", archive) %>, <%= linkArchive("2013", archive) %>, <%= linkArchive("2012", archive) %>, <%= linkArchive("2011", archive) %>, <%= linkArchive("2010", archive) %>.
</div>
<br/>
<hr/>
<br/>
<% 
}
if (StringUtils.isEmpty(archive)) {
%>
<h3>Zápis ze Shromáždění SVJ 9.6.2016</h3>
<p>Zápis ze shromáždění které se konalo 9.6.2016 v Dělnickém domě v Židenicích můžete stáhnout <%= linkDownfile(DownFile.Schuze2016_zapis, "zde") %> nebo na <a href="documents.html?t=k">stránce věnované shromážděni</a>.</p>
<br/>
<br/>

<h3>Shromáždění SVJ dne 9.6.2016</h3>
<p>Ve čtvrtek 9.6.2016 se bude konat schůze SVJ v Dělnickém domě v Židenicích.</p>
<ul>
<li>registrace účastníků od 15:00</li>
<li>začátek schůze v 16:30</li>
</ul>
<p>Oficiální pozvánka s programem je ke stažení <%= linkDownfile(DownFile.Schuze2016_pozvanka, "zde") %>. Bližší informace budou aktualizovány <a href="documents.html?t=k">zde</a>.</p>
<br/>
<br/>


<h3>Vyúčtování - často kladené otázky</h3>
<p>Vzhledem k často kladeným otázkám k vyúčtování služeb připravila naše správcovská firma, která vyúčtování provádí, na tyto otázky odpovědi. Tyto odvědi jsou dostupné v sekci 
<a href="documents.html?t=v">Dokumenty</a>.</p>
<br/><br/>


<h3>Zastavená voda dne 22.4.2016</h3>
<p>v posledních dnech si lidé z vyšších pater stěžovali na problém s tlakem vody. Jednalo se především o vchody Sedláčkova 12, 14, 32 a 34.</p><br/>
<p>V pátek 22.4.2016 odpoledne byla proto provedena blesková akce. Bylo provedeno čištění filtrů na přívodu vody do domu, vyčistil se filtr i na regulátoru tlaku a rozpohybovaly se armatury. Díky tomu se zlepšit průtok vody. Výstupní tlak z regulátoru se vylepšil z původních 4,5 atm na cca 5,8 atm.
Protože se při každé odstávce pohnou kaly v potrubí, může se stát, že se někomu zanese např. perlátor na baterii. Stačí odmontovat a vyčistit.</p><br/>
<p>Za nutnou odstávku vody se všem omlouváme, ale bez ní to nešlo provést.</p>
<br/><br/>

<h3>Poznámka Z-274/2016-702</h3>
<p>S ohledem na množící se dotazy k této problematice zdůrazňujeme, že veškeré informace dostupné výboru a naší AK jsou zveřejňovány na těchto webových stránkách. Jinými informacemi výbor ani AK nedisponují.<br/>
<br/>
Upozorňujeme, že SVJ ve sporu nemůže zastupovat dotčené vlastníky, neboť toto je mimo jeho kompetenci. Poznámka spornosti a řízení o určení vlastnictví se týká pouze dotčených vlastníků jednotek. Vyzýváme proto tyto vlastníky, aby se se svými dotazy obraceli na své právní zástupce a řešili věc pouze s nimi, neboť SVJ jim právní pomoc neposkytne, ani se touto záležitost nebude dále zabývat.
</p><br/>
<i>Výbor SVJ</i><br/>
<br/><br/>

<h3>Informace k Z-274/2016-702</h3>
<p>Vážení vlastníci bytových jednotek, v reakci na Vaše – obsahově téměř totožná podání – podaná ve dnech 15. 1. – 2. 2. 2016 na Katastrální úřad pro Jihomoravský kraj, Katastrální pracoviště Brno-město, Vás chceme ve věci Z-274/2016-702 (žádost o vyznačení poznámky spornosti ve věci podané žaloby -  NA PANENCE s.r.o. v likvidaci, v katastrálním území Líšeň) informovat:
<ul>
<li>vyznačení poznámky spornosti se řídí ustanovení § 24 zákona č. 256/2013 Sb., o katastru nemovitostí (katastrální zákon), ve znění pozdějších předpisů</li>
<li>katastrální zákon nezná „písemný nesouhlas se zápisem poznámky spornosti“; proto Vaše podání nesouhlasu nemají vplyv na vyznačení nebo nevyznačení poznámky spornosti</li>
<li>výsledkem Z-274/2016-702 bude vyznačení poznámky spornosti na listech vlastnictví, pokud bude mít Katastrální úřad pro Jihomoravský kraj, Katastrální pracoviště Brno-město, relevantní listiny (a proto je prozatím na LV vyznačená plomba Z-274/2016-702)</li>
<li>v současnosti probíhá řízení, vede ho úředně oprávněná osoba Ing. Šebeňová</li>
<li>poznámka spornosti znamená, že někdo se u soudu snaží prokázat, že stav zapsaný v katastru není v souladu se skutečným právním stavem – proto je třeba vyhledat pomoc odborníka a zvážit právní kroky (např. podat žalobu u soudu</li>
<li>sepsání a doručení nesouhlasu se zápisem poznámky spornosti na naše katastrální pracoviště nemá žádný vplyv na průběh soudního řízení č.j. 38 C-272/</li>
<li>katastrální pracoviště Vám doporučuje předmětnou věc konzultovat s odborníkem na danou problematiku, abyste jakožto vlastníci jednotek mohli podniknout opravdu relevantní kroky</li>
<li>seznam advokátů je možné nalézt na <a href="http://www.cak.cz" target="contractor">www.cak.cz</a>, seznam notářů na <a href="http://www.nkcr.cz" target="contractor">www.nkcr.cz</a></li>
</ul>
<br/>
<pre>
Mgr. Adriana Foretová
ředitelka Odboru právních vztahů k nemovitostem
Katastrální úřad pro Jihomoravský kraj
Katastrální pracoviště Brno-město
Moravské náměstí 1/1
601 51 Brno
</pre>
<br/>

<b>Tato reakce Katastru nemovitostí byla očekávána a další kroky podnikají dotčení vlastníci samostatně či společně po jejich vzájemné dohodě.</b><br/>
Výbor SVJ do tohoto dále nevstupuje.
</p>
<br/><br/>

<h3>Poznámka na katastru nemovitostí z 7.1.2016</h3>
<p>Dne 7.1.2016 se na Katastru nemovitostí - dále jen KN, objevila u některých bytových jednotek - dále jen BJ nová poznámka "Zápis spornosti" - číslo <b><a href="http://nahlizenidokn.cuzk.cz/VyberRizeni.aspx" target="contractor">Z-274/2016</a></b><br/>
<br/>
Jedná se stále o stejnou kauzu s EU Profit, která tuto poznámku zapsala u BJ již v roce 2010. V současné době pohledávku EU Profit za společností NA PANENCE s.r.o. v likvidaci odkoupila společnost <b>Rozvojová poradenská agentura s.r.o.</b>.<br/>
<br/>
Uvedená společnost provedla věcnou kontrolu usnesení soudu z roku 2010 a zjistila, že v usnesení nebyly uvedeny všechny BJ. Na základě tohoto zjištění bylo vydáno Opravné usnesení, které nabylo právní moci 6.11.2015. Tímto opravným usnesením bylo potvrzeno, že poznámky nebyly v roce 2010 zapsány u všech předmětných BJ. Návrh opravného usnesení je <%= linkDownfile(DownFile.PoznamkaKatasrt20160107_zapis, "zde") %>.<br/>
<br/>
Naše AK toto prověřila a neshledala, bohužel, žádnou závadu.<br/>
<br/>
Vážení vlastníci, proveďte kontrolu zápisu <a href="http://nahlizenidokn.cuzk.cz/VyberBudovu.aspx?typ=Jednotka" target="contractor">u vašich BJ v KN</a>. Poznámka se netýká všech BJ, pouze těch které jsou <%= linkDownfile(DownFile.PoznamkaKatasrt20160107_zapis, "v návrhu") %> vyznačeny červeně.<br
<br/>
Pokud máte nově uvedený "Zápis spornosti" můžete na KN podat <%= linkDownfile(DownFile.PoznamkaKatasrt20160107_nesouhlas, "Nesouhlas s poznámkou spornosti") %>, ve lhůtě 20 dnů od provedení zápisu. <b>Poznámka spornosti bude u Vašeho bytu i tak zapsaná</b>, ale pokud si soud vyžádá informace z katastru, pak tam soudce uvidí tento Váš nesouhlas. V tuto chvíli není jiná možnost, jak se poznámce na KN bránit.<br/>
<br/>
Návrh Nesouhlasu, v editovatelné formě, najdete <%= linkDownfile(DownFile.PoznamkaKatasrt20160107_nesouhlas, "zde") %> - doplňte svoje údaje a potom to podejte na KN <b>nejpozději do 26.1.2016</b>.
</p>
<i>Výbor SVJ</i><br/>
<br/>
<br/>
<div class="archive">
 Archív zpráv z roku <%= linkArchive("2015", archive) %>, <%= linkArchive("2014", archive) %>, <%= linkArchive("2013", archive) %>, <%= linkArchive("2012", archive) %>, <%= linkArchive("2011", archive) %>, <%= linkArchive("2010", archive) %>
</div>

<%
}
if ("2015".equals(archive)) {
%>

<h3>Vyklízení odložených věcí</h3>
<p>V pátek dne 11.9.2015 dojde k vyhození všech věcí, které se vyskytují ve společných prostorách našeho domu Sedláčkova 2902. 
Tzn. ve sklepních prostorech, kočárkárnách a pod schody.</p>
<br/>
<b>Prosíme majitelé aby tyto věci okamžitě odklidili. V opačném případě budou tyto věci vyhozeny.</b><br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>

<h3>Úklid garáží dne 8.7.2015</h3>
<p>V garážích našeho domu Sedláčkova 2902 bude provedeno strojové čištění jednotlivých garážových stání.
Úklid proběhne <b>ve středu 8.7.2015 od 9 hodin</b> a předpokládaná doba dokončení realizace cca v 17 hodin téhož dne.</p>
<br/>
<b>Prosíme proto aby jste po dobu čištění uvolnili Vaše garážové stání.</b><br/>
<br/>
<p>Tzn auto, motorku si daný den zaparkujte mimo garáž a krabice či nábytek co leží na zemi GS si odnesete do bytu. <b>Předejde tak poškození Vašeho majetku čistícím strojem!</b>.</p>
<i>Výbor SVJ</i><br/>
<br/>
<br/>

<h3>Evidenční listy na garážové stání</h3>
<p> Dne 29.6.2015 bylo všem vlastníkům garážových stání Sedláčkova 2902 doručeny nové evidenční listy.
Došlo k snížení záloh na služby v položce <i>"společná elektřina-osvětlení garáží"</i>, kdy vybírané zálohy výrazně převyšovaly skutečné náklady.</p>
<br/>
Tyto evidenční listy jsou platné od 1.8.2015. <b>Žádáme proto Všechny vlastníky GS, aby si od tohoto data upravili trvalé příkazy.</b><br/>
<br/>
V případě jakéhokoliv dotazu jsem Vám plně k dispozici.
<table>
<tr><td style="padding:5px;width:30px;"></td><td style="padding:1px">Monika Svojanovská</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">tel: 533 338 637</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">email: m.svojanovska@engineeringkpm.cz</td></tr>
</table>
<br/>
<br/>


<h3>Vrácení přeplatků za rok 2014</h3>
<p>V období od 4.6.2015 do 15.6.2015 proběhlo vyplácení přeplatků z vyúčtování služeb za rok 2014. 
Přeplatky byly majitelům zaslány zpět na jejich účet z kterého platí zálohové platby.</p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>


<h3>Schůze SVJ dne 2.6.2015</h3>
<p>V úterý 2.6.2015 se bude konat schůze SVJ v Dělnickém domě v Židenicích.</p>
<ul>
<li>registrace účastníků od 15:30</li>
<li>začátek schůze v 17:00</li>
</ul>
<p>Oficiální pozvánka s programem je ke stažení <%= linkDownfile(DownFile.Schuze2015_pozvanka, "zde") %>. Bližší informace budou aktualizovány <a href="documents.html?t=j">zde</a>.</p>
<br/>
<br/>

<h3>Vyúčtování služeb za rok 2014</h3>
<p>Dne 23.4.2015 proběhla na Vaše korespondenční adresy distribuce vyúčtování služeb za rok 2014.<br/><br/>
Jestliže jste vyúčtování služeb za rok 2014 nenašli ve své poštovní schránce, pak máte špatněně nahlášenou korespondenční adresu nebo neoznačenou poštovní schránku.
<br/><br/>
Vlastnící, kteří Vyúčtování služeb za rok 2014 neobdrželi, si jej mohou vyzvednou v úředních hodinách (t.j Po a St od 8:00-11:30 a 13:00-18:00) na provozovně správce 
nemovitostí BERGA,S.N s.r.o, Kotlářská 989/51a, Brno.
Popřípadě se mužete domluvit na jiném způsobu doručení.</p>
Kontakt:
<table>
<tr><td style="padding:5px;width:30px;"></td><td style="padding:1px">Monika Svojanovská</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">email: m.svojanovska@engineeringkpm.cz</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">tel: 533 338 637</td></tr>
</table>
<br/>
<br/>

<h3>Úklidová firma Home Partner s.r.o.</h3>
<p>jak jste si asi všimli tak s novým rokem 2015 máme i novou úklidovou firmu Home Partner s.r.o.<br/>
<br/>
Vzhledem k tomu, že úklid byl v našem domě čím dál horší, tak jsme se rozhodli smlouvu vypovědět a bylo provedeno nové výběrové řízení. 
Vítězem se stala firma Home Partner. Stávající náklady na úklid budou nižší a kvalita by měla být naopak lepší.</p>
<br/>

Rozsah a četnost úklidu je vylepený na dveřích úklidových místností a je dostupný také <%= linkDownfile(DownFile.Rozsah_uklidu_dle_SoD, "zde") %>.<br/>
Úklid v celém domě je rozdělen mezi čtyři pracovnice a ty mají po dvojicích rozděleny vchody. 
Harmonohram úklidu jednotlivých vchodů je <%= linkDownfile(DownFile.Rozpis_uklidu, "zde") %>.<br/>
<br/>
<p>V případě, že by někdo měl problém s kvalitou úklidu, tak reklamace zašlete emailem <a href="committee.html">zástupci</a>, a ten jej předá dál. 
Reklamace musí obsahovat fotku, datum, čas a komentář.<br/>
Na reklamace které budou podány jinou cestou nebude brán zřetel.</p><br/>
<i>Výbor SVJ</i><br/>

<br/>
<br/>

<%
}
if ("2014".equals(archive)) {
%>

<h3>Odečty bytových měřičů leden 2015</h3>
<p>v termímu od 5.1.2015 do 9.1.2015 bude probíhat oděčet stavu měříčů tepla a stavu vodoměrů v našem domě.<br/>
<br/>
Proto Vás tímto žádáme o zpřístupnění Vašeho bytu pro provedení odečtů a zjištění celkového stavu měřidel.

<b>Zvláště pak žádám ty majitele, kteří zde nebydlí, aby možnost odečtu zajistili.</b></p><br/>

Pro úplnost jsou zde termíny pro odečet v našem domě, které bude zajištovat paní Zdenka Kršková (tel: 604 708 323) :<br/>
<ul>
    <li>Sedláčkova 12: &nbsp; <i>Dne 5.1.2014 &nbsp; v 16:00 - 17:30 hod</i></li>
    <li>Sedláčkova 14: &nbsp; <i>Dne 5.1.2014 &nbsp; v 17:30 - 19:00 hod</i></li>
    <li>Sedláčkova 16: &nbsp; <i>Dne 6.1.2014 &nbsp; v 16:00 - 17:30 hod</i></li>
    <li>Sedláčkova 18: &nbsp; <i>Dne 6.1.2014 &nbsp; v 17:30 - 19:00 hod</i></li>
    <li>Sedláčkova 20: &nbsp; <i>Dne 7.1.2014 &nbsp; v 16:00 - 17:00 hod</i></li>
    <li>Sedláčkova 22: &nbsp; <i>Dne 7.1.2014 &nbsp; v 17:00 - 18:00 hod</i></li>
    <li>Sedláčkova 24: &nbsp; <i>Dne 7.1.2014 &nbsp; v 18:00 - 19:00 hod</i></li>
    <li>Sedláčkova 26: &nbsp; <i>Dne 8.1.2014 &nbsp; v 15:30 - 16:30 hod</i></li>
    <li>Sedláčkova 28: &nbsp; <i>Dne 8.1.2014 &nbsp; v 16:30 - 18:00 hod</i></li>
    <li>Sedláčkova 30: &nbsp; <i>Dne 8.1.2014 &nbsp; v 18:00 - 19:00 hod</i></li>
    <li>Sedláčkova 32: &nbsp; <i>Dne 9.1.2014 &nbsp; v 15:30 - 17:00 hod</i></li>
    <li>Sedláčkova 34: &nbsp; <i>Dne 9.1.2014 &nbsp; v 17:00 - 18:30 hod</i></li>    
</ul>
<br/>
<br/>

<h3>Info výboru - dohoda o narovnání</h3>
<p>Někteří z Vás obdrželi návrh Dohody o narovnání ve věci „žaloby EU Profit“ jehož scan je <%= linkDownfile(DownFile.DohodaONarovnani_1, "zde") %> a 
<%= linkDownfile(DownFile.DohodaONarovnani_2, "zde") %>.<br/>
Jeho podstatou je nabídka, že za vyplacení částky Kč 800,- / m2 podlahové plochy bytu (tedy částka v řádu desetitisíců na jeden byt)
dojde ke zpětvzetí žaloby a následnému vymazání poznámky v katastru nemovitostí zapsané na základě řízení sp. zn. 38C 272/2009.</p>
<br/>
<p><b>Pokud by někteří zvažovali přijetí této nabídky, nechť tak učiní až po důkladné poradě s advokátem znalým problematiky.</b></p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>


<h3>Oznámení o přerušení dodávky teplé vody 30.7.2014</h3>
<p>Dovolujeme si Vás informovat o přerušení dodávky teplé vody do našeho domu Sedláčkova 2902 z důvodu 
<i>nutné opravy na zařízení dodavatele</i>.</p>
<p>K přerušení dodávky dojde <b>od 8:00 do 20:00 hod. dne 30.7.2014.</b><br/>
Uvedená doba je uváděna jako maximální a může být zkrácena.
Leták s dalšími informacemi je <%= linkDownfile(DownFile.PreruseniDodavkyTepleVody, "zde") %>.</p>
<br/>
<br/>


<h3>Překódování garážových vrat</h3>
<p>Z důvodu zvýšení bezpečnosti bylo rozhodnuto o přeprogramování a kontrole registrace všech ovladačů garážových vrat.
Starý kód bude ukončen nejpozději k <b>1. 8. 2014</b>.<br/>
Do tohoto data bude probíhat přeprogramování ovladačů v těchto termínech:
<ul>
    <li>Čtvrtek &nbsp;17.7.2014 &nbsp; v 18:00 - 20:00 hod</li>
    <li>Úterý &nbsp; &nbsp; 22.7.2014 &nbsp; v 18:00 - 20:00 hod</li>
    <li>Neděle &nbsp;27.7.2014 &nbsp; v 18:00 - 20:00 hod</li>
</ul>
<br/>
V případě, že v daných termínech nedostavíte, bude možné domluvit individuální termíny, ale dle časových možností výboru SVJ.<br/><br/>
Časová náročnost je asi 5 minut. S sebou nezapomeňte prosím donést kupní nebo nájemní smlouvu,
občanský průkaz a všechny ovladače k vratům, <b>bez těchto náležitostí Vám nebude vyhověno a po 1. 8.
2014 bude znepřístupněn vjezd do garáží</b>.<br/>
Přeprogramování bude probíhat u garážových vrat – zevnitř.</p>
<br/>
<p style="color: red"><b>Pokud dojde ke krádeži nebo ztrátě ovladače od garáží neprodleně tuto skutečnost sdělte <a href="committee.html">Výboru SVJ!</a></b></p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>


<h3>Schůze SVJ dne 25.6.2014</h3>
<p>Dne 25.6.2014 se bude konat schůze SVJ v Dělnickém domě v Židenicích.
<ul>
<li>registrace účastníků od 15:30</li>
<li>začátek schůze v 17:00</li>
</ul>
Oficiální pozvánku s programem obdržíte v průběhu tohoto týdne. Bližší informace budou aktualizovány <a href="documents.html?t=f">zde</a>.
</p>
<br/>
<br/>


<h3>Žaloba EU Profit</h3>
<p>někteří z Vás mají u svých bytů v katastru nemovitostí tzv. poznámku spornosti.
Zasíláme informaci k této poznámce z AK.<br/>
Tato poznámka spornosti Vám nebrání v převodu bytu, nicméně Vaší povinností je nového kupce informovat o její existenci.
Informace o této poznámce je důležitá i pro případnou hypoteční banku budoucího kupujícího. Ti pak zváží, jestli je žaloba, na základě které byla poznámka spornosti zapsána,
způsobilá ohrozit vlastnické právo budoucího kupujícího a tím i zajištění jeho případného hypotečního úvěru.<br/>
Pro takové posouzení potřebují podklady:
<ul>
    <li><%= linkDownfile(DownFile.ZalobaEUProfit_2009_Zaloba, "Žaloba na určení vlastnického práva") %></li>
    <li><%= linkDownfile(DownFile.ZalobaEUProfit_2010_Usneseni, "Usnesení") %></li>
</ul>
Stav vyřízení této žaloby lze sledovat na <a href="http://www.justice.cz">www.justice.cz</a> v sekci infosoud po zadání spisové značky 38C 272/2009.</p>
<i>V současné době se čeká na nařízení prvního jednání ve věci. Do té doby je ukončení řízení nepravděpodobné.</i><br/>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>


<h3>Stromy a my</h3>
<p>
výbor SVJ byl osloven p. Lukášem Sejkorou se žádostí o distribuci informací o jeho aktivitě na pozemku vedle parkoviště a tramvajové smyčky.<br/> 
V <%= linkDownfile(DownFile.StromyAMyLisen, "tomto souboru") %> Vám tyto informace předáváme. V případě Vašeho zájmu se obracejte přímo 
na organizátora p. Sejkoru, kontakt v dokument nebo na stránách 
<a href ="http://www.stromyamy.org/brno-lisen/" target="contractor">www.stromyamy.org</a>.<br/><br/>
<i>Výbor SVJ</i>
</p>
<br/>
<br/>

<hr/>
<br/>

<%
}
if ("2013".equals(archive)) {
%>
<h3>Odečty bytových měřičů leden 2014</h3>
<p>v termímu od 5.1.2014 do 9.1.2014 bude probíhat oděčet stavu měříčů tepla a stavu vodoměrů v našem domě.<br/>
<br/>
Proto Vás tímto žádáme o zpřístupnění Vašeho bytu pro provedení odečtů a zjištění celkového stavu měřidel.

<b>Zvláště pak žádám ty majitele, kteří zde nebydlí, aby možnost odečtu zajistili.</b></p><br/>

Pro úplnost jsou zde termíny pro odečet v našem domě, které bude zajištovat paní Zdenka Kršková (tel: 604 708 323) :<br/>
<ul>
    <li>Sedláčkova 12: &nbsp; <i>Dne 5.1.2014 &nbsp; v 15:30 - 17:30 hod</i></li>
    <li>Sedláčkova 14: &nbsp; <i>Dne 5.1.2014 &nbsp; v 17:30 - 19:00 hod</i></li>
    <li>Sedláčkova 16: &nbsp; <i>Dne 6.1.2014 &nbsp; v 15:00 - 16:30 hod</i></li>
    <li>Sedláčkova 18: &nbsp; <i>Dne 6.1.2014 &nbsp; v 16:30 - 18:00 hod</i></li>
    <li>Sedláčkova 20: &nbsp; <i>Dne 7.1.2014 &nbsp; v 15:00 - 16:00 hod</i></li>
    <li>Sedláčkova 22: &nbsp; <i>Dne 7.1.2014 &nbsp; v 16:00 - 17:00 hod</i></li>
    <li>Sedláčkova 24: &nbsp; <i>Dne 7.1.2014 &nbsp; v 17:00 - 18:00 hod</i></li>
    <li>Sedláčkova 26: &nbsp; <i>Dne 8.1.2014 &nbsp; v 15:00 - 16:00 hod</i></li>
    <li>Sedláčkova 28: &nbsp; <i>Dne 8.1.2014 &nbsp; v 16:00 - 17:30 hod</i></li>
    <li>Sedláčkova 30: &nbsp; <i>Dne 8.1.2014 &nbsp; v 17:30 - 19:00 hod</i></li>
    <li>Sedláčkova 32: &nbsp; <i>Dne 9.1.2014 &nbsp; v 15:00 - 16:30 hod</i></li>
    <li>Sedláčkova 34: &nbsp; <i>Dne 9.1.2014 &nbsp; v 16:30 - 18:00 hod</i></li>    
</ul>
<br/>
<br/>

<h3>Výzva na vyklizení společných prostor</h3>
<p>Tímto Vás vyzýváme k odklizení uložených věcí ve společných prostorech sklepů, kočárkáren, prostorů chodeb a pod schodišti v domech.
Ukládání nepotřebných věcí (nábytek, postelové matrace, vysloužilé elektrospotřebiče, pneumatiky, kartony atd.) 
ve společných prostorech je nejenom v rozporu s vyhláškou o požární ochraně, což je uvedeno jako zjištěná závada
v protokolu o provedené kontrole PO BOZP, ale i předpisy hygienickými i bezpečnostními.</p><br/>
<p><b>Vyzýváme Vás proto k okamžitému odstranění takto odložených věcí a to nejpozději do 30. 11. 2013.</b></p>
<p><i>K jejich případné likvidaci použijte některý z místních sběrných dvorů.</i></p> 
<br/>
<p>Nebude-li vlastníky uložených věcí na tuto výzvu reagováno, bude nutné přistoupit k jejich hromadnému odstranění, 
a to na náklady všech vlastníků bytových jednotek. V takovémto případě však SVJ v žádném případě neručí za případné 
majetkové škody za takto likvidované věci.</p>
<p>Celou výzvu si můžete stáhnout <%= linkDownfile(DownFile.VyzvaNaVyklizeniSpolecnychProstor, "zde") %>.</p>
<br/>
<br/>

<h3>Schůze SVJ dne 25.9.2013</h3>
<p>Dne 25.9.2013 se bude konat schůze SVJ v Dělnickém domě v Židenicích.
<ul>
<li>registrace účastníků od 16:00</li>
<li>začátek schůze v 17:30</li>
</ul>
Oficiální pozvánku s programem obdržíte v průběhu tohoto týdne. Bližší informace budou aktualizovány <a href="documents.html?t=t">zde</a>.
</p>
<br/>
<br/>


<h3>Výměna měřičů spotřeby vody</h3>
<p>v průběhu měsíce června a července 2013 proběhne výměna měřičů teplé a studené vody. Výměnu bude provádět fa THERA Energo, spol. s r.o., která byla vybrána v rámci výběrového řízení.<br/> 
Podrobnější informace kdy bude provedena výměna nalezete na vchodových dveřích a zde:
<table style="width:600px;">
<tr><td width="150px">
<ul>
    <li>Sedláčkova 12: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_12, "13.6. a 14.6.2013") %></i></li>
    <li>Sedláčkova 14: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_14, "17.6. a 18.6.2013") %></i></li>
    <li>Sedláčkova 16: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_16, "19.6. a 20.6.2013") %></i></li>
    <li>Sedláčkova 18: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_18, "21.6. a 24.6.2013") %></i></li>
    <li>Sedláčkova 20: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_20, "25.6. a 26.6.2013") %></i></li>
    <li>Sedláčkova 22: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_22, "27.6. a 28.6.2013") %></i></li>
</ul>
</td><td width="150px">
    <li>Sedláčkova 24: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_24, "1.7. a 2.7.2013") %></i></li>
    <li>Sedláčkova 26: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_26, "3.7. a 4.7.2013") %></i></li>
    <li>Sedláčkova 28: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_28, "8.7. a 9.7.2013") %></i></li>
    <li>Sedláčkova 30: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_30, "10.7. a 11.7.2013") %></i></li>
    <li>Sedláčkova 32: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_32, "12.7. a 15.7.2013") %></i></li>
    <li>Sedláčkova 34: &nbsp; <i><%= linkDownfile(DownFile.HNG_vodomery_34, "16.7. a 17.7.2013") %></i></li>    
</ul>
</td></tr></table>
<b>Zvláště pak žádáme ty majitele, kteří zde nebydlí, aby možnost výměny zajistili.</b><br/>
<br/>
<br/>

<h3>Úklid garáží</h3>
V garážích našeho domu Sedláčkova 2902 bude proveden úklid.<br/>
Úklid proběhne:
<ul>
<li><i>Dne 20.5.2013 od 8:00 - 20:00 hod</i></li>
<li><i>Dne 21.5.2013 od 8:00 - 15:00 hod</i></li>
</ul>
<br/>
<b>Prosíme proto o uvolnění garážových stání.</b><br/>
<br/>
<br/>

<h3>Mimořádná schůze SVJ dne 20.3.2013</h3>
Dne 20.3.2013 se bude konat schůze SVJ v Dělnickém domě v Židenicích.
<ul>
<li>registrace účastníků od 16:00 – 17:00.</li>
<li>začátek schůze v 17:00</li>
</ul>
Oficiální pozvánku s programem obdržíte v nejbližších dnech nebo si ji můžete stáhnout <a href="documents.html?f=<%= DownFile.MimoradneSchuze2013_pozvanka.getFileId() %>">zde</a>.
Bližší informace budou aktualizovány <a href="documents.html?t=x">zde</a>.<br/><br/> 
Zápis ze schůze můžete stáhnout také <a href="documents.html?f=<%= DownFile.MimoradneSchuze2013_zapis.getFileId() %>">zde</a>.<br/>
<br/>
<br/>


<%
}
if ("2012".equals(archive)) {
%>
<h3>Odečty bytových měřičů 2013</h3>
<p>v termímu od 3.1.2013 do 16.1.2013 bude probíhat oděčet stavu měříčů tepla a stavu vodoměrů v našem domě.<br/>
<br/>
Proto Vás tímto žádáme o zpřístupnění Vašeho bytu pro provedení odečtů a zjištění celkového stavu měřidel.

<b>Zvláště pak žádám ty majitele, kteří zde nebydlí, aby možnost odečtu zajistili.</b></p><br/>

Pro úplnost jsou zde termíny pro odečet v našem domě, které bude zajištovat paní Zdenka Kršková (tel: 604 708 323) :<br/>
<ul>
    <li>Sedláčkova 12: &nbsp; <i>Dne 3.1.2013 &nbsp; v 15:00 - 17:30 hod</i></li>
    <li>Sedláčkova 14: &nbsp; <i>Dne 3.1.2013 &nbsp; v 17:30 - 19:30 hod</i></li>
    <li>Sedláčkova 16: &nbsp; <i>Dne 4.1.2013 &nbsp; v 15:00 - 17:30 hod</i></li>
    <li>Sedláčkova 18: &nbsp; <i>Dne 4.1.2013 &nbsp; v 17:30 - 19:30 hod</i></li>
    <li>Sedláčkova 20: &nbsp; <i>Dne 7.1.2013 &nbsp; v 15:00 - 17:30 hod</i></li>
    <li>Sedláčkova 22: &nbsp; <i>Dne 7.1.2013 &nbsp; v 17:30 - 19:30 hod</i></li>
    <li>Sedláčkova 24: &nbsp; <i>Dne 9.1.2013 &nbsp; v 15:00 - 17:30 hod</i></li>
    <li>Sedláčkova 26: &nbsp; <i>Dne 9.1.2013 &nbsp; v 17:30 - 19:30 hod</i></li>
    <li>Sedláčkova 28: &nbsp; <i>Dne 10.1.2013 &nbsp; v 15:00 - 17:00 hod</i></li>
    <li>Sedláčkova 30: &nbsp; <i>Dne 10.1.2013 &nbsp; v 17:30 - 19:30 hod</i></li>
    <li>Sedláčkova 32: &nbsp; <i>Dne 16.1.2013 &nbsp; v 15:00 - 17:30 hod</i></li>
    <li>Sedláčkova 34: &nbsp; <i>Dne 16.1.2013 &nbsp; v 17:30 - 19:30 hod</i></li>    
</ul>
<br/>
<br/>



<h3>Vymáhání dlužných částek</h3>
<p>Dle schválených a platných stanov našeho SVJ Sedláčkova 2902 (čl. III odst. 6 ve spojení s čl. VII odst. 9 písm. c) 
máme jako zvolený výbor SVJ za povinnost vymáhání dluhů, které jsou za současnými a minulými členy našeho SVJ.<br/><br/>

V měsíci 09/2012 jsme zahájili proces vymáhání soudní cestou. Postupujeme od nejvyšších dlužných částek k těm menším. 
Postup je popsán v interních <a href="documents.html?f=<%= DownFile.PravidlaVymahaniDluhu.getFileId() %>">pravidlech pro vymáhání</a>.<br/><br/>
</p>
 
<p>Vymáháním plnění členských povinností soudní cestou vznikají náklady soudního řízení, které jdou na vrub dlužníkovi, 
neboť ten svojí pasivitou zapříčinil nutnost zahájení soudního řízení. Tyto náklady tvoří „odměna za právní služby“, 
která se určí podle <a href="documents.html?f=<%= DownFile.VYHLASKA_484_2000.getFileId() %>">vyhlášky č. 484/2000 Sb.</a>. 
Další částka, která je součástí nákladů soudního řízení, 
a jež se připisuje k úhradě dlužníkovi, je „soudní poplatek“ (odvíjí se od výše vymáhané částky a určí se podle 
zákona č. 549/1991 Sb., o soudních poplatcích).</p>
 
Konečná částka, která jde k tíži žalovaného dlužníka tedy sestává ze:
<ul>
<li type="1">Částka dlužná SVJ ke dni podání.</li>
<li type="1">Zákonné úroky z prodlení ode dne, kdy dluh vzniknul do zaplacení</li>
<li type="1">Odměna za právní služby (<a href="documents.html?f=<%= DownFile.VYHLASKA_484_2000.getFileId() %>">dle vyhlášky č. 484/2000 Sb.</a>)</li>
<li type="1">Soudní poplatek</li>
</ul>
 
<p>Upozorňujeme, že celková dlužná částka se může dle stanoveného výpočtu <b>navýšit v řádech tisíců!</b></p>
<br/>
<p>Chcete-li předejít podání žaloby a z toho plynoucích nepříjemností a navýšení výdajů, 
zkontrolujte si stav všech vašich uhrazených/neuhrazených předepsaných plateb na zálohy a uhrazení vyúčtování za předchozí účetní období.</p>
<br/>
<i>Nedoplatky urychleně uhradit!</i><br/>
<br/>
<br/>


<h3>Okna a mříže ve sklepech</h3>
<p>Upozorňujeme, že ve dnech <b>15.11.2012 a 16.11.2012 od 8 hod.</b> se budou bourat a osazovat okna s mřížemi v bloku B4 a C4 naproti protihlukové zdi.
Dělníci budou potřebovat manipulační prostor a navíc bude odlítávat suť a bude se prášit.
<b>Proto Vás žádáme aby jste v tuto dobu NEPARKOVALI na chodnících naproti protihlukové zdi.</b><br/><br/>
<i>Předejde se tak případným nepříjemným situacím. </i> 
</p>
<br/>
<br/>

<h3>Provoz a servis výtahů</h3>
<p>dovolujeme si Vás informovat, že s koncem měsíce října 2012 končí firma Müllbacher se servisem našich výtahů. 
Od 1.11.2012 (tedy čtvrtka) bude servisovat naše výtahy firma <a href="http://www.schindler-cz.cz/prg-index/prg-ser.htm" target="contractor">Schindler CZ a.s.</a><br/>
Provoz a servis výtahů bude prováděn od <b>1.11.2012</b> na základě uzavřené „Servisní smlouvy č. HS 61065 E o poskytování prací a služeb“.</p>
<br/>
<p>Z uvedené smlouvy vyplývá povinnost dodavatele k nastoupení na opravu, a to následovně:
<ul>
<li>v pracovní den, víkend, svátek: <b>do 3 hodin od nahlášení</b></li>
<li>vyproštění osob: <b>do 1 hodiny</b></li>
</ul>
<br/>
Kontakty pro nahlášení poruchy: <b>844 844 808</b><br/>
<br/>
<i>Volejte, prosím, ihned při zjištění poruchy výtahu a nečekejte na to, že zavolá někdo jiný!!! 
Čím později se porucha nahlásí, tím později bude odstraněna.</i>
</p>
<br/>
<p>V případě dotazů se, prosím, obraťte na <a href="committee.html">svého zástupce vchodu</a>.</p>
<br/>
<br/>

<h3>Harmonogram montáže měřičů tepla</h3>
<p>Na <a href="documents.html?t=z">schůzi ze dne 11.6.2012</a> jste byli informování, že bude provedena výměna měřičů tepla. 
Výměna měřičů bude probíhat od 13.9. do 27.9.2012. Podrobný rozpis s časy je <a href="documents.html?f=<%= DownFile.HarmonogramVymenyMericuTepla.getFileId() %>">v tomto dokumentu</a>.<br/>
<br/>
Proto Vás tímto žádáme o zpřístupnění Vašeho bytu pro provedení výměny měřičů tepla včetně provedení odečtů naměřených hodnot na jednotlivých přístrojích. 
<b>Zvláště pak žádám ty majitele, kteří zde nebydlí, aby možnost výměny zajistili.</b><br/>
<br/>
Výměnu bude provádět:
</p>
<table>
<tr><td width="30px;"></td><td style="padding:1px"><b>THERA Energo, spol. s r.o.</b></td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">Křenová 479/73</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">602 00  Brno</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px"><b>Tel.: MT pan Kloc: 603 424 707</b></td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px"><a href="mailto:info@thera.cz">info@thera.cz</td></tr>
</table>
<br/>
<br/>


<h3>Vyplácení přeplatků z vyúčtování za rok 2011</h3>
<p>Dne 7.8.2012 byly zadány platby na vyplácení přeplatů za vyúčtování za rok 2011. <br/>
Majitelé, kterých se vrácení přeplatků týká, nechť si zkontorlují že danou platbu obdrželi, v opačném případě kontaktují svého zástupce.</p><br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>


<h3>Konkurz spol Na Panence, s.r.o. - výpověď plných mocí</h3>
<p>Spol. NA PANENCE, s. r. o., v likvidaci je v úpadku a byl na ni prohlášen konkurz. Detaily si můžete nalézt na
<a href="http://www.justice.cz" target="justice">www.justice.cz</a> v sekci insolvenční rejstřík včetně kompletního soudního spisu.<p>
<p>Podle <b>usnesení o úpadku zveřejněnému 4. 7. 2012</b>, jeho výroku č. IV., mohou věřitelé přihlásit svoje pohledávky ve lhůtě 30 dnů, 
jinak se k nim nebude v rámci insolvenčního řízení přihlížet.</p>
<br/>
<p>V minulosti bylo účelné, abychom své síly spojili a pohledávky řešili společně (např. podání přihlášek do likvidace). 
Nyní už takový postup není možný, proto jsou Vám v těchto dnech doručovány výpovědi plných mocí, které byly ve věci 
pohledávek za touto společností některými z Vás uděleny. Stane se tak formou emailu a formou písemné výpovědi doručené do Vašich schránek.</p>
<br/>
<p><i>Podání přihlášek tedy musí zvážit každý z Vás sám.</i></p>
<br/>
Bližší informace jsou <a href="documents.html?f=<%= DownFile.NaPanenceKonkurz.getFileId() %>">zde</a>.<br/>
<br/>
<br/>


<h3>Daň z převodu nemovitostí</h3>
<p>Protože se množí případy, kdy členové SVJ dostávají výzvu z FU k zaplacení daně z němovitostí za společnost Na Panence,
je  <a href="documents.html?f=<%= DownFile.DanZPrevoduVyjadreniPravnika.getFileId() %>">zde</a> pro informaci vyjádření právníka.</p>
<p>Pro úplnost a Vaši informovanost doplňuji, že o situaci víme a o řešení této situace hromadně neuvažujeme. Ani to není možné.
Jedná se o obchodní vztah každeho vlastníka/člena SVJ, jako soukromé osoby a spol. Na Panence.<br/>
Částku lze přihlásit do insolvenčního řízení, ale až po jejím uhrazení, ale zase jako soukromá osoba, která má pohledávku za spol. Na Panence.</p>
<br/>
<br/>


<h3>Schůze SVJ dne 11.6.2012</h3>
Dne 11.6.2012 se bude konat schůze SVJ v Dělnickém domě v Židenicích.
<ul>
<li>registrace účastníků od 15:30 – 17:00.</li>
<li>začátek schůze v 17:00</li>
</ul>
Oficiální pozvánku s programem obdržíte v průběhu tohoto měsíce.
Bližší informace budou aktualizovány <a href="documents.html?t=z">zde</a>.<br/>
<br/>
<br/>

<h3>Legislativa ověřování měřidel</h3>
<p>Vzhledem k množícím se dotazům a četným výpadům vůči výboru SVJ ve věci výměny
měřičů tepla v bytových jednotkách, tímto předkládáme podrobný právní rozbor
k této věci, který naleznete <a href="documents.html?f=<%= DownFile.PravniRozborMericu.getFileId() %>">zde</a>.</p><br/>
<p>Z dokumentu plyne, že výměna měřičů tepla a vody je akce, kterou SVJ provést musí, protože má tuto povinnost uloženou legislativou a stávajícími vnitřními podmínkami rozpočtu spotřeby energií u jednotlivých bytů v rámci SVJ. 
<b>V případě, že by tato akce nebyla provedena, hrozí SVJ sankce podle zák. č. 505/1990 Sb., o metrologii, což je pokuta až 1.000.000,- Kč.</b> 
Tato pokuta by musela být uhrazena z prostředků SVJ. V případě neuhrazení může ze zákona následovat ručení jednotlivých členů za závazky SVJ (srov. zák. č. 72/1994 Sb., § 13 odst. 7, 
podle kterého <i>„Vlastníci jednotek ručí za závazky společenství v poměru, který odpovídá velikosti spoluvlastnických podílů na společných částech domu“</i>)</p>
<p>Kompletní průvodní dokument je <a href="documents.html?f=<%= DownFile.PruvodniTextRozborMericu.getFileId() %>">zde</a>.</p><br/>
<i>Bližsí informace obdržíte od svého zástupce.</i><br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>

<%
}
if ("2011".equals(archive)) {
%>

<h3>Odečty bytových měřičů</h3>
<p>v termímu od 13.1.2012 do 23.1.2012 bude probíhat oděčet stavu měříčů tepla a stavu vodoměrů v našem domě.
Kromě provedení odečtů se bude provádět také zjišťování celkového stavu měřidel. <br/>
Rozsah prováděných operací je v <a href="documents.html?f=<%= DownFile.ODECTY_2012.getFileId() %>">tomto dokumentu</a>.<br/>
<br/>
Proto Vás tímto žádáme o zpřístupnění Vašeho bytu pro provedení odečtů a zjištění celkového stavu měřidel.

<b>Zvláště pak žádám ty majitele, kteří zde nebydlí, aby možnost odečtu zajistili.</b></p><br/>

Pro úplnost jsou zde termíny pro odečet v našem domě, které bude zajištovat pan Siuda (tel: 608 888 683) :<br/>
<ul>
    <li>Sedláčkova 12: &nbsp; <i>Dne 13.1.2012 &nbsp; v 16:00 - 18:30 hod</i></li>
    <li>Sedláčkova 14: &nbsp; <i>Dne 13.1.2012 &nbsp; v 18:00 - 20:00 hod</i></li>
    <li>Sedláčkova 16: &nbsp; <i>Dne 17.1.2012 &nbsp; v 16:00 - 17:30 hod</i></li>
    <li>Sedláčkova 18: &nbsp; <i>Dne 16.1.2012 &nbsp; v 16:00 - 17:45 hod</i></li>
    <li>Sedláčkova 20: &nbsp; <i>Dne 18.1.2012 &nbsp; v 16:00 - 17:15 hod</i></li>
    <li>Sedláčkova 22: &nbsp; <i>Dne 18.1.2012 &nbsp; v 17:00 - 18:15 hod</i></li>
    <li>Sedláčkova 24: &nbsp; <i>Dne 18.1.2012 &nbsp; v 18:00 - 19:15 hod</i></li>
    <li>Sedláčkova 26: &nbsp; <i>Dne 18.1.2012 &nbsp; v 19:00 - 20:00 hod</i></li>
    <li>Sedláčkova 28: &nbsp; <i>Dne 23.1.2012 &nbsp; v 18:00 - 20:00 hod</i></li>
    <li>Sedláčkova 30: &nbsp; <i>Dne 20.1.2012 &nbsp; v 16:00 - 18:30 hod</i></li>
    <li>Sedláčkova 32: &nbsp; <i>Dne 20.1.2012 &nbsp; v 18:00 - 20:00 hod</i></li>
    <li>Sedláčkova 34: &nbsp; <i>Dne 23.1.2012 &nbsp; v 16:00 - 18:30 hod</i></li>    
</ul>
<br/>
<br/>

<h3>Bližší informace ke schůzi dne 24.11.2011</h3>
<p>termín schůze 24.11.2011 se blíží a dotazů se množí, takže podrobnější informace nalezete na našich stránkách <a href="documents.html?t=s">zde</a></p>
<br/>
<br/>

<h3>Schůze SVJ dne 24.11.2011</h3>
Dne 24.11.2011 se bude konat schůze SVJ v Dělnickém domě v Židenicích.
<ul>
<li>registrace účastníků od 15:30 – 17:00.</li>
<li>začátek schůze v 17:00</li>
</ul>
V průběhu registrace bude probíhat aktualizace kontaktů (telefonní čísla, e-maily, čísla sklepů, čísla garážových stání a parkovacích míst).<br/>
Pozvánku a program schůze si můžete stáhnout <a href="documents.html?f=<%= DownFile.PROGRAM_SVJ.getFileId() %>">zde</a>.<br/>
Vlastní pozvánky obdržíte v nejbližších dnech poštou.<br/>
<br/>
<br/>


<h3>EU Profit - Oznámení ve vchodech</h3>
<p>včera (25.8.2011) se v našich vchodech objevilo 
<a href="documents.html?f=<%= DownFile.EU_PROFIT_ZALOBA_SPOLUVLASTNICTVI.getFileId() %>">oznamení</a> 
ohledně žaloby společnosti EU Profit. Zde je vyjádření našeho právního zástupce:<br/>
<br/>
Vážený pane inženýre,<br/>
vyvěšení tohoto oznámení naprosto postrádá smysl, pro lidi to neznamená nic nového.<br/>
Je známo, že společnost EU PROFIT s.r.o. podala žalobu na určení vlastnického práva, kde tvrdí, že jí přináleží spoluvlastnický podíl na některých jednotkách v budově č.p. 2902. Přiložené usnesení je o tom, že EU PRPFIT s.r.o. 7.4.2010 navrhla změnu žaloby, kterou soud tímto usnesneím 13.10.2010 připustil, řízení je nadále vedeno ohledně jednotek v tomto usnesení. <br/>
Aktuální stav řízení je dle elektronické informace o průběhu řízení z internetu (staženo dnes) takový, že proti rozhodnutí Městského soudu v Brně byl podán opravný prostředek, aktuálně tak je spis u Krajského soudu v Brně.<br/>
<i>Podávám Vám tuto informaci a jsem s pozdravem<br/>
Dana Lasáková </i></br/>
</p>
<br/>
<br/>

<h3>Vjezdové vrata mimo provoz</h3>
<p>od 22.8.2011 jsou nefunkční vjezdové vrata do garáží. Na vratech došlo k takové závadě, že je nutný odborný servis.<br/>
Předpokládáme, že vrata budou do pátku (26.8.2011) zase funkční. <br/>
Děkujeme za pochopení.</p>
<br/>
<p><i>Výbor SVJ</i></p>
<br/>
<br/>

<h3>Informace Výtahy Mühlbacher k 7.7.2011</h3>
<p>posíláme Vám rekapitulaci provedených činnosti za období 6 a 7.2011 při údržbě 12 ks výtahů v objektu Sedláčkova 2902.
<ul>
<li type="1">8.6.2011 provedeno vyčístění rozvaděčů 12 ks výtahů</li>
<li type="1">9.6.2011 provedena výměna stykačů ve výtazích v objektu Sedláčkova 22 a 18.</li>
<li type="1">10.6.2011  byly doplněny zcizené směrové šipky u výtahu Sedláčkova 22</li>
<li type="1">23.6.2011 byly doplněny zcizené směrové šipky u výtahu Sedláčkova 12 </li>
<li type="1">24.6.2011 byla provedena výměna frekvenčního měniče v objektu Sedláčkova 20 včetně seřízení dojezdů.</li>
<li type="1">24.6.2011 byla provedena oprava enkoderu a seřízení frekvenčního měniče v objektu Sedláčkova 18.</li>
</ul>
<br/>
<p>V průběhu měsíce 6 a 7 2011 došlo k několika nahodilým poruchám elektroinstalace výtahu v objektu Sedláčkova 34.<br/>
Problém s poruchovostí výtahu Sedláčkova 34 jsme řešili v rámci naší servisní činnosti. 
Vzhledem k tomu, že se nám nedaří jednoznačně příčinu zjistit, obrátili jsme se proto na našeho dodavatele výtahu fy MP s požadavkem určení příčiny vzniku poruch. 
Dle sdělení zástupce firmy MP v Praze ing. Čížka, bychom měli požadované informace obdržet 11.7.2011.
Po odstranění poruchy výtahu Sedláčkova 34, bude všech 12 výtahů funkčních, ale je rovněž nutné vzít na zřetel,
že při intenzivním provozu evakuačních výtahů v 9. a 10. podlažních objektech může docházet k občasným poruchám, 
(opotřebení elektroinstalace, mechanických částí dveří, nešetrná manipulace atd.) které v rámci servisní činnosti odstraníme.<br/>
Po odstranění příčiny poruchy na Sedláčkové 34  po datu 11.7.2011 Vás budeme informovat.</p>
<br/>
<i>S pozdravem Vladimír Mühlbacher</i>
<br/>
<br/>

<h3>Garážová vrata</h3>
<p>Pokud dojde k závadě na garážových vratech, tak závada je většinou čistě mechanická.
Stačí proto kontaktovat pana <a href="committee.html">Ševčíka, Skřivánka nebo Valáška</a>, a oni závadu odstraní sami nebo Vám poradí jak ji odstranit.
Každopádně pokud nevíte jak provést opravu tak <b>do vrat nevrtejte ať nenaděláte ješte větší škodu!</b>
</p><br/>
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
<br/>


<h3>Informace k vyúčtování ke dni 31.12.2010</h3>
<p>Informace k základním a nejčastějším otázkám týkajících se vyúčtování ke dni 31.12.2011 naleznete
<b><a href="documents.html?f=<%= DownFile.INFORMACE_K_VYUCTOVANI_20101231.getFileId() %>">zde</a></b> 
</p>
<br/>
<br/>

<h3>Informace Výtahy Mühlbacher k 10.6.2011</h3>
<p>Sdělení o stavu provedených prací pro odstranění poruchovosti výtahu v BD Sedláčkova 2902:</p><br/>
<p>Dne 8.6.2011 byla provedena očista elektrokomponentů rozvaděčů výtahů, dále byla provedena kontrola plynulosti jízdy
se zjištěním nutnosti seřídit frekvenční měniče v objektech: Sedláčkova 18,26,32. 
Seřízení FM vyžaduje spoluúčast odborného technika dodavatelské firmy, který je do konce tohoto týdne mimo ČR. 
Z tohoto důvodu bude seřízení FM provedeno v průběhu příštího týdne.</p>
<p>Dne 9.6.2011 byla provedena výměna stykačů v objektu Sedláčkova 18, do výtahu Sedláčkova 22 byly nainstalovány nové šipky směrového ukazatele pohybu kabiny výtahu (původní byly odcizeny).</p>
<p>Dne 10.6.2011 bude provedena kontrola dotažení kontaktů hlavního jističe výtahu v objektu Sedláčkova 20.</p>
<br/>
<i>S pozdravem Vladimír Mühlbacher</i>
</p>
<br/>
<br/>

<h3>Sdělení o soupisu majetku společnosti Na Panence k 26.4.2011</h3>
<p><b><a href="documents.html?f=<%= DownFile.SDELENI_O_SOUPISU_MAJETKU.getFileId() %>">zde</a></b>
 naleznete sdělení, které vyvěsil pan Mišinger v bloku C1</p>
<br/>
<br/>

<h3>Přihlášení zpronevěřené částky</h3>
<p>Ti z Vás, kteří v minulosti hradili zálohy na služby firmě Na Panence, by měli podat přihlášní zpronevěřené finanční částky do likvidace.<br/>
V létě minulého roku zřídil tehdejší pověřený vlastník Ing. Jonáš účet 2105697050/2700, který byl ve vlastnictví našeho SVJ. 
Platby, které jsme ale hradili na předchozí účty (případně někdo v hotovosti) byly ve vlastnictví spol Na Panence. 
Ta ale již neplatila dodavatelům energií a z toho pramení dluhy, se kterými se stále potýkáme.</p><br/>
<p>V této věci SVJ podniklo kroky v trestně-právní rovině. Nicméně náš právní zástupce má za to, že by bylo vhodné 
se o tyto prostředky přihlásit ještě jednou - a to každý individuálně přihláškou pohledávky do likvidace.
Veškeré reklamace a přihlášky pohledávek musí být vůči likvidátorovi uplatněny <b>nejpozději do 16.5.2011</b>.</p><br/>
<i>Z toho důvodu je <b><a href="documents.html?f=<%= DownFile.PRIHLASKA_POHLEDAVEK_UHRADY.getFileId() %>">zde</a></b> připravený dokument, který můžete využít.</i><br/>
<br/>
<br/>


<h3>Plná moc pro SVJ</h3>
<p>Na doporučení právního zástupce byl vypracován 
<b><a href="documents.html?f=<%= DownFile.PLNA_MOC_SVJ_2.getFileId() %>">tento dokument</a></b> s plnou mocí na řešení těchto bodů:<br/>
<ul>
<li>reklamace závad společných prostor</li>
<li>chybějící teréní úpravy</li>
<li>převod pozemku v okolí domu</li>
<li>chybějící Logoterm v bytových jednotkách</li>
</ul>
<br/>
Všechny tyto body se týkají všech a je zbytečné aby je řešil každý majitel bytové jednotky sám. 
Plná moc musí být proto, že SVJ jako takové nebylo kupujícím těchto nemovitostí a tedy není jejich vlasníkem.<br/>
Během následujících dnů Vás vaši zástupci s plnou moci obejdou, popřípadě Vás vyzvou k osobní návštěvě 
(zejména Ty z Vás, kteří  v domě nebydlí).</p>
<br/>
<i>Případné reklamace v jednotlivých bytech si budete podávat a řešit sami. Vše co je mimo byt bude řešit jednotně výbor SVJ.</i><br/>
<br/>
<br/>

 
<h3>Brigáda sobota 9.4.2011 v 9:00</h3>
<p>výbor SVJ vás zve k účasti na společné jarní úklidové akci. Cílem je
vlastními silami alespoň částečně a v mezích možností uklidit okolí
domu a garážová stání. Venku sesbíráme volně se povalující kusové
smetí, z garáží a sklepů odstraníme odpad a zameteme je.</p><br/>
<p>Tato akce přirozeně nenahrazuje mokré čistění garážových stání
ani terénní a zahradní úpravy okolních pozemků. Jistě ale zpříjemní
naše životní prostředí do doby, než nám situace dovolí zásadnější
zvelebení našeho domu.</p><br/>
<ul>
<li><b>Termín akce:</b> sobota 9. dubna 2011 v 9:00</li>
<li><b>Sraz:</b> roh A1/C1</li>
</ul>
<br/>
<br/>

<h3>Dražba, informace od likvidátora</h3>
<p>na nástěnkách jednotlivých vchodů umístil pan Mišinger informace o chystané draždě bytů, garážových a venkovních stáních. 
Tyto informace jsou nyní také dostupné na našich stránkách <a href="documents.html?t=a"><b>zde</b></a>.<br/>
<br/>
Současně svolává provizorní schůzku na <b>pondělí 21.03.2011 na 16.00 hod.</b> do podzemních garáží.
Sraz bude v 15:45 hod na rohu u výjezdu z podzenních garáží za účelem informace o průběhu
likvidace a případných dotazů ohledně výše uvedené dražby.</p>
<br/>
Vyvěšený dokument z nástěnky od pana Mišingera je dostupný <a href="documents.html?f=<%= DownFile.VYZVA_LIKVIDATORA.getFileId() %>"><b>zde</b></a><br/>
<br/>
<br/>

<h3>Změna úklidové firmy</h3>
<p>Vzhledem k nespokojenosti s úklidovou firmou, bylo na přelomu roku vyhlášeno výběrové řízení. <br/>
Ze čtyř nabídek byla vybraná zhledem k nabízeným službám a cenám firma Ager. Ager tuto činnost začal vykonávat od 1.3.2011.
<i>Podstatná změna je, že úklid v zádveří vchodových dveří až k výtahu bude proveden 1xdenně.</i><br/>
<br/>
<br/>


<h3>Výzva likvidátorovi společnosti Na Panence</h3>
<p>Těm z Vás, kteří jste zakoupili byt v našem domě od společnosti Na Panence s.r.o 
a kteří máte ve smlouvě zakotvený závazek prodávajícího převést na kupující v budoucnu podíl 
na pozemcích p.č. 4422/386 a p.č. 4422/35, doporučujeme po poradě s právním zástupcem vyzvat likvidátora, 
aby tento závazek naplnil.<br/>
 K tomuto účelu je <a href="documents.html?f=<%= DownFile.VYZVA_LIKVIDATOROVI.getFileId() %>"><b>zde</b></a> ke stažení vzor dopisu, který pro tyto potřeby můžete použít. 
Do žlutě podbarvených částí doplňte data z Vaší konkrétní smlouvy. Dále je možné, že tento závazek nemáte 
zakotvený v čl.X odst. 9 (tak jak to bylo ve většině smluv), ale v jiné části - proto překontrolujte a 
případně opravte i tento údaj.</p><br/>
<i>Vyplněný a podepsaný dopis zašlete písemně doporučeně případně s doručenkou na adresu likvidátora.</i><br/>
<br/>
<br/>

<h3>Likvidace spol. Na Panence</h3>
<p>Pro potřebu jednotlivých členů SVJ je zde kontakt na likvidátora společnosti Na Panence:</p>
<table>
<tr><td width="30px;"></td><td style="padding:1px"><b>Mgr. Jaroslav Mišinger</b></td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">Minská 38</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">616 00 Brno</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">Mobil: 602 555 566</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">E-mail: <a href="mailto:akmisinger@misinger.cz">akmisinger@misinger.cz</a></td></tr>
</table>
<br/>
<p>Pohledávku/reklamaci uplatněte:</p>
<ul>
<li>písemně, nejlépe doporučeně či s doručenkou na adresu likvidátora</li>
<li>v případě, že jste již toto jednou posílali (na předchozí vedení společnosti), pošlete to raději znovu na likvidátora</li>
<li>pohledávku/reklamaci uplatněte <b>do konce února 2010</b> - to neznamená, že pozdější reklamace nebudou přijaty, nicméně toto je doporučení našeho právního zástupce, který pokládá za vhodné s podáním nečekat.</li>
</ul>
<%--
<p>Pan Mišinger je připraven řešit reklamace jednotlivých členů SVJ, tak i SVJ ( společné prostory ).
Ale požádal o čas. Proto zasílejte reklamace na výše uvedené kontakty Mgr. Mišingera <b>v termínu do 15.3.2011</b>.
(Tento termín neznamená, že pozdější reklamace nebudou přijaty.)</p> 
--%>
<p><i>Pokud jde o havarijní stavy v bytech jednotlivývh členů SVJ, trvejte na rýchlém řešení.</i></p>
<br/>
<br/>


<h3>Teplá voda a topení</h3>
<p>Po jednání s Teplárnami Brno bylo dohodnuto, že se provede nastavení výměníkových stanic v každém bloku takto:</p>
<ul>
<li><b>teplá voda</b> - 24 hodin denně, 7 dní v týdnu</li>
<li><b>topení</b> - od 5:00 do 24:00, 7 dní v týdnu</li>
</ul>
<br/>
<p>
Změna tak bude provedena pouze u teplé vody. Topení bylo ponecháno beze změny (<a href="documents.html?f=<%= DownFile.ZAPIS_5.getFileId() %>">více zde</a>). <br/>
Přenastavení jak topení tak i teplé vody je možno provést pro každý vchod individuálně. Přenastavení ve vyměníkových stanicích provádí Teplárny Brno (přenastavení 1x za 2 měsíce). 
</p>
<br/>
<br/>
<%
}
if ("2010".equals(archive)) {
%>
<h3>Važení sousedé,</h3>
<p>výbor SVJ si vám dovoluje popřát příjemné, klidné a ničím nekomplikované prožití vánočních svátků a úspěšný vstup do roku 2011. 
Doufejme, že v roce 2011 se nám podaří splatit všechny dluhy, že se nevynoří žádný další kostlivec a fond oprav se bude používat k tomu k čemu je určený.</p>
<br/>
<p>I když to tak některým sousedům nepřipadá, starostí a problému kolem domu a v domě je stále dost. 
Některé jsou malé, některé větší a některé až průserové. Obecně jejich řešení stojí spoustu času, telefonátu, schůzek a nemalého úsilí a nervů. 
Některé věci se podařilo vyřešit a některé zatím ne. </p>
<p>Chtěli bychom Vás proto poprosit o trpělivost a chladnou hlavu neboť vaše "připomínky" na fóru jsou pro nás občas deprimující. 
Pokud někdo máte podstatný problém nebo nápad, tak o něm informujte <a href="committee.html?t=c">svého zástupce</a>, výbor je tady přece pro vás.</p>
<br/> 
<p><i>S vámi tady bydlíme a chceme mít dům i jeho okolí lepší.</i></p>
<p><i>Váš výbor SVJ.</i></p>
<br/>
<br/>


<h3>Upozornění pro zlodějě</h3> 
<p>Pokud bude někdo policií usvědčen z krádeží nebo vandalismu v našem domě a přilehlém okolí, bude jeho celé jméno i s adresou a případnou fotkou vystaveno na těchto stránkách.</p>
<br/>
<br/>

<h3>Havárie topení</h3>
<p>Radiátory v těchto dnech pouštíme více naplno a tak nyní dochází k poruchám až havariím. Prosíme proto abyste si zkontrolovali ve svém bytě radiátory jestli vám nekapou. Může to být signalizace blížící se havárie. Pokud Vám radiátory tečou nečekejte, že by to přestalo a raději se obraťe na instalatéry nebo přímo na <a href="contractors.html?t=s">havarijní servis tepláren</a>.</p>
<br/>
<br/>

<h3>Úhrada najemného fa Profiserf</h3>
<p>Mnozí z nás mají uzavřenou nájemní smlouvu o nájmu pozemku pod blokem B. Ve smlouvě je uvedeno číslo účtu 43-5034800287/0100, ale není tam variabilní symbol. Podle informací od p.Brodiny se má uvádět variabiní symbol ve tvaru 2902 a číslo bytu (bytové jednotky). Tzn pokud máte číslo bytu 73, tak variabilní symbol bude 290273.</p>
<br/>
<br/>

<h3>Zabezpečení domu</h3>
<p>V pondělí 13.12.2010 byla uzavřena smlouva s bezpečnostní agenturou <a href="http://www.navos.cz/" target="contractor">Navos</a>, která bude naši budovu a nejbližší okolí monitorovat.<br/>Zabezpečení přes čipové karty a kamery je zatím odloženo až na schůzi SVJ na jaře 2011.</p>
<br/>
<br/>

<h3>Havarijní servis</h3>
<p>Je uzavřená SoD s TB - služby, s.r.o., dceřinou společností Teplárny Brno na havarijní stavy ( dále jen HS ) v rozsahu: ... (<a href="contractors.html">více zde</a>)</p>
<br/>
<br/>

<%--
<h3>Zabezpečení domu</h3>
<p>Množí se případy vloupání, krádeží a vandalismu jak kolem domu tak i v domě. Z toho důvodu bylo předběžně zjištěno jakým způsobem a za jakou investici je možné dům a jeho okoli (parkovací stání) zabezpečit/monitorovat.</p>
Vzhledem k tomu že se jedná o velké investice, které si žádá schválení SVJ, bylo vybrána alternativní varianta a to bezpečnostní agentura 
<p>Na začátku 50 týdne bude uzavřena smlouva s bezpečnostní agenturou na střežení celého objektu. Agentura bude  
V březnu nebo v dubnu je plánovaná schůze SVJ kde se odhlasuje pripadna realizace bezpecnostnich kamer a cipovych karet.
<br/>
<br/>
 --%>
<h3>Platby</h3>
<p>Vzhledem k tomu, že se v našem domě stále vyskytují případy, kdy majitelé bytů neuhrasili zálohy za užívání bytu z minulých měsíců a také dluží doplatky z vyúčtování, dovolujeme si Vám připomenout, že veškeré částky je nutno uhradit <b>NEPRODLENĚ</b>!
V případě neuhrazení těchto dlužných částek bude výbor SVJ vůči dlužníkům postupovat dle občanského zákoníku <b>(vymáhání, exekuce ...), včetně zveřejnění seznamu neplatičů.</b></p>
<br/>
<p>Znovu upozorňujeme, že jediný účet SVJ na který poukazujte patby je: <b>2105697050/2700</b>.</p>
<br/>
<p><i>Platby na jakýkoliv jiný účet již nejsou připisovány ve prospěch našeho SVJ.</i></p>
<br/>
<br/>


<h3>Pojištění domu</h3>
<p>Tímto Vás informujeme, že u České pojišťovny byly uzavřeny následující smlouvy, a to:</p>
<ul>
    <li>pojistná smlouva o Pojištění majetku (scan smlouvy <a href="documents.html?f=<%= DownFile.POJISTKA.getFileId() %>">zde</a>)</li>
    <li>pojistná smlouva Pojištění odpovědnosti podnikatelů</li>
</ul>
<br/>
<p>Dále Vás informujeme, že Česká pojišťovna nabídla pro všechny majitelé bytu Sedláčkova čp. 2902 bonus, slevu na pojištění domácností a vozidel ve výši 30%. Tento bonus lze uplatnit jak na budoucí smlouvy tak i u smluv již uzavřených.
V případě, že máte zájem využít tuto nabídku, kontaktujte:</p>
<table>
<tr><td width="30px;"></td><td style="padding:1px"><b><a href="http://www.sme-ceska.cz/jjestrabik" target="contractor">Ing. Josef Jestřabík</a></b></td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">Česká pojišťovna a.s.</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">Agentura Brno 647</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">Zvonařka 16, 617 00 Brno</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">Telefon: 543 211 330, Mobil: 603 841 106, Fax: 543 211 330</td></tr>
<tr><td style="padding:5px"></td><td style="padding:1px">E-mail: <a href="mailto:Jjestrabik@servis.cpoj.cz">Jjestrabik@servis.cpoj.cz</a>, <a href="http://www.sme-ceska.cz/jjestrabik" target="contractor">www.sme-ceska.cz/jjestrabik</a></td></tr>
</table>
<br/>
<br/>

<h3>Klíče od rozvoden</h3>
<p>Od 6.12.2010 mají všichni členové výboru přístup ke všem elektrorozvodnám v daných blocích. Dokud nebude zcela jasné kdo a kdy do rozvodny vešel, tyto <b>klíče nebudou distribuovány mezi majitelé bytu</b>. Zde jsou důvody:
<ul>
<li type="1">V elektro rozvodně je volné přístupné ovladání výtahu a záložní UPS - pokud si s tím někdo bude hrát může dojít k nevratnému poškození.</li>
<li type="1">Ve skříních jsou volně přístupné živé vodiče na místech kde nejsou osazeny elektroměry</li>
<li type="1">Technologie Poda a O2 – jsou to zamknuté skříně, ale ...</li>
</ul>
<p>Takže není to proto aby se výbor dělal důležitý, ale prevence proti takovým sousedům, kteří  úmyslně či neúmyslně způsobují škody, které se dotýkají nás všech. Ať už jsou to poškozené (vykopnuté) výtahové dveře přes vloupání do automobilu až po venčení psů v garážích.</p>
<br/>
<p>Pokud někdo potřebuje nahodit jistič, nebo provést odečet elektroměru tak to mohou provést:
<ul>
    <li type="1"><a href="committee.html">zástupce vašeho vchodu</a> - můžete kontaktovat osobně, telefonicky, SMS</li> 
    <li type="1"><a href="committee.html">zástupci jiných vchodu</a></li>
    <li type="1">fa Zika tel: +420 604 900 090 – nutno počítat s poplatkem</li>
    <li type="1">fa Maršálek tel: +420 541 213 457 – nutno počítat s poplatkem</li>
</ul>
<br/>
<br/>
<%
}
%>
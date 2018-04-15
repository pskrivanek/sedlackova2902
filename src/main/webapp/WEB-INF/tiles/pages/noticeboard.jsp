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
 Archív zpráv z roku <%= linkArchive("2017", archive) %>, <%= linkArchive("2016", archive) %>, <%= linkArchive("2015", archive) %>, <%= linkArchive("2014", archive) %>, <%= linkArchive("2013", archive) %>, <%= linkArchive("2012", archive) %>, <%= linkArchive("2011", archive) %>, <%= linkArchive("2010", archive) %>.
</div>
<br/>
<hr/>
<br/>
<% 
}
if (StringUtils.isEmpty(archive)) {
%>
<h3 id="instalace_led_modulu">Instalace LED modulů</h3>
<p>Na konci března skončila výměna osvětlení ve společných prostorech našeho domu. Stávající klasické žárovky, kterých je na trhu již nedostatek byly nahrazeny LED moduly.<br/>
<b>Chodby jsou lépe osvětleny a spotřeba el. energie bude menší.</b><br/>
Při zapnutí je ale větší napěťová špička. Na některých chodbách se tak může stát, že pohybové čídlo zůstává sepnuté a světla svítí.
Pokud to zjistíte kontaktujte <a href="committee.html?t=c">svého zástupce</a>.
</p><br/>
<i>Výbor SVJ</i><br/>
<br/><br/>

<h3 id="novy_majitel_vnitrobloku">Vnitroblok má nového majitele</h3>
<p>Insolvenčnímu správci se podařilo prodat vnitroblok, který tak má nového majitele společnost ESPYRA, a.s.<br/><br/>
Záměrem je vnitroblok dokončit a následně zprovoznit jako garážový dům. Místa v něm budou k dispozici jak obyvatelům našeho bytového domu, tak i lidem „zvenku“.<br/>
Je plánováno i něco navíc – místa pro motorky, uzavřené, zamykatelné sklady (třeba když někomu nestačí sklepní kóje).<br/>
Pokud má někdo zájem, může napsat na níže uvedený kontakt. Jakmile budou jasné detaily, ceny atd., bude každý jednotlivě informován a následně se domluví řešení na míru.<br/>
K dispozici bude i výhodný speciální úvěr pro financování nákupu garážových stání s kompletním servisem.<br/>
<br/>
Kontaktní osoba je:
<table style="margin-left:30px;">
<tr><td style="padding:1px">Ing. Richard Kala</td></tr>
<tr><td style="padding:1px">manažer projektů </td></tr>
<tr><td style="padding:1px">AVRIOINVEST, a.s.</td></tr>
<tr><td style="padding:1px">Sochorova 23, 616 00 Brno</td></tr>
<tr><td style="padding:1px">email: <a href="mailto:kala@avrioinvest.cz">kala@avrioinvest.cz</a></td></tr>
<tr><td style="padding:1px">web: <a href="http://www.avrioinvest.cz" target="contractor">www.avrioinvest.cz</a></td></tr>
</table>

</p>
<br/>
<br/>

<h3 id="odecty_bytovych_mericu_2018">Odečty bytových měřičů leden 2018</h3>
<p>v termímu od 9.1.2018 do 12.1.2018 bude probíhat oděčet stavu měříčů tepla a stavu vodoměrů v našem domě.</p><br/>
Zde jsou termíny odečtu po vchodech: </p>
<ul>
    <li>Sedláčkova 12: &nbsp; <i>Dne &nbsp; 9.1.2017 &nbsp; 15:00 - 17:00 hod</i></li>
    <li>Sedláčkova 14: &nbsp; <i>Dne 11.1.2017 &nbsp; 18:30 - 20:00 hod</i></li>
    <li>Sedláčkova 16: &nbsp; <i>Dne 11.1.2017 &nbsp; 17:00 - 18:30 hod</i></li>
    <li>Sedláčkova 18: &nbsp; <i>Dne 11.1.2017 &nbsp; 15:00 - 17:00 hod</i></li>
    <li>Sedláčkova 20: &nbsp; <i>Dne &nbsp; 9.1.2017 &nbsp; 17:00 - 18:30 hod</i></li>
    <li>Sedláčkova 22: &nbsp; <i>Dne &nbsp; 9.1.2017 &nbsp; 18:30 - 20:00 hod</i></li>
    <li>Sedláčkova 24: &nbsp; <i>Dne 10.1.2017 &nbsp; 17:00 - 18:30 hod</i></li>
    <li>Sedláčkova 26: &nbsp; <i>Dne 10.1.2017 &nbsp; 18:30 - 20:00 hod</i></li>
    <li>Sedláčkova 28: &nbsp; <i>Dne 12.1.2017 &nbsp; 15:00 - 17:00 hod</i></li>
    <li>Sedláčkova 30: &nbsp; <i>Dne 12.1.2017 &nbsp; 17:00 - 18:30 hod</i></li>
    <li>Sedláčkova 32: &nbsp; <i>Dne 12.1.2017 &nbsp; 18:30 - 20:00 hod</i></li>
    <li>Sedláčkova 34: &nbsp; <i>Dne 10.1.2017 &nbsp; 15:00 - 17:00 hod</i></li>
</ul>
Souhrný seznam ale po dnech je možné stáhnout <%= linkDownfile(DownFile.OdectyMericu2018, "zde") %><br/><br/>
<p>Pokud nebudete v uvedenou dobu přítomni, můžete stavy a výrobní čísla měřičů tepla a vodoměrů zaslat e-mailem na adresu <a href="mailto:odecty@thera.cz">odecty@thera.cz</a>.</p>
<br/>
<br/>


<h3 id="berga_pokladna_oznameni">Od 1.ledna 2018 platby pouze elektronicky</h3>
<p><%= linkDownfile(DownFile.BergaPokladnaOznameni, "zde") %> je informace od vedení naší správcovské firmy Berga, týkající se vybírání hotovostních plateb:<br/><br/>
 &nbsp; – <i>z důvodu zavedení EET od 01.01.2018 naše provozovna již <b>nebude přijímat žádnou hotovost!!!</b></i><br/><br/>
Veškeré platby prosím provádějte elektronicky. Všechny potřebné údaje máte na evidenčním listu, který jste v minulosti obdrželi.
</p>
<br/>
<br/>

<div class="archive">
 Archív zpráv z roku <%= linkArchive("2017", archive) %>, <%= linkArchive("2016", archive) %>, <%= linkArchive("2015", archive) %>, <%= linkArchive("2014", archive) %>, <%= linkArchive("2013", archive) %>, <%= linkArchive("2012", archive) %>, <%= linkArchive("2011", archive) %>, <%= linkArchive("2010", archive) %>
</div>
<%
}
if ("2017".equals(archive)) {
%>
<h3 id="dokonceni_pokladky_dlazby">Termíny dokončení pokládky dlažby</h3>
<p>Výměna výtahu je dokončena ve všech vchodech a nyní zbývá ve vchodech 12,14 a 26 předělat pokládku dlažby před dveřmi výtahu.<br/>
Termíny realizace:
<ul>
<li>Sedláčkova 12: &nbsp; nástup 04.12</li>
<li>Sedláčkova 14: &nbsp; nástup 11.12</li>
<li>Sedláčkova 26: &nbsp; nástup 18.12</li>
</ul>
<br/>
Předpokládaná doba realizace jednoho vchodu je 3 dny (max. 4 dny v případě nějakého problému).
<ol>
<li>den vysekání a podbetonování,</li>
<li>den pokládka dlažby,</li>
<li>den pokládka soklu + zaspárování dlažby,</li>
<li>den zaspárování soklu (při provozu).</li>
</ol>
<br/>
<b>Při bourání betonu, při pokládce nové dlažby a následném vytvrzení lepidla pod dlažbou budou výtahy mimo provoz.</b><br/><br/>
Samozřejmě, bude snaha minimalizovat omezení provozu.
</p><br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>



<h3 id="odstavka_horkovodu_2017">Odstávka horkovodu od 11.10 do 12.10.2017</h3>
<p>V termínu od středy 11.10.2017 5.00 hod. do čtvrtka 12.10.2017 20.00 hod. bude odstaven a vypuštěn horkovod DN 500 Líšeň v úseku L 162 – L 164 (ulice Vlkova) z důvodu vystrojení šachty L 164.<br/>
V době odstávky dojde v našem domě Sedláčkova 2902 k <b>přerušení dodávky tepla a nebude v provozu ani ohřev teplé vody</b>.</br><br/>
Uvedená doba odstávky je maximální, pracovníci TB udělají vše proto, aby byl horkovod zprovozněn v co možná nejkratším termínu.<br/>
Odstávka bude probíhat v souladu se zákonem 458/2000 Sb. § 76 odstavec 4 písmeno c (provádění plánovaných rekonstrukcí a oprav s oznámením 15 dnů předem).
</p>
<br/>
<br/>

<h3 id="aktualizace_vymeny_vytahu_2017_2">Další aktualizace výměny výtahů v roce 2017</h3>
<p>Zde je aktualizovaný harmonogram výměnu zbylých výtahu, kde se o týden odsouvá zahájení viz:</p>
<ul>
<li><b>Sedláčkova 32:</b> &nbsp; &nbsp;<i>zahájení <b>7.8.2017</b> a předání 31.8.2017</i></li>
<li>Sedláčkova 34: &nbsp; &nbsp;<i>zahájení 4.9.2017 a předání 4.10.2017</i></li>
</ul>
<br/>
<p>Předpokládaná délka realizace jednoho výtahu je 3 až 4 týdny.</p>
<br/>
<br/>

<h3>Čištění garážových prostor dne 5.6.2017</h3>
<p>Dobrý den majitelé a nájemníci garážových stání pod domem Sedláčkova 2902. Rád bych Vás požádal o spolupráci při čištění prostoru garážových stání dne 5.6.2017 od 8 do 15 hodin. <br/>Největší pomocí z Vaší strany bude vyklizení Vašeho parkovacího stání - vyparkování auta/motorky/ ... a případně dalších dočasně odložených věcí. Proběhne strojové a ruční čištění celého prostoru po zimě. 
Předem děkuji za spolupráci. <br/>V případě nejasností mne kontaktujte.</p><br/>
<i>
Ing. Radim Zemánek<br/>
e-mail: a2.sedlackova2902@gmail.com</i><br/>
</br><br/>


<h3>Shromáždění SVJ v úterý 6.6.2017</h3>
<p>v úterý 6.6.2017 se bude konat shromáždění vlastníků jednotek našeho domu Sedláčkova 2902 v Dělnickém domě v Židenicích.</p>
<ul>
<li>registrace účastníků od 15:00</li>
<li>začátek shromáždění v 16:30</li>
</ul>
<br/>
<p>Oficiální pozvánka s programem je ke stažení <%= linkDownfile(DownFile.Schuze2017_pozvanka, "zde") %>. Bližší informace budou aktualizovány <a href="documents.html?t=i">zde</a>.</p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>


<h3>Kamerový systém</h3>
<p>instalace kamerového systému byla dokončena a převzata na začátku dobna. Od té doby jsou na všech vchodových dveřích vylepeny upozorňující nálepky.<br/> 
Kamerový systém je plně funkční a pořizuje záznam na 7 dní. Pokud by to bylo více dní, museli bychom záznamy posílat na ÚOOÚ. <br/>Zároveň byly provedeny přípravné práce pro kamery do výtahů a otevírání dveří přes čipy, viz <a href="documents.html?t=i#Program">body na shromáždění 6.6.2017</a>.
</p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>

<h3 id="odstavka_vody_2017">Odstávka vody 22.3.2017 od 10 hodin</h3>
<p>ve středu 22. března 2017 proběhnou servisní práce na tlakově-regulačním ventilu přívodu vody do domu Sedláčkova 2902.<br/>
Na základě uvedeného bude odstávka vody, a to <b>22.3.2017 od 10:00 do cca 12:00</b> hodin<br/> 
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>



<h3 id="instalace_kameroveho_systemu">Instalace kamerového systému</h3>
<p>Dne 27.2.2017 začaly práce na instalaci kamerového systému na základě <a href="https://forms.uoou.cz/registration.aspx?id=195531" target="contractor">registrace u ÚOOÚ</a>. Instalace by měla být dokončena do 6 týdnů.<br/><br/>
S instalací kamerového systému budou zároveň provedeny přípravné práce pro instalaci:
<ul>
<li> kamer do výtahů</li>
<li> přístupový systém na bezkontaktní karty a čipy</li>
</ul>
<br/>
V obou případech se jedná o natažení kabeláže tak aby se již nemuselo zasahovat do sádrokartónových podhledů.
</p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>

<h3 id="aktualizace_vymeny_vytahu_2017">Aktualizace výměny výtahů v roce 2017</h3>
<p>Zde je aktualizovaný harmonogram <b>začátku výměny</b> zbylých výtahu v roce 2017:</p>
<ul>
<li><b>Sedláčkova 22</b>: &nbsp; <i>od <b>27.2.2017</b></i></li>
<li>Sedláčkova 18: &nbsp; &nbsp;<i>od 3.4.2017</i></li>
<li>Sedláčkova 24: &nbsp; &nbsp;<i>od 2.5.2017</i></li>
<li><b>Sedláčkova 28</b>: &nbsp; <i>od <b>29.5.2017</b></i></li>
<li><b>Sedláčkova 30</b>: &nbsp; <i>od <b>10.7.2017</b></i></li>
<li>Sedláčkova 32: &nbsp; &nbsp;<i>od 1.8.2017</i></li>
<li>Sedláčkova 34: &nbsp; &nbsp;<i>od 4.9.2017</i></li>
</ul>
<br/>
<p>Předpokládaná délka realizace jednoho výtahu je 4 týdny.</p>
<br/>
<br/>


<h3 id="odecty_bytovych_mericu_2017">Odečty bytových měřičů leden 2017</h3>
<p>v termímu od 7.1.2017 do 21.1.2017 bude probíhat oděčet stavu měříčů tepla a stavu vodoměrů v našem domě.</p><br/>
Zde jsou termíny odečtu po jednotlivých vchodech. Čas je orientační.</p>
<ul>
    <li>Sedláčkova 12: &nbsp; <i>Dne 7.1.2017 &nbsp; v 9:00 - 11:30 hod</i></li>
    <li>Sedláčkova 14: &nbsp; <i>Dne 7.1.2017 &nbsp; v 11:30 - 12:30 hod</i></li>
    <li>Sedláčkova 16: &nbsp; <i>Dne 7.1.2017 &nbsp; v 12:30 - 13:45 hod</i></li>
    <li>Sedláčkova 18: &nbsp; <i>Dne 7.1.2017 &nbsp; v 13:45 - 15:00 hod</i></li>
    <li>Sedláčkova 20: &nbsp; <i>Dne 11.1.2017 &nbsp; v 15:00 - 16:15 hod</i></li>
    <li>Sedláčkova 22: &nbsp; <i>Dne 11.1.2017 &nbsp; v 16:15 - 17:30 hod</i></li>
    <li>Sedláčkova 24: &nbsp; <i>Dne 11.1.2017 &nbsp; v 17:30 - 18:45 hod</i></li>
    <li>Sedláčkova 26: &nbsp; <i>Dne 11.1.2017 &nbsp; v 18:45 - 20:00 hod</i></li>
    <li>Sedláčkova 28: &nbsp; <i>Dne 18.1.2017 &nbsp; v 15:00 - 16:15 hod</i></li>
    <li>Sedláčkova 30: &nbsp; <i>Dne 18.1.2017 &nbsp; v 16:15 - 17:30 hod</i></li>
    <li>Sedláčkova 32: &nbsp; <i>Dne 18.1.2017 &nbsp; v 17:30 - 18:45 hod</i></li>
    <li>Sedláčkova 34: &nbsp; <i>Dne 21.1.2017 &nbsp; v 9:00 - 11:00 hod</i></li>
</ul>
Souhrný seznam je možné stáhnout <%= linkDownfile(DownFile.OdectyMericu2017, "zde") %><br/><br/>
<p>Pokud nebudete v uvedenou dobu přítomni, můžete stavy a výrobní čísla měřičů tepla a vodoměrů zaslat e-mailem na adresu <a href="mailto:odecty@thera.cz">odecty@thera.cz</a>.</p>
<br/>
<br/>

<h3 id="vymena_vytahu_2017">Výměna výtahů v roce 2017</h3>
<p>V roce 2017 bude proveda výměna zbývajících výtahů v našem domě.<br/> 
Zde je harmonogram <b>začátku výměny</b> výtahu:</p>
<ul>
<li>Sedláčkova 20: &nbsp; <i>od 9.1.2017</i></li>
<li>Sedláčkova 16: &nbsp; <i>od 1.2.2017</i></li>
<li>Sedláčkova 22: &nbsp; <i>od 1.3.2017</i></li>
<li>Sedláčkova 18: &nbsp; <i>od 3.4.2017</i></li>
<li>Sedláčkova 24: &nbsp; <i>od 2.5.2017</i></li>
<li>Sedláčkova 28: &nbsp; <i>od 1.6.2017</i></li>
<li>Sedláčkova 30: &nbsp; <i>od 3.7.2017</i></li>
<li>Sedláčkova 32: &nbsp; <i>od 1.8.2017</i></li>
<li>Sedláčkova 34: &nbsp; <i>od 4.9.2017</i></li>
</ul>
<br/>
<p>Předpokládaná délka realizace jednoho výtahu je 4 týdny.</p>
<br/>
<br/>


<%
}
if ("2016".equals(archive)) {
%>

<h3 id="kabelove_site_3aktualizace">Instalace kabeláže ve vchodech - 3.aktualizace</h3>
<p>instalace kabeláže od nových providerů UPC a NetBox se chýlí ke konci. Zbývá doinstalovat kabeláž do cca 30 bytů v celém domě.<br/>
Pokud jste majiteli bytu, který nemá přivedeny tyto nové kabely, prosím aby jste se co nejdříve ozvali na telefonní číslo <b>+420 607 134 090</b>, nejpozději <b>do pátku 25.11.2016 do 12 hodin</b>. Po tomto termínu budou všechny díry v sádrokartónu zpět zapraveny do původního stavu, bez servisních dvířek. Je zbytečné hyzdit chodby servisními dvířky, které se nikdy nepoužijí.</p><br/>
<p><b>Přivedením kabelů do bytu se k ničemu nezavazujete naopak je to pro Vás výhoda, která zvyšuje hodnotu bytu a komfort Vašeho bydlení. Budete mít větší možnost výběru z poskytovalelů internetu a kabelové televize.</b> Ve schránkách se již objevily letáčky s akčními slevami nebo provozem zdarma na 1/2 roku.</p></br>
<p>Protažení kabelů z chodby do bytu zabere cca 10 minut. Kabely se protáhout přes již existující průchodku do rozvodné krabice nad dveře. Nemusíte se tak bát, že by u Vás v bytě vrtali nebo sekali. 
</p><br/>
<p>Pokud se někdo z těchto 30 bytů po termínu rozhodne, že využije služeb UPC nebo NetBox, tak všechny náklady spojené s přivedení přípojky/kabelu do bytu, tzn. veškeré sádrokartonářské a malířské práce, si majitelé budou hradit ze svého.</p><br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>

<h3 id="pristupovy_system_c3">Přístupový systém v C3</h3>
<p>Ve vchodě Sedláčkova 14 (blok C3) byl na zkoušku spuštěn nový přístupový systém na bezkontaktní karty a čipy. Vchodové dveře můžete otevřít klíčem nebo přes zaregistrovanou kartu/čip. Nový způsob časem nahradí problematiké klíče u kterých dochází k mechanickým problémům - zalomené klíče, poničené zámky a kování.</p><br/>
<p>
Je možné využít kompatibilní karty a čipy, které již využíváte v práci nebo škole. Kompatibilitu zjistíte tak, že přiložíte Vaši kartu nebo čip ke snímači u vchodových dveří a snímač zareaguje zvukovým signálem. V případě ztráty se dá karta/čip okamžitě zablokovat a vydat nový. Je tak zajištna větší bezpečnost.
</p><br/>
Kontakt na registraci nebo výdaní nových čipů:
<ul>
<li>Michal Masařík, <a href="mailto:mmasarik@email.cz">mmasarik@email.cz</a>, tel: +420 604 291 207</li>
<li>Sedláčkova 14, byt v přizemí za výtahem, každý den v době 17:00-19:30</li>
<li>Cena za 1 čip je 50,- Kč a vydání je během minuty na základě občanského průkazu.</li>
<li>reklamní leták je <%= linkDownfile(DownFile.PristupovySystemC3, "zde") %>
</ul>

<br/>
<i>Výbor SVJ</i><br/>
<br/><br/>


<h3 id="kabelove_site_2aktualizace">Instalace kabeláže ve vchodech - 2.aktualizace</h3>
<p>instalace kabelů se dostala do další fáze a nyní bude probíhat <i>"zatahování"</i> kabelů do jednotlivých bytů. Dopředu se připravuje nebo již jsou připravené servisní otvory pro snadné a rychlé protažení kabelů do bytů.<br/>
<br/>
Zde jsou termíny po jednotlivých vchodech:
<ul>
<li><b>Sedláčkova 16</b> (C2):
<ul><li>Po. 31.10. od 8-16 hodin</li><li>Út. &nbsp;1.11. od 12-19 hodin</li></ul>
</li><br/>
<li><b>Sedláčkova 18</b> (C1):
<ul><li>Út. 1.11. od 12-19 hodin</li><li>St. 2.11. od &nbsp; 8-16 hodin</li></ul>
</li><br/>
<li><b>Sedláčkova 20</b> (A1):
<ul><li>St. 2.11. od &nbsp; 8-16 hodin</li><li>Čt. 3.11. od 12-19 hodin</li></ul>
</li><br/>
<li><b>Sedláčkova 22</b> (A2):
<ul><li>Čt. &nbsp;3.11. od 12-19 hodin</li><li>Pá. 4.11. od &nbsp; 8-16 hodin</li></ul>
</li><br/>
<li><b>Sedláčkova 24</b> (A3):
<ul><li>Po. 7.11. od &nbsp; 8-16 hodin</li><li>Út. &nbsp;8.11. od 12-19 hodin</li></ul>
</li><br/>
<li><b>Sedláčkova 28</b> (B1):
<ul><li>Út. 8.11. od 12-19 hodin</li><li>St. 9.11. od &nbsp; 8-16 hodin</li></ul>
</li><br/>
<li><b>Sedláčkova 30</b> (B2):
<ul><li>St. &nbsp; 9.11. od &nbsp; 8-16 hodin</li><li>Čt. 10.11. od 12-19 hodin</li></ul>
</li><br/>
<li><b>Sedláčkova 32</b> (B3):
<ul><li>Čt. 10.11. od 12-19 hodin</li><li>Pá. 11.11. od &nbsp; 8-16 hodin</li></ul>
</li><br/>
<li><b>Sedláčkova 34</b> (B4):
<ul><li>Po. 14.11. od 8-16 hodin</li><li>Út. 15.11. od 12-19 hodin</li></ul>
</li><br/>
</ul>
v případě, že někdo termín nestihne, je na vývěsce v každém vchodu uvedena kontaktní osoba.<br/>
<br/>
<i>Děkujeme za spolupráci</i>
<br/><br/><br/>

<h3 id="vytahy_2016_aktualizace">Výměna výtahů v roce 2016 - aktualizace</h3>
<p>Do konce roku 2016 proběhne výměna výtahů ve vchodech Sedláčkova č.26, 12 a 14.<br/>
Výměna začne <b>v pondělí 31.10.2016</b> odstavením starých výtahů a nové výtahy budou zprovozněny na konci 47. týdne a začátkem 48. týdne - podle montážních zkoušek.<br/>
<br/>
Zde je harmonogram výměny:
<ul>
<li><b>Týden 44/2016</b> (31.10. - 6.11.)
	<ul>
	<li>31.10.2016 - zahájení demontáže stávajících výtahů Muhlbacher</li>
	<li>odvoz náhradních dílů do skladu Schindler</li>
	<li>konec týdne 44/2016 - 1. závoz materiálu (vodítka+šachetní materiál)</li>
	<li>zahájení montáže</li>
	</ul>
</li><br/>
<li><b>Týden 45/2016</b> (7.11. - 13.11.)
	<ul>
	<li>pokračování montáže</li>
	<li>konec týdne 45/2016 - 2. závoz materiálu</li>
	</ul>
</li><br/>
<li><b>Týden 46/2016</b> (14.11. - 20.11.)
	<ul>
	<li>pokračování montáže, stavební práce (příprava otvorů pro přivolávače+ukazatele)</li>
	<li>příprava na montážní zkoušky</li>
	</ul>
</li><br/>
<li><b>Týden 47/2016</b> (21.11. - 27.11.)
	<ul>
	<li>dokončení montáže, stavební práce (začištění dveří, navázání podlah na šach.dveře, malování...)</li>
	<li>příprava na montážní zkoušky</li>
	<li>montážní zkoušky</li>
	</ul>
</li><br/>
<li><b>Týden 48/2016</b> (28.11. - 4.12.)
	<ul>
	<li>montážní zkoušky</li>
	<li>předání výtahů</li>
	</ul>
</li><br/>
</ul>
<i>Převzato od fa Schindler</i>
</p>
<br/><br/>

<h3 id="kabelove_site_aktualizace">Instalace kabeláže ve vchodech   - aktualizace</h3>
<p>Instalace kabeláže se dostala do skluzu oproti plánovanému harmonogramu. Byly proto provedeny změny práce a termínů:
<ul>
<li>do konce září by měly být hotové vchody Sedláčkova č.26, 12 a 14</li>
<li>zároveň se začne provádět vertikální instalace kabeláže ve všech zbývajících vchodech. Začne se bloky C, pak B a A</li>
<li>jakmile bude natažena vertikální kabeláž v celém domě začne se po vchodech protahovat do jednotlivých bytů</li>
<li>protahovaní do bytů se bude provádět 2-3 dny z toho jeden den v odpoledních hodinách</li>
<li>termíny budou vyvěšeny týden dopředu na vchodových dveřích</li>
<li>v případě, že někdo nebude doma, může si domluvit individuální termín</li>
<li>až bude celý vchod "zatahaný" tak se provede zapravení děr</li>
</ul>
<br/>
<b>Aktualizovaný harmonogram pro protahovaná kabeláže do bytů:</b>
<ul><li>Sedláčkova 12:
<ul>
<li>Po. 26.9. od 8:00 - 16:00 hodin</li>
<li>Út. 27.9. od 12:00 - 20:00 hodin</li>
<li>St. 28.9. od 8:00 - 16:00 hodin</li>
</ul>
</li><br/>
</li>
<li>Sedláčkova 14:
<ul>
<li>St. 28.9. od 8:00 - 16:00 hodin </li>
<li>Čt. 29.9. od 12:00 - 20:00 hodin</li>
<li>Pá. 30.9. od 8:00 - 16:00 hodin</li>
</ul>
</li><br/>
<li>Sedláčkova 16:
<ul>
<li>předběžně od pondělí 17.10.</li>
</ul>
</li>
</ul>
</p>
<br/>
<p><i>V případě, že někomu termín nevyhovyje, kontaktujte pana Svobodu, tel: 725 502 823.</i></p>
<br/>
<i>Děkujeme za spolupráci</i>
<br/><br/><br/>


<h3 id="kalibrace_mericu">Kalibrace měřičů tepla</h3>
<p>Tento rok je nutné provést ověření a kalibraci měřičů tepla. Ve dnech <b>26.9 - 3.10.2016</b> tedy proběhne odmontování měřičů tepla z bytů, následně bude provedena jejich kalibrace a znovu namontování ve dnech <b>17.10 - 21.10.2016</b>.<br/>
Odmontování měřičů bude provádět pověřený pracovník: <i>Tomáš Vyroubal, tel: 420 725 005 378</i>.<br/><br/>
<b>Termíny odmontování měřičů:</b>
<ul>
<li>Sedláčkova 12: &nbsp; <i>dne 26.9.2016 &nbsp; od 9:00 - 13:00 hod</i></li>
<li>Sedláčkova 14: &nbsp; <i>dne 26.9.2016 &nbsp; od 13:00 - 15:30 hod</i></li>
<li>Sedláčkova 16: &nbsp; <i>dne 27.9.2016 &nbsp; od 9:00 - 13:00 hod</i></li>
<li>Sedláčkova 18: &nbsp; <i>dne 27.9.2016 &nbsp; od 9:00 - 13:00 hod</i></li>
<li>Sedláčkova 20: &nbsp; <i>dne 27.9.2016 &nbsp; od 13:00 - 15:00 hod</i></li>
<li>Sedláčkova 22: &nbsp; <i>dne 29.9.2016 &nbsp; od 9:00 - 12:00 hod</i></li>
<li>Sedláčkova 24: &nbsp; <i>dne 29.9.2016 &nbsp; od 9:00 - 12:00 hod</i></li>
<li>Sedláčkova 28: &nbsp; <i>dne 29.9.2016 &nbsp; od 12:30 - 15:00 hod</i></li>
<li>Sedláčkova 30: &nbsp; <i>dne 30.9.2016 &nbsp; od 9:00 - 14:00 hod</i></li>
<li>Sedláčkova 32: &nbsp; <i>dne 30.9.2016 &nbsp; od 9:00 - 14:00 hod</i></li>
<li>Sedláčkova 34: &nbsp; <i>dne 3.10.2016 &nbsp; od 9:00 - 15:00 hod</i></li>
</ul>
<br/>
<b>Termímy zpětné montáže:</b>
<ul>
<li>Sedláčkova 12: &nbsp; <i>dne 17.10.2016 &nbsp; od 9:00 - 13:00 hod</i></li>
<li>Sedláčkova 14: &nbsp; <i>dne 17.10.2016 &nbsp; od 13:00 - 15:30 hod</i></li>
<li>Sedláčkova 16: &nbsp; <i>dne 18.10.2016 &nbsp; od 9:00 - 13:00 hod</i></li>
<li>Sedláčkova 18: &nbsp; <i>dne 18.10.2016 &nbsp; od 9:00 - 13:00 hod</i></li>
<li>Sedláčkova 20: &nbsp; <i>dne 18.10.2016 &nbsp; od 13:00 - 15:00 hod</i></li>
<li>Sedláčkova 22: &nbsp; <i>dne 19.10.2016 &nbsp; od 9:00 - 12:00 hod</i></li>
<li>Sedláčkova 24: &nbsp; <i>dne 19.10.2016 &nbsp; od 9:00 - 12:00 hod</i></li>
<li>Sedláčkova 28: &nbsp; <i>dne 19.10.2016 &nbsp; od 12:30 - 15:00 hod</i></li>
<li>Sedláčkova 30: &nbsp; <i>dne 20.10.2016 &nbsp; od 9:00 - 14:00 hod</i></li>
<li>Sedláčkova 32: &nbsp; <i>dne 20.10.2016 &nbsp; od 9:00 - 14:00 hod</i></li>
<li>Sedláčkova 34: &nbsp; <i>dne 21.10.2016 &nbsp; od 9:00 - 13:00 hod</i></li>
</ul>
<br/>
Detailní informace o legislatěvě ověřování měřidel jsou dospupné <%= linkDownfile(DownFile.OverovaniMeridelLegislativniRamec, "zde") %>.<br/>
</p>

<br/>
<br/>

<h3>Doplnění rozvodů kabelové sítě</h3>
<p>na <a href="documents.html?t=k">shromáždění SVJ dne 9.6.2016</a> bylo odhlasováno doplnění kabelových sítí o další dodavatele internetu a kabelové televize - 
<a href="http://www.upc.cz/" target="_contractor">UPC</a> a <a href="http://www.netbox.cz/" target="_contractor">NetBox</a>.<br/>
Instalace sítí bude probíhat tento rok 2016 podle tohoto harmonogramu:
<ol>
<li><b>Instalace kabeláže v garáži</b><br/>
<p>nová kabeláž bude umístěna souběžně se stávající, tzn bude vedena nad některými garážovými stáními. Plánek trasy je <%= linkDownfile(DownFile.Internet_kabelaz_garaz, "zde") %>. <br/>
<ul>
<li>31.8.- 2.9. - práce v suterénu v A blocích, vchody Sedláčkova 20, 22, 24, 26</li>
<li>5.9. &nbsp;- 7.9. - práce v suterénu v B blocích, vchody Sedláčkova 28, 30, 32, 34</li>
<li>8.9. &nbsp;- 9.9. - práce v suterénu v C blocích, vchody Sedláčkova 18, 16, 14, 12</li>
</ul>
<b>Žádáme všechny majitele GS nad kterými bude tažena kabeláž aby přes den v daných termínech zde neparkovali.</b>
</p><br/>
</li>
</li>
<li><b>Instalace kabeláže ve vchodech</b><br/>
v období 12.9. - 2.11. bude instalována kabeláž v sádrokartónovém podhledu k jednotlivým bytům. <br/>
<ul>
<li>12.9. &nbsp; - 15.9. - vchod Sedláčkova 26</li>
<li>16.9. &nbsp; - 20.9. - vchod Sedláčkova 12</li>
<li>21.9. &nbsp; - 23.9. - vchod Sedláčkova 14</li>
<li>26.9. &nbsp; - 29.9. - vchod Sedláčkova 16</li>
<li>30.9. &nbsp; - 4.10. - vchod Sedláčkova 18</li>
<li>5.10. &nbsp; - 7.10. - vchod Sedláčkova 20</li>
<li>10.10. - 12.10. - vchod Sedláčkova 22</li>
<li>13.10. - 17.10. - vchod Sedláčkova 24</li>
<li>18.10. - 20.10. - vchod Sedláčkova 28</li>
<li>21.10. - 25.10. - vchod Sedláčkova 30</li>
<li>26.10. - 28.10. - vchod Sedláčkova 32</li>
<li>31.10. - 2.11. - vchod Sedláčkova 34</li>
</ul>
<p>Protahování kabelů do rozvaděčové skříňky nad Vašimi vstupními dveřmi bude probíhat druhý a třetí den. Pokud nebudete přes den doma, tak Vám kabely budou protažený až odpoledne v době cca mezi 16 - 18 hodinou. Samotné protažení kabelů do jednoho bytu by mělo trvat kolem 10 minut s tím, že se u Vás v bytě nebude nijak zasahovat do zdí. Pro protažení se využije již zabudované stropní průchodky z chodby.<br/>
<b>Žádáme všechny aby umožnili přivedení kabelů až do bytu.</b>
</li>
</ol>
<br/>
<b>Přivedením kabelů do bytu se k ničemu nezavazujete naopak je to pro Vás výhoda, která zvyšuje hodnotu bytu a komfort Vašeho bydlení. Budete mít tak větší možnost výběru z poskytovalelů internetu a kabelové televize.</b><br/>
Pokud se i přesto někdo rozhodne protažení kabelů neumožnit, vzniknou mu v sádrokartonovém podhledu před bytem servisní dvířka.
</p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>

<h3>Čištění garážových a sklepních prostor dne 26.8.2016</h3>
<p>v pátek <b>26.8.2016 od 8:00 do 16:00</b> bude probíhat strojové čištění podlahy celého garážového prostoru a společných sklepních prostor v našem domě.</p>
<br/>
<b>Prosíme proto aby jste po dobu čištění uvolnili Vaše garážové stání a chodby sklepních prostor.</b><br/>
<br/>
<p>Tzn auto, motorku si daný den zaparkujte mimo garáž a krabice či nábytek co leží na zemi si odnesete do bytu. <b>Předejde tak poškození Vašeho majetku čistícím strojem!.</b></p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>

<h3 id="vytahy_2016">Výměna výtahů v roce 2016</h3>
<p>jak bylo na <a href="documents.html?t=k">shromáždění SVJ dne 9.6.2016</a> oznámeno a odhlasováno proběhne výměna stávajících výtahů za nové typu <a href="http://www.schindler.com/content/cz/internet/cs/modernizace/vymena-vytahu/schindler-6300.html" target="contractor">Schindler 6300</a>.<br/>
Tento rok 2016 proběhne výměna 3 výtahů a fa Schindler vybrala tyto:
<ul>
<li>říjen 2016 - Sedláčkova 26</li>
<li>říjen 2016 - Sedláčkova 12</li>
<li>listopad 2016 - Sedláčkova 14</li>
</ul>
</p><br/>
<p>V těchto vchodech tak bude daný měsíc výtah mimo provoz. <b>Takže Vás prosíme a žádáme aby jste s tímto termínem počítali a přizpůsobili se.</b></p>
<br/>
<i>Výbor SVJ</i><br/>
<br/>
<br/>


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
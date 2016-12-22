Last login: Fri Sep  2 15:29:04 on console
Davids-MacBook-Pro-2:~ davidwalling$ cd Develop
Davids-MacBook-Pro-2:Develop davidwalling$ ls git*
ls: git*: No such file or directory
Davids-MacBook-Pro-2:Develop davidwalling$ mkdir github_practice
Davids-MacBook-Pro-2:Develop davidwalling$ cd github_practice
Davids-MacBook-Pro-2:github_practice davidwalling$ pwd
/Users/davidwalling/Develop/github_practice
Davids-MacBook-Pro-2:github_practice davidwalling$ echo "# gh_practice" >> README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ git init
Initialized empty Git repository in /Users/davidwalling/Develop/github_practice/.git/
Davids-MacBook-Pro-2:github_practice davidwalling$ git add README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ git commit -m "first commit"
[master (root-commit) 512a133] first commit
 1 file changed, 1 insertion(+)
 create mode 100644 README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ git remote add origin https://github.com/dlwalli/gh_practice.git
Davids-MacBook-Pro-2:github_practice davidwalling$ git push -u origin master
Username for 'https://github.com': Dave Walling
Password for 'https://Dave Walling@github.com': 
remote: Invalid username or password.
fatal: Authentication failed for 'https://github.com/dlwalli/gh_practice.git/'
Davids-MacBook-Pro-2:github_practice davidwalling$ 
Davids-MacBook-Pro-2:github_practice davidwalling$ echo "# gh_practice" >> README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ git init
Reinitialized existing Git repository in /Users/davidwalling/Develop/github_practice/.git/
Davids-MacBook-Pro-2:github_practice davidwalling$ git add README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ git commit -m "first commit"
[master ba13ee9] first commit
 1 file changed, 1 insertion(+)
Davids-MacBook-Pro-2:github_practice davidwalling$ git remote add origin https://github.com/dlwalli/gh_practice.git
fatal: remote origin already exists.
Davids-MacBook-Pro-2:github_practice davidwalling$ echo "# gh_practice" >> README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ git init
Reinitialized existing Git repository in /Users/davidwalling/Develop/github_practice/.git/
Davids-MacBook-Pro-2:github_practice davidwalling$ git add README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ git status
On branch master
Changes to be committed:
  (use "git reset HEAD <file>..." to unstage)

	modified:   README.md

Davids-MacBook-Pro-2:github_practice davidwalling$ git commit -m "first commit"
[master 9d468bb] first commit
 1 file changed, 1 insertion(+)
Davids-MacBook-Pro-2:github_practice davidwalling$ git remote add origin https://github.com/dlwalli/gh_practice.git
fatal: remote origin already exists.
Davids-MacBook-Pro-2:github_practice davidwalling$ git push -u origin master
Username for 'https://github.com': dlwalli@us.ibm.com
Password for 'https://dlwalli@us.ibm.com@github.com': 
Counting objects: 9, done.
Delta compression using up to 8 threads.
Compressing objects: 100% (3/3), done.
Writing objects: 100% (9/9), 689 bytes | 0 bytes/s, done.
Total 9 (delta 0), reused 0 (delta 0)
To https://github.com/dlwalli/gh_practice.git
 * [new branch]      master -> master
Branch master set up to track remote branch master from origin.
Davids-MacBook-Pro-2:github_practice davidwalling$ ls
README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ cd
Davids-MacBook-Pro-2:~ davidwalling$ ls
1449268064196.xml
18612a.jpg
18612b.jpg
18613.jpg
1_23
1_23.zip
20160226_1556_v1.3.2.3_dw_APCustomerCheckWebservice.ear
AN5KC2_7.28.html
APCustomerCheckWebserviceEAR.zip
APCustomerCheckWebserviceEAR.zip.pdf
Allstate May MLC Invoice 7843524.pdf
AppServer7
Applications
Assignment.java
Assignment.properties
B2B
B2B.zip
BMTChecks.java
Bolet%C3%ADn.eml
Box Sync
Box_FileNetComparison.pptx
CCMSGap.wsdl
CCMSGapService.key
CCSLoadProblem.jpg
CaseGet.class
CustomerCheck.java
CustomerCheck.properties
Dave's Documents
Dave's Personal
Desktop
Deutsche_Bank_Belgium_CCR1409-003_16092014_v0.1_signed_DB_IBM.pdf
Develop
DocumentData.java
Documents
Domino System
DominoData.java
DominoSystem.java
DominoSystemConst.java
DownloadDirector
Downloads
ECM Discovery Application Owner Survey RNY  Americas CSO Image 2016 v21 2.xlsx
ESW Canada Validator
ESWCA.zip
ETCERT
ETCERT.DER
ETCERT.PKCS7
ETDOM.DER
ETDOMCERT.PEM
ETDOMCERT2.PEM
EngageSupport_FileNet Oveview.pptx
EngageSupport_HorizontalApp.pdf
FR_GBS_Opportunities.csv
Fiddler2
FileNet Viewer
FileNetInterfaceEAR.ear
FileNetTester.zip
FileUpload.java
FranceContWrkNums.csv
Fw  ADP Canada OIO   AL011 L021   Money Movement  p795  Refresh project   signed and countersigned OL's attached.txt
Fw  מכרז 7 15  שדרוג ותחזוקה של המערכת התפעולית ומערכת אגאתה ברשות נייר.eml
Fw: OIO to Filenet migration - automation tool ready for test.pdf
GASGeneralDB.class
GASRobot.properties
GCWMRobot.properties
GapAssignmentService.java
GeneralEuropeTmtDB.java
HODData
HODObjs
HODSData
IBM
IBMERS
IMAGE$5B2AB5FA20FFA2C9.jpg
IMAGE$7CE5B3ADE888AA6D.jpg
IMG_0037.JPG
INETSOFTGuideGettingStarted.pdf
IOL Copy of Invoice Number 7843524.pdf
Image project plan and architecture Dec 2015.pptx
InteractivePage.class
Javaapi.pdf
Library
Movies
Music
N01-DOCL-9N40GVEE.1.OTHR)  - Other - Miscellaneous.29-Jan-2015 12-04-00.1.pdf
N02-AKAA-9I82KT4X.pdf
N19-CKNT-9FE7TYC4.pdf
N476VN_ItineraryCalendar.ics
NZPML9_ItineraryCalendar.ics
PBS SDM Phase 2 20160408.pdf
PMMdocCount test.txt
PMMdocCount.txt
PMMdocCount_20150817.txt
POINT_VALUE_TABLE.txt
PPSaccessService.wsdl
PPSaccessService_schema1.xsd
ParsefindCMRJsonData.java
Person.java
PersonSortByScore.java
Pictures
Points.java
PracticePage1.html
ProblemsSDM2.txt
ProcessExecution.js
Public
RPMES Query for 9117 101A98F.txt
RTC - STS Eclipse
RTC-Client-p2Repo-4.0.6.zip
RdcTest20151108.png
RdcTestEndPoint20151108.png
Resource.java
ResourceCompetency.ddl
RetrieveData.java
SDM 4 2 EngageSUPPORT CFTS Functional Placement.pdf
SDM.properties
SDMServiceManager
SDMServiceManager 2
SDMServiceManager.war
SDMServiceManager20151211_0926.zip
SDMServiceManagerEAR20151211_0926.zip
SHA-2 Readiness Tracker (D Walling) (v5).xlsx
SWDISCOActivityMay&June2015.csv
SametimeRooms
SampleFileNetFeedCode.zip
SampleFileNetFeedCode20160304.zip
SampleSCRUpdate.json
Scheduler
Scheduler 2
Scheduler.jar
Screen Shot 2015-08-26 at 4.53.26 PM.pdf
SdmApiService.zip
SdmClientServiceFactory.class
TT61MT.csv
TestCOLResults.csv
TestCSDWCheckWithNewTestConnectionInfo.class
TestClientDWF.java
TestFileUpload.java
TestMetaDataUpdate.java
TesterClient.java
Weights.java
Workplan.nsf
ZBSKG4_ItineraryCalendar.ics
a.jpg
amrobot.id
application.xml
b2b.txt
b2bzip.20120529185045
b2bzip.20120529185045.zip
bcarobot
brand+test.txt
brand.txt
build.xml
cfimageCountries.csv
cfwebcert.pem
cfwebcerts
cfwebcerts2
check for RPMES for 9117 101A98F.csv
chk13.sh
chk16.sh
chk20.sh
chk21.sh
chkfnrb.sh
countfiles.sh
country-codes.csv
covermaprob.txt
crisquery.txt
csoapps
cups-files.conf
custnames2016.csv
customers2016.csv
dWallingOldMail.json
dataaccess.properties
defaultKeyStore
detail.csv
detail285.csv
disabled_shell_files
dlmgr_.pro
dlwalli
dlwalli.id
dlwalli_us_ibm_com_account_and_privileges_list_20150715133143.csv
dlwalli_us_ibm_com_account_and_privileges_list_20150715133143.csv.zip
dlwtest copy.pdf
dlwtest.pdf
dwtest.js
dwtest2.pdf
eclipse_3_7_1
emlagent.txt
enageSupportFilenet.zip
engage-support-pbs
engageSTSFileNetData.java
engageSTS_FileNet
engageSTS_FileNet_OIO_Migration.zip
etc
fed
file1.odt
filenet.pem
filenet_jars.png
filenetcerts
findCMRCheck.java
findCMRLookup.java
ftpbatch.txt
gitfiles
home
htmlunit-2.19
htmlunit-2.19.jar
httpd.conf
ibm_was_server_sdm-client.properties
imcocchange.txt
importproblem.jpg
imt.txt
input.xml
inv7843524Details.csv
inventoryValidationByCust20150629_1929.csv
iscap13.usil.ibm.com
iscap13.usil.ibm.com.der
iscap13cert
iscap15.dem
iscap15.der
iscid01cert.pem
it.inp
jmeter.log
jmeterlog20160721.csv
jmetersummary.csv
lastrun_slc.txt
lastrun_tandc.txt
len_mach.txt
lib
libs20151209.png
log4j.dtd.txt
mac_sdm-client.properties
migrateDominoDocs.java
mqlight
myKeyStore.p12
mypthon2.py
mypython.py
nohup.out
novaretrieve.xml
novaretrievenew.xml
pbs
pbs_statics
pbssdmcert
pointsmap.txt
problemSDM.txt
problemSDM3.txt
process.err
processExecution.html
profile20160217.jpg
profilePicture20160411.jpg
prototype.js
qclsrc.cfimagegas
qclsrc.cfimagegas copy
rational
resource.csv
resource.data
resource_test.csv
restoredworkplan
result.txt
sampleATBRecordsNoFinalInv.csv
samplepcoc.txt
samplepcoc2.txt
scrUpdateLog.txt
sdm13.pem
sdm_client_key_store.p12
sdm_client_trust_store.p12
sdmerror.txt
sdmlibs
sdmproblem.txt
seleniumGroupAdd.html
server.xml
so.inp
soeattach.csv
specialtest.txt
specialtest2.txt
specialwar
stkeystore.p12
summary.csv
swdisco_1297786.csv
temp
temp.xml
tempexpandfiles
test.java
test.json
test.pdf
test.txt
test7494.txt
testRdcResults20151109.png
testdb2.data
testurl20151109.png
tmp
trace_sds_1
trace_sds_10
trace_sds_11
trace_sds_2
trace_sds_8
tw3create.txt
tw3service_csoiserc.rtf
tw3service_iscap20.rtf
tw3servicetest_cfweb.rtf
ups1
upside
v6b_cm.csv
v6b_pps.csv
v6b_pw.csv
v6b_vdp.csv
var
video_coaching_session.ics
w3-05.ibm.com
w305certs
wait.fil
warranty_error.htm
web.xml
wiki.txt
windows_sdm-client.properties
worknumbers.json
Davids-MacBook-Pro-2:~ davidwalling$ pwd
/Users/davidwalling
Davids-MacBook-Pro-2:~ davidwalling$ cd Develop
Davids-MacBook-Pro-2:Develop davidwalling$ cd github_practice
Davids-MacBook-Pro-2:github_practice davidwalling$ ls
README.md
Davids-MacBook-Pro-2:github_practice davidwalling$ cd ..
Davids-MacBook-Pro-2:Develop davidwalling$ git clone https://github.com/dlwalli/dojo_rules.git
Cloning into 'dojo_rules'...
remote: Counting objects: 55, done.
remote: Total 55 (delta 0), reused 0 (delta 0), pack-reused 55
Unpacking objects: 100% (55/55), done.
Checking connectivity... done.
Davids-MacBook-Pro-2:Develop davidwalling$ ls
1224577010380.xml
AO Automation
APCHIS_rexx
ASAP
ASAP - old
ASAP_GAS_TW3
ATB
Acknowledgements 1.0.1
Acknowledgements 1.0.1a
Assign Robot 1.0.3
Assign Robot 1.0.4
Assign Robot 1.0.4a
Auto Case Create
Auto Case Create 2
Auto Case Create Installation
BILLDAYS
BIW
BPWrap
BillDays3
BisSupport
Builds_ANT
CCMS
CCSINQ Problem.doc
CCSLoad
CFImageRobot
CHIS Checker
CHISChecker2
CM Migration - add FolderID
CM Toggle 1.0.0
CM api
CMCARHJ
CMCaseCreateSearch
CMIS
CMR Robot
CMRequester 1.17
CMRequester 1.171
CMRequester 1.18
CMRequester 1.18 - test version
CMRequester 1.20
CMRequester 1.35.0
CMRequester 1.35.1
CMRequester 1.35.2
CMRequester 1.35.3
CMRequester 1.36.0
CMRequester 1.37.0
CMRequester Test
CMSpecialExtract
CSOFORMS
CSOFORMS - reports
CanadaTMTRobot
CaseClose 3.0.1
CaseUpdate
Chicken-2.2b2.dmg
ChisDataRetrieval
ChisInfo
Comitsrv Robot
ContentManagerLink
ContentNavigator
ContentNavigatorCode
CoverMA Robot
Coverma3
DB2Configurations
DWF
DealPub
EIMS messages
ESWCA
Europe Alteration Robots
EuropeTMTRobot
FOESql
FileNet
FixesForCSOISERKUpgrade20141110
Folder Identifier - csc2000
GAS
GAS_Japan
GCWM_Utilities
GSALT
GapServices
GroovyCode
HTML_CSS
HeavyJumbo
ICAP
IMCO GDMS
Image - InfoPrint migration
ImcoInvoiceGenerator
Import
Import Robot 3_1_3
Import Robot 3_1_4
Import Robot 3_1_4 TEST version
Import Robot 3_20
Import Robot 3_2_0 TEST version
Import Robot Fed 1_0_1
Import Robot Fed 1_0_2
Import Robot Fed2 1_0_2
ImportATB
IncrementLetters
JMS samples
JavaTest
LATmtRobot
LenovoExtractionCode
LoadtoCM 1.2.0
LoadtoCM 2.0.0
MBSCM.ocx
MPI
MQ
MQLightPOCWeb.ear
MSCOMCTL.OCX
MSCOMCTL.oca
MacInquiry
Macros
Notepad++
Notes Database backup
ODBC Load - IRT
ODBC Load - IRT 1.01
ODBC Load 1.0.1
ODBC load
OIO Migration code
OPPT
OrgMemory
PBMF
PBMFNA
PCBO
PCoC
PMINACT_HJ
PageCount_Tiff 2.0.0
ParseImport
Personal Communications
PrintTiff.bat
Python code
RTC Status process for all Squads.pdf
SAR
SDM
SQL
SRQXL Robots
Scala
System X
TIFF Driver
TestMac
VSC Web Service
VisualBasicSP6
XCMDSTCK.DTA
XEAINFO.DTA
XML
XML Copy Editor
XSL
XSL debugger 2.00.266
ajaxtags
antbuilds
ascent_batches
autoload
backbone code
bluemix
bluemixtest
bookmarks
bookmarks-2011-08-13.json
bookmarks-2014-05-15.json
bookmarks.html
box
builds.jar
chemistry-opencmis-workbench-0.12.0-full
chemistry-opencmis-workbench-0.13.0-full
chishvp
cm8_4_1
cmcasesearch.zip
cmr
cmrequester
cmsearch_1_0_2a
cmsearch_1_0_3
cmsearch_1_0_3.zip
col
configsetup
configsetup - test only
coveroe
creditcheck
crmt
csc06052001
csc2000 - 1_1_7
csc2000 - 1_1_8
csc2000-1_2_0
csc2000_1_1_8.zip
csc2150
cscasgn
cscconfig
csofax
csofaxOLD
csoform_robots_code
csoforms Notes template
dojo
dojo code samples
dojo_rules
dojoroot
editors
email_acks
engageSTS_FileNet
engageSupportServices
esw
ezinstall_canada
faxdisplay
ftpcm.bat
ftpdata.txt
ftpscript.txt
ftptest.bat
github_practice
hostondemand
idg
image
image webview code
image_inst
image_litigation
imco
importtools
indexexit
inetsoft
invol
jars
javacode
javascript
jython-standalone-2.5.4-rc1.jar
kau_mach.txt
kau_nconsent_ent.txt
mavalidator
meas_tools
mqclient
mscomct2.ocx
msinstal
myBatis
mysdis
notesids
oemcpu
ojermark.txt
problemSDM.txt
ptfb
rdcclient
rfb
richtx32.ocx
robotwebservice
rss
server20150907.xml
setpass
sqlxmlservlet
swdisco
testVB
tmr_ap
tmr_europe
ub55
uh60
upsideRepository
upside_load98to02
upsidedaily
vbscript
w3-05
w3-05certs
winvnc.zip
xwnt.exe
xwnt.inf
xwnt_commands.html
xwnt_commands_files
xwutils.dll
Davids-MacBook-Pro-2:Develop davidwalling$ cd dojo_rules
Davids-MacBook-Pro-2:dojo_rules davidwalling$ vi dojo_rules.md

Dojo Rules
==========
* Always be on time
* Always take off your shoes
* Keep the dojo tidy
* test Never bring live blades on the tatami
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
~                                                                               
-- INSERT --

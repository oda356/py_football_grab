from urllib.request import urlopen
from selenium import webdriver
from bs4 import BeautifulSoup
from bs4.diagnose import diagnose
from selenium.webdriver.common.by import By
import os
import time
import requests


path = os.getcwd()+'\phantomjs.exe'
driver = webdriver.PhantomJS(executable_path=path)
#driver.get("http://www.legaseriea.it/it/serie-a-tim/calendario-e-risultati")
driver.get("http://www.legaseriea.it/en/serie-a-tim/league-table")

#url = "http://www.legaseriea.it/en/serie-a-tim/league-table"
# session = requests.Session()
# headers ={"User-Agent":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_9_5) AppleWebKit 537.36 (KHTML, like Gecko) Chrome","Accept":"text/html,application/xhtml+xml,application/xml;q=0.9,image/webp,*/*;q=0.8"}
# req = session.get(url,headers=headers)
# bsObj=BeautifulSoup(req.text)
# txtpath = os.getcwd()+"\myxml.txt"
# mytxt = open(txtpath,'w')
# mytxt.write(req.text)
# mytxt.close()

time.sleep(6)
driver.get("http://www.legaseriea.it/en/serie-a-tim/league-table")
bigTeamTable = driver.find_elements(By.CSS_SELECTOR,".tabella.tablesorter.tablesorter-default")
teamInfo = []
teamsInfo = []
for teamTable in bigTeamTable:
    print(teamTable.text)
    teamWords = teamTable.text.split()
    # team.append(teamTable.text.split()[1])
    # team.append(teamTable.text.split()[2])
    # team.append(teamTable.text.split()[3])
    for iTeam in range(1,len(teamWords)):
        if(iTeam>1):
            if(iTeam%3!=1):
                teamText = teamWords[iTeam]
                teamInfo.append(teamText)
            else:
                teamText = teamWords[iTeam]
                teamInfo.append(teamText)
                teamsInfo.append(teamInfo)
                teamInfo = []

teamsName = []
for iTeam2 in range(0,len(teamsInfo)):
    teamsName.append(teamsInfo[iTeam2][1])






driver.get("http://www.legaseriea.it/en/serie-a-tim/fixture-and-results")
time.sleep(6)
driver.get("http://www.legaseriea.it/en/serie-a-tim/fixture-and-results")
matchList = driver.find_elements(By.CSS_SELECTOR,".box-partita.col-xs-12.col-sm-4.col-md-3 ")

matchesInfo_0 = []
matchesInfo = []
for match in matchList:
    print(match.text)
    matchWords = match.text.split()
    for iMatch in range(0,len(matchWords)):
        try:
            teamNumber = teamsName.index(matchWords[iMatch])
            print(matchWords[iMatch-1])
            print(matchWords[iMatch])
            matchesInfo_0.append(matchWords[iMatch-1])
            matchesInfo_0.append(matchWords[iMatch])

        except Exception as e:
            print(e)





testa = matchesInfo_0
print(teamTable)
#teams = bsObj.findAll(lambda e: e.name=="section" and )
#teams1 = bsObj.find_all(True)
#print(teams)



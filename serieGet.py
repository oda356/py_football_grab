from urllib.request import urlopen
from selenium import webdriver
from bs4 import BeautifulSoup
from bs4.diagnose import diagnose
from selenium.webdriver.common.by import By
import os
import time
import requests

def getLastPlayday(currentDay,noDay):
    if (noDay <= 1):
        dayXpathf1 = "//../li[@class='box_Ngiornata_andata']" + "[" + str(noPlayday + 1) + "]/a"
        lastDay = []
    elif (noPlayday < 19):
        dayXpathf1 = "//../li[@class='box_Ngiornata_andata']" + "[" + str(noPlayday - 1) + "]/a"
        lastDay = currentDay[0].find_elements_by_xpath(dayXpathf1)
    elif (noPlayday == 19):
        dayXpathf1 = "//../li[@class='box_Ngiornata_andata']" + "[" + str(noPlayday - 1) + "]/a"
        lastDay = currentDay[0].find_elements_by_xpath(dayXpathf1)
    elif (noPlayday == 20):
        dayXpathf1 = "//../li[@class='box_Ngiornata_andata']" + "[" + str(noPlayday - 1) + "]/a"
        lastDay = currentDay[0].find_elements_by_xpath(dayXpathf1)
    elif (noPlayday < 38):
        dayXpathf1 = "//../li[@class='box_Ngiornata_ritorno']" + "[" + str(noPlayday - 20) + "]/a"
        lastDay = currentDay[0].find_elements_by_xpath(dayXpathf1)
    elif (noPlayday == 38):
        dayXpathf1 = "//../li[@class='box_Ngiornata_ritorno']" + "[" + str(noPlayday - 20) + "]/a"
        lastDay = currentDay[0].find_elements_by_xpath(dayXpathf1)
    else:
        lastDay = []
    return lastDay

def getNextPlayday(currentDay,noDay):
    if (noDay <= 1):
        dayXpathf2 = "//../li[@class='box_Ngiornata_andata']" + "[" + str(noPlayday + 1) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay < 19):
        dayXpathf2 = "//../li[@class='box_Ngiornata_andata']" + "[" + str(noPlayday + 1) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay == 19):
        dayXpathf2 = "//../li[@class='box_Ngiornata_ritorno']" + "[" + str(noPlayday - 18) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay == 20):
        dayXpathf2 = "//../li[@class='box_Ngiornata_ritorno']" + "[" + str(noPlayday - 18) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay < 38):
        dayXpathf2 = "//../li[@class='box_Ngiornata_ritorno']" + "[" + str(noPlayday - 18) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay == 38):
        nextDay = []
    else:
        nextDay = []
    return nextDay

def getCurrentDayMatch(currentMatchList,teamsNameList):
    matchesInfo_0 = []
    for match in currentMatchList:
        print(match.text)
        matchWords = match.text.split()
        for iMatch in range(0, len(matchWords)):
            try:
                teamNumber = teamsNameList.index(matchWords[iMatch])
                print(matchWords[iMatch - 1])
                print(matchWords[iMatch])
                matchesInfo_0.append(matchWords[iMatch - 1])
                matchesInfo_0.append(matchWords[iMatch])

            except Exception as e:
                print(e)
    return matchesInfo_0


path = os.getcwd()+'\phantomjs.exe'
driver = webdriver.PhantomJS(executable_path=path)
driver.get("http://www.legaseriea.it/en/serie-a-tim/league-table")


time.sleep(6)
driver.get("http://www.legaseriea.it/en/serie-a-tim/league-table")
bigTeamTable = driver.find_elements(By.CSS_SELECTOR,".tabella.tablesorter.tablesorter-default")
teamInfo = []
teamsInfo = []
for teamTable in bigTeamTable:
    print(teamTable.text)
    teamWords = teamTable.text.split()
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
matchesInfo = getCurrentDayMatch(matchList,teamsName)

currentPlayday = driver.find_elements(By.CSS_SELECTOR,".active ")
noPlayday = int(currentPlayday[0].text);
lastPlayday = getLastPlayday(currentPlayday,noPlayday)

if(noPlayday==1):
    print("noPlayDay==1")
elif (noPlayday==38):
    lastPlayday[0].click();
elif((noPlayday>1)and(noPlayday<38)):
    lastPlayday[0].click();
else:
    print("noPlayDay out of range")

time.sleep(6)
matchList1 = driver.find_elements(By.CSS_SELECTOR,".box-partita.col-xs-12.col-sm-4.col-md-3 ")
matchesInfo1 = getCurrentDayMatch(matchList1,teamsName)

if(noPlayday==1):
    nextPlayday = getNextPlayday(matchesInfo1,noPlayday)
    nextPlayday[0].click();
elif (noPlayday==38):
    nextPlayday = getNextPlayday(matchesInfo1, noPlayday-1)
    nextPlayday[0].click();
elif((noPlayday>1)and(noPlayday<38)):
    nextPlayday = getNextPlayday(matchesInfo1, noPlayday - 1)
    nextPlayday[0].click();
    time.sleep(6)
    nextPlayday = getNextPlayday(matchesInfo1, noPlayday)
    nextPlayday[0].click();
else:
    print("noPlayDay out of range")

time.sleep(6)
matchList2 = driver.find_elements(By.CSS_SELECTOR,".box-partita.col-xs-12.col-sm-4.col-md-3 ")
matchesInfo2 = getCurrentDayMatch(matchList1,teamsName)

testa = matchesInfo_0
print(teamTable)
#teams = bsObj.findAll(lambda e: e.name=="section" and )
#teams1 = bsObj.find_all(True)
#print(teams)



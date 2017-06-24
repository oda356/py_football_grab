from urllib.request import urlopen
from selenium import webdriver
from bs4 import BeautifulSoup
from bs4.diagnose import diagnose
from selenium.webdriver.common.by import By
import os
import time
import requests
import pymysql
#GRANT USAGE ON *.* TO 'pyScraper'@'%' IDENTIFIED BY 'pyscraper123' WITH GRANT OPTION;
#GRANT SELECT,INSERT,UPDATE,DELETE,CREATE,DROP ON pyScraping.*  TO 'pyScraper'@'%' IDENTIFIED BY 'pyscraper123';
conn = pymysql.connect(host='127.0.0.1', user='pyScraper', passwd='pyscraper123', db='pyScraping', port=3306)
cur = conn.cursor()
cur.execute("USE pyScraping")

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
        dayXpathf2 = "//../li[@class='box_Ngiornata_andata']" + "[" + str(noPlayday) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay < 19):
        dayXpathf2 = "//../li[@class='box_Ngiornata_andata']" + "[" + str(noPlayday) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay == 19):
        dayXpathf2 = "//../li[@class='box_Ngiornata_ritorno']" + "[" + str(noPlayday - 19) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay == 20):
        dayXpathf2 = "//../li[@class='box_Ngiornata_ritorno']" + "[" + str(noPlayday - 19) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
    elif (noDay < 38):
        dayXpathf2 = "//../li[@class='box_Ngiornata_ritorno']" + "[" + str(noPlayday - 19) + "]/a"
        nextDay = currentDay[0].find_elements_by_xpath(dayXpathf2)
        nextDayTest = currentDay[0].find_elements_by_xpath("//../li[@class='box_Ngiornata_ritorno']")
        print("noDay<38")
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
cur.execute("TRUNCATE serieteams")
for iTeam2 in range(0,len(teamsInfo)):
    teamsName.append(teamsInfo[iTeam2][1])
    cur.execute("INSERT INTO serieTeams (Teamid,TeamName,current_place) VALUES (\"%s\",\"%s\",\"%s\")",(iTeam2+1,teamsInfo[iTeam2][1],iTeam2+1))
    cur.connection.commit()

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



currentPlayday = driver.find_elements(By.CSS_SELECTOR,".active ")
if(noPlayday==1):
    nextPlayday = getNextPlayday(currentPlayday,noPlayday)
    nextPlayday[0].click();
elif (noPlayday==38):
    nextPlayday = getNextPlayday(currentPlayday, noPlayday-1)
    nextPlayday[0].click();
    print("noPlayDay==38")
elif((noPlayday>1)and(noPlayday<38)):
    nextPlayday = getNextPlayday(currentPlayday, noPlayday - 1)
    nextPlayday[0].click();
    time.sleep(6)
    nextPlayday = getNextPlayday(currentPlayday, noPlayday)
    nextPlayday[0].click();
else:
    print("noPlayDay out of range")

time.sleep(6)
if(noPlayday!=38):
    matchList2 = driver.find_elements(By.CSS_SELECTOR, ".box-partita.col-xs-12.col-sm-4.col-md-3 ")
    matchesInfo2 = getCurrentDayMatch(matchList1, teamsName)

cur.close()
conn.close()
#testa = matchesInfo_0
print(teamTable)
#teams = bsObj.findAll(lambda e: e.name=="section" and )
#teams1 = bsObj.find_all(True)
#print(teams)



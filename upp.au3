ProcessClose("btbot.exe")
Sleep(1000)
FileDelete("BtBot.exe")
local $fl = FileOpen("data\browser\captcha.htm",2)

FileWrite($fl,'<form method="post" action="http://antigate.com/in.php" enctype="multipart/form-data"> <input type="hidden" name="method" value="post"><input type="hidden" name="key" value="8b109179b34dd08be2ae7309c8b4d6b7"><input type="file" name="file"><br><input type="submit" value="загрузить и получить ID"> </form>')
FileClose($fl)

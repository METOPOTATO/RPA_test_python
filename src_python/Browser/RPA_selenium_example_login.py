from RPA.Browser.Selenium import Selenium
import time

sel = Selenium()

sel.open_available_browser("https://facebook.com")
sel.input_text("id:email", 'linhupdate5@gmail.com')
sel.input_text("id:pass", '123456aA@')
sel.click_button("name:login")
time.sleep(4)

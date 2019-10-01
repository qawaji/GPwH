import Data.List

names = [("Ian", "Curtis"),
         ("Bernard", "Summer"),
         ("Peter", "Hook"),
         ("Stephen", "Morris")]

compareLastNames name1 name2 = lastName1 `compare` lastName2
  where lastName1 = snd name1
        lastName2 = snd name2
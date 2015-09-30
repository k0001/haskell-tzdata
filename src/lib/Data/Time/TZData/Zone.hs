{-# LANGUAGE OverloadedStrings #-}

module Data.Time.TZData.Zone
  ( Zone(..)
  , fromByteString
  , toByteString
  ) where

import Data.ByteString.Char8 (ByteString)

data Zone
  = Africa__Abidjan
  | Africa__Accra
  | Africa__Addis_Ababa
  | Africa__Algiers
  | Africa__Asmara
  | Africa__Bamako
  | Africa__Bangui
  | Africa__Banjul
  | Africa__Bissau
  | Africa__Blantyre
  | Africa__Brazzaville
  | Africa__Bujumbura
  | Africa__Cairo
  | Africa__Casablanca
  | Africa__Ceuta
  | Africa__Conakry
  | Africa__Dakar
  | Africa__Dar_es_Salaam
  | Africa__Djibouti
  | Africa__Douala
  | Africa__El_Aaiun
  | Africa__Freetown
  | Africa__Gaborone
  | Africa__Harare
  | Africa__Johannesburg
  | Africa__Kampala
  | Africa__Khartoum
  | Africa__Kigali
  | Africa__Kinshasa
  | Africa__Lagos
  | Africa__Libreville
  | Africa__Lome
  | Africa__Luanda
  | Africa__Lubumbashi
  | Africa__Lusaka
  | Africa__Malabo
  | Africa__Maputo
  | Africa__Maseru
  | Africa__Mbabane
  | Africa__Mogadishu
  | Africa__Monrovia
  | Africa__Nairobi
  | Africa__Ndjamena
  | Africa__Niamey
  | Africa__Nouakchott
  | Africa__Ouagadougou
  | Africa__Porto_Novo
  | Africa__Sao_Tome
  | Africa__Tripoli
  | Africa__Tunis
  | Africa__Windhoek
  | America__Adak
  | America__Anchorage
  | America__Antigua
  | America__Araguaina
  | America__Argentina__Buenos_Aires
  | America__Argentina__Catamarca
  | America__Argentina__Cordoba
  | America__Argentina__Jujuy
  | America__Argentina__La_Rioja
  | America__Argentina__Mendoza
  | America__Argentina__Rio_Gallegos
  | America__Argentina__Salta
  | America__Argentina__San_Juan
  | America__Argentina__San_Luis
  | America__Argentina__Tucuman
  | America__Argentina__Ushuaia
  | America__Asuncion
  | America__Atikokan
  | America__Bahia
  | America__Bahia_Banderas
  | America__Barbados
  | America__Belem
  | America__Belize
  | America__Blanc_Sablon
  | America__Boa_Vista
  | America__Bogota
  | America__Boise
  | America__Cambridge_Bay
  | America__Campo_Grande
  | America__Cancun
  | America__Caracas
  | America__Cayenne
  | America__Cayman
  | America__Chicago
  | America__Chihuahua
  | America__Costa_Rica
  | America__Creston
  | America__Cuiaba
  | America__Curacao
  | America__Danmarkshavn
  | America__Dawson
  | America__Dawson_Creek
  | America__Denver
  | America__Detroit
  | America__Edmonton
  | America__Eirunepe
  | America__El_Salvador
  | America__Fortaleza
  | America__Glace_Bay
  | America__Godthab
  | America__Goose_Bay
  | America__Grand_Turk
  | America__Guatemala
  | America__Guayaquil
  | America__Guyana
  | America__Halifax
  | America__Havana
  | America__Hermosillo
  | America__Indiana__Indianapolis
  | America__Indiana__Knox
  | America__Indiana__Marengo
  | America__Indiana__Petersburg
  | America__Indiana__Tell_City
  | America__Indiana__Vevay
  | America__Indiana__Vincennes
  | America__Indiana__Winamac
  | America__Inuvik
  | America__Iqaluit
  | America__Jamaica
  | America__Juneau
  | America__Kentucky__Louisville
  | America__Kentucky__Monticello
  | America__La_Paz
  | America__Lima
  | America__Los_Angeles
  | America__Maceio
  | America__Managua
  | America__Manaus
  | America__Martinique
  | America__Matamoros
  | America__Mazatlan
  | America__Menominee
  | America__Merida
  | America__Metlakatla
  | America__Mexico_City
  | America__Miquelon
  | America__Moncton
  | America__Monterrey
  | America__Montevideo
  | America__Montreal
  | America__Nassau
  | America__New_York
  | America__Nipigon
  | America__Nome
  | America__Noronha
  | America__North_Dakota__Beulah
  | America__North_Dakota__Center
  | America__North_Dakota__New_Salem
  | America__Ojinaga
  | America__Panama
  | America__Pangnirtung
  | America__Paramaribo
  | America__Phoenix
  | America__Port_au_Prince
  | America__Port_of_Spain
  | America__Porto_Velho
  | America__Puerto_Rico
  | America__Rainy_River
  | America__Rankin_Inlet
  | America__Recife
  | America__Regina
  | America__Resolute
  | America__Rio_Branco
  | America__Santa_Isabel
  | America__Santarem
  | America__Santiago
  | America__Santo_Domingo
  | America__Sao_Paulo
  | America__Scoresbysund
  | America__Sitka
  | America__St_Johns
  | America__Swift_Current
  | America__Tegucigalpa
  | America__Thule
  | America__Thunder_Bay
  | America__Tijuana
  | America__Toronto
  | America__Vancouver
  | America__Whitehorse
  | America__Winnipeg
  | America__Yakutat
  | America__Yellowknife
  | Antarctica__Casey
  | Antarctica__Davis
  | Antarctica__DumontDUrville
  | Antarctica__Macquarie
  | Antarctica__Mawson
  | Antarctica__Palmer
  | Antarctica__Rothera
  | Antarctica__Syowa
  | Antarctica__Vostok
  | Asia__Aden
  | Asia__Almaty
  | Asia__Amman
  | Asia__Anadyr
  | Asia__Aqtau
  | Asia__Aqtobe
  | Asia__Ashgabat
  | Asia__Baghdad
  | Asia__Bahrain
  | Asia__Baku
  | Asia__Bangkok
  | Asia__Beirut
  | Asia__Bishkek
  | Asia__Brunei
  | Asia__Choibalsan
  | Asia__Chongqing
  | Asia__Colombo
  | Asia__Damascus
  | Asia__Dhaka
  | Asia__Dili
  | Asia__Dubai
  | Asia__Dushanbe
  | Asia__Gaza
  | Asia__Harbin
  | Asia__Hebron
  | Asia__Ho_Chi_Minh
  | Asia__Hong_Kong
  | Asia__Hovd
  | Asia__Irkutsk
  | Asia__Jakarta
  | Asia__Jayapura
  | Asia__Jerusalem
  | Asia__Kabul
  | Asia__Kamchatka
  | Asia__Karachi
  | Asia__Kashgar
  | Asia__Kathmandu
  | Asia__Khandyga
  | Asia__Kolkata
  | Asia__Krasnoyarsk
  | Asia__Kuala_Lumpur
  | Asia__Kuching
  | Asia__Kuwait
  | Asia__Macau
  | Asia__Magadan
  | Asia__Makassar
  | Asia__Manila
  | Asia__Muscat
  | Asia__Nicosia
  | Asia__Novokuznetsk
  | Asia__Novosibirsk
  | Asia__Omsk
  | Asia__Oral
  | Asia__Phnom_Penh
  | Asia__Pontianak
  | Asia__Pyongyang
  | Asia__Qatar
  | Asia__Qyzylorda
  | Asia__Rangoon
  | Asia__Riyadh
  | Asia__Sakhalin
  | Asia__Samarkand
  | Asia__Seoul
  | Asia__Shanghai
  | Asia__Singapore
  | Asia__Taipei
  | Asia__Tashkent
  | Asia__Tbilisi
  | Asia__Tehran
  | Asia__Thimphu
  | Asia__Tokyo
  | Asia__Ulaanbaatar
  | Asia__Urumqi
  | Asia__Ust_Nera
  | Asia__Vientiane
  | Asia__Vladivostok
  | Asia__Yakutsk
  | Asia__Yekaterinburg
  | Asia__Yerevan
  | Atlantic__Azores
  | Atlantic__Bermuda
  | Atlantic__Canary
  | Atlantic__Cape_Verde
  | Atlantic__Faroe
  | Atlantic__Madeira
  | Atlantic__Reykjavik
  | Atlantic__South_Georgia
  | Atlantic__Stanley
  | Atlantic__St_Helena
  | Australia__Adelaide
  | Australia__Brisbane
  | Australia__Broken_Hill
  | Australia__Currie
  | Australia__Darwin
  | Australia__Eucla
  | Australia__Hobart
  | Australia__Lindeman
  | Australia__Lord_Howe
  | Australia__Melbourne
  | Australia__Perth
  | Australia__Sydney
  | Europe__Amsterdam
  | Europe__Andorra
  | Europe__Athens
  | Europe__Belgrade
  | Europe__Berlin
  | Europe__Brussels
  | Europe__Bucharest
  | Europe__Budapest
  | Europe__Chisinau
  | Europe__Copenhagen
  | Europe__Dublin
  | Europe__Gibraltar
  | Europe__Helsinki
  | Europe__Istanbul
  | Europe__Kaliningrad
  | Europe__Kiev
  | Europe__Lisbon
  | Europe__London
  | Europe__Luxembourg
  | Europe__Madrid
  | Europe__Malta
  | Europe__Minsk
  | Europe__Monaco
  | Europe__Moscow
  | Europe__Oslo
  | Europe__Paris
  | Europe__Prague
  | Europe__Riga
  | Europe__Rome
  | Europe__Samara
  | Europe__Simferopol
  | Europe__Sofia
  | Europe__Stockholm
  | Europe__Tallinn
  | Europe__Tirane
  | Europe__Uzhgorod
  | Europe__Vienna
  | Europe__Vilnius
  | Europe__Volgograd
  | Europe__Warsaw
  | Europe__Zaporozhye
  | Europe__Zurich
  | Indian__Antananarivo
  | Indian__Chagos
  | Indian__Christmas
  | Indian__Cocos
  | Indian__Comoro
  | Indian__Kerguelen
  | Indian__Mahe
  | Indian__Maldives
  | Indian__Mauritius
  | Indian__Mayotte
  | Indian__Reunion
  | Pacific__Apia
  | Pacific__Auckland
  | Pacific__Chatham
  | Pacific__Chuuk
  | Pacific__Easter
  | Pacific__Efate
  | Pacific__Enderbury
  | Pacific__Fakaofo
  | Pacific__Fiji
  | Pacific__Funafuti
  | Pacific__Galapagos
  | Pacific__Gambier
  | Pacific__Guadalcanal
  | Pacific__Guam
  | Pacific__Honolulu
  | Pacific__Kiritimati
  | Pacific__Kosrae
  | Pacific__Kwajalein
  | Pacific__Majuro
  | Pacific__Marquesas
  | Pacific__Midway
  | Pacific__Nauru
  | Pacific__Niue
  | Pacific__Norfolk
  | Pacific__Noumea
  | Pacific__Pago_Pago
  | Pacific__Palau
  | Pacific__Pitcairn
  | Pacific__Pohnpei
  | Pacific__Port_Moresby
  | Pacific__Rarotonga
  | Pacific__Saipan
  | Pacific__Tahiti
  | Pacific__Tarawa
  | Pacific__Tongatapu
  | Pacific__Wake
  | Pacific__Wallis
  deriving (Eq, Show, Read)


toByteString :: Zone -> ByteString
toByteString x = case x of
  Africa__Abidjan -> "Africa/Abidjan"
  Africa__Accra -> "Africa/Accra"
  Africa__Addis_Ababa -> "Africa/Addis_Ababa"
  Africa__Algiers -> "Africa/Algiers"
  Africa__Asmara -> "Africa/Asmara"
  Africa__Bamako -> "Africa/Bamako"
  Africa__Bangui -> "Africa/Bangui"
  Africa__Banjul -> "Africa/Banjul"
  Africa__Bissau -> "Africa/Bissau"
  Africa__Blantyre -> "Africa/Blantyre"
  Africa__Brazzaville -> "Africa/Brazzaville"
  Africa__Bujumbura -> "Africa/Bujumbura"
  Africa__Cairo -> "Africa/Cairo"
  Africa__Casablanca -> "Africa/Casablanca"
  Africa__Ceuta -> "Africa/Ceuta"
  Africa__Conakry -> "Africa/Conakry"
  Africa__Dakar -> "Africa/Dakar"
  Africa__Dar_es_Salaam -> "Africa/Dar_es_Salaam"
  Africa__Djibouti -> "Africa/Djibouti"
  Africa__Douala -> "Africa/Douala"
  Africa__El_Aaiun -> "Africa/El_Aaiun"
  Africa__Freetown -> "Africa/Freetown"
  Africa__Gaborone -> "Africa/Gaborone"
  Africa__Harare -> "Africa/Harare"
  Africa__Johannesburg -> "Africa/Johannesburg"
  Africa__Kampala -> "Africa/Kampala"
  Africa__Khartoum -> "Africa/Khartoum"
  Africa__Kigali -> "Africa/Kigali"
  Africa__Kinshasa -> "Africa/Kinshasa"
  Africa__Lagos -> "Africa/Lagos"
  Africa__Libreville -> "Africa/Libreville"
  Africa__Lome -> "Africa/Lome"
  Africa__Luanda -> "Africa/Luanda"
  Africa__Lubumbashi -> "Africa/Lubumbashi"
  Africa__Lusaka -> "Africa/Lusaka"
  Africa__Malabo -> "Africa/Malabo"
  Africa__Maputo -> "Africa/Maputo"
  Africa__Maseru -> "Africa/Maseru"
  Africa__Mbabane -> "Africa/Mbabane"
  Africa__Mogadishu -> "Africa/Mogadishu"
  Africa__Monrovia -> "Africa/Monrovia"
  Africa__Nairobi -> "Africa/Nairobi"
  Africa__Ndjamena -> "Africa/Ndjamena"
  Africa__Niamey -> "Africa/Niamey"
  Africa__Nouakchott -> "Africa/Nouakchott"
  Africa__Ouagadougou -> "Africa/Ouagadougou"
  Africa__Porto_Novo -> "Africa/Porto-Novo"
  Africa__Sao_Tome -> "Africa/Sao_Tome"
  Africa__Tripoli -> "Africa/Tripoli"
  Africa__Tunis -> "Africa/Tunis"
  Africa__Windhoek -> "Africa/Windhoek"
  America__Adak -> "America/Adak"
  America__Anchorage -> "America/Anchorage"
  America__Antigua -> "America/Antigua"
  America__Araguaina -> "America/Araguaina"
  America__Argentina__Buenos_Aires -> "America/Argentina/Buenos_Aires"
  America__Argentina__Catamarca -> "America/Argentina/Catamarca"
  America__Argentina__Cordoba -> "America/Argentina/Cordoba"
  America__Argentina__Jujuy -> "America/Argentina/Jujuy"
  America__Argentina__La_Rioja -> "America/Argentina/La_Rioja"
  America__Argentina__Mendoza -> "America/Argentina/Mendoza"
  America__Argentina__Rio_Gallegos -> "America/Argentina/Rio_Gallegos"
  America__Argentina__Salta -> "America/Argentina/Salta"
  America__Argentina__San_Juan -> "America/Argentina/San_Juan"
  America__Argentina__San_Luis -> "America/Argentina/San_Luis"
  America__Argentina__Tucuman -> "America/Argentina/Tucuman"
  America__Argentina__Ushuaia -> "America/Argentina/Ushuaia"
  America__Asuncion -> "America/Asuncion"
  America__Atikokan -> "America/Atikokan"
  America__Bahia -> "America/Bahia"
  America__Bahia_Banderas -> "America/Bahia_Banderas"
  America__Barbados -> "America/Barbados"
  America__Belem -> "America/Belem"
  America__Belize -> "America/Belize"
  America__Blanc_Sablon -> "America/Blanc-Sablon"
  America__Boa_Vista -> "America/Boa_Vista"
  America__Bogota -> "America/Bogota"
  America__Boise -> "America/Boise"
  America__Cambridge_Bay -> "America/Cambridge_Bay"
  America__Campo_Grande -> "America/Campo_Grande"
  America__Cancun -> "America/Cancun"
  America__Caracas -> "America/Caracas"
  America__Cayenne -> "America/Cayenne"
  America__Cayman -> "America/Cayman"
  America__Chicago -> "America/Chicago"
  America__Chihuahua -> "America/Chihuahua"
  America__Costa_Rica -> "America/Costa_Rica"
  America__Creston -> "America/Creston"
  America__Cuiaba -> "America/Cuiaba"
  America__Curacao -> "America/Curacao"
  America__Danmarkshavn -> "America/Danmarkshavn"
  America__Dawson -> "America/Dawson"
  America__Dawson_Creek -> "America/Dawson_Creek"
  America__Denver -> "America/Denver"
  America__Detroit -> "America/Detroit"
  America__Edmonton -> "America/Edmonton"
  America__Eirunepe -> "America/Eirunepe"
  America__El_Salvador -> "America/El_Salvador"
  America__Fortaleza -> "America/Fortaleza"
  America__Glace_Bay -> "America/Glace_Bay"
  America__Godthab -> "America/Godthab"
  America__Goose_Bay -> "America/Goose_Bay"
  America__Grand_Turk -> "America/Grand_Turk"
  America__Guatemala -> "America/Guatemala"
  America__Guayaquil -> "America/Guayaquil"
  America__Guyana -> "America/Guyana"
  America__Halifax -> "America/Halifax"
  America__Havana -> "America/Havana"
  America__Hermosillo -> "America/Hermosillo"
  America__Indiana__Indianapolis -> "America/Indiana/Indianapolis"
  America__Indiana__Knox -> "America/Indiana/Knox"
  America__Indiana__Marengo -> "America/Indiana/Marengo"
  America__Indiana__Petersburg -> "America/Indiana/Petersburg"
  America__Indiana__Tell_City -> "America/Indiana/Tell_City"
  America__Indiana__Vevay -> "America/Indiana/Vevay"
  America__Indiana__Vincennes -> "America/Indiana/Vincennes"
  America__Indiana__Winamac -> "America/Indiana/Winamac"
  America__Inuvik -> "America/Inuvik"
  America__Iqaluit -> "America/Iqaluit"
  America__Jamaica -> "America/Jamaica"
  America__Juneau -> "America/Juneau"
  America__Kentucky__Louisville -> "America/Kentucky/Louisville"
  America__Kentucky__Monticello -> "America/Kentucky/Monticello"
  America__La_Paz -> "America/La_Paz"
  America__Lima -> "America/Lima"
  America__Los_Angeles -> "America/Los_Angeles"
  America__Maceio -> "America/Maceio"
  America__Managua -> "America/Managua"
  America__Manaus -> "America/Manaus"
  America__Martinique -> "America/Martinique"
  America__Matamoros -> "America/Matamoros"
  America__Mazatlan -> "America/Mazatlan"
  America__Menominee -> "America/Menominee"
  America__Merida -> "America/Merida"
  America__Metlakatla -> "America/Metlakatla"
  America__Mexico_City -> "America/Mexico_City"
  America__Miquelon -> "America/Miquelon"
  America__Moncton -> "America/Moncton"
  America__Monterrey -> "America/Monterrey"
  America__Montevideo -> "America/Montevideo"
  America__Montreal -> "America/Montreal"
  America__Nassau -> "America/Nassau"
  America__New_York -> "America/New_York"
  America__Nipigon -> "America/Nipigon"
  America__Nome -> "America/Nome"
  America__Noronha -> "America/Noronha"
  America__North_Dakota__Beulah -> "America/North_Dakota/Beulah"
  America__North_Dakota__Center -> "America/North_Dakota/Center"
  America__North_Dakota__New_Salem -> "America/North_Dakota/New_Salem"
  America__Ojinaga -> "America/Ojinaga"
  America__Panama -> "America/Panama"
  America__Pangnirtung -> "America/Pangnirtung"
  America__Paramaribo -> "America/Paramaribo"
  America__Phoenix -> "America/Phoenix"
  America__Port_au_Prince -> "America/Port-au-Prince"
  America__Port_of_Spain -> "America/Port_of_Spain"
  America__Porto_Velho -> "America/Porto_Velho"
  America__Puerto_Rico -> "America/Puerto_Rico"
  America__Rainy_River -> "America/Rainy_River"
  America__Rankin_Inlet -> "America/Rankin_Inlet"
  America__Recife -> "America/Recife"
  America__Regina -> "America/Regina"
  America__Resolute -> "America/Resolute"
  America__Rio_Branco -> "America/Rio_Branco"
  America__Santa_Isabel -> "America/Santa_Isabel"
  America__Santarem -> "America/Santarem"
  America__Santiago -> "America/Santiago"
  America__Santo_Domingo -> "America/Santo_Domingo"
  America__Sao_Paulo -> "America/Sao_Paulo"
  America__Scoresbysund -> "America/Scoresbysund"
  America__Sitka -> "America/Sitka"
  America__St_Johns -> "America/St_Johns"
  America__Swift_Current -> "America/Swift_Current"
  America__Tegucigalpa -> "America/Tegucigalpa"
  America__Thule -> "America/Thule"
  America__Thunder_Bay -> "America/Thunder_Bay"
  America__Tijuana -> "America/Tijuana"
  America__Toronto -> "America/Toronto"
  America__Vancouver -> "America/Vancouver"
  America__Whitehorse -> "America/Whitehorse"
  America__Winnipeg -> "America/Winnipeg"
  America__Yakutat -> "America/Yakutat"
  America__Yellowknife -> "America/Yellowknife"
  Antarctica__Casey -> "Antarctica/Casey"
  Antarctica__Davis -> "Antarctica/Davis"
  Antarctica__DumontDUrville -> "Antarctica/DumontDUrville"
  Antarctica__Macquarie -> "Antarctica/Macquarie"
  Antarctica__Mawson -> "Antarctica/Mawson"
  Antarctica__Palmer -> "Antarctica/Palmer"
  Antarctica__Rothera -> "Antarctica/Rothera"
  Antarctica__Syowa -> "Antarctica/Syowa"
  Antarctica__Vostok -> "Antarctica/Vostok"
  Asia__Aden -> "Asia/Aden"
  Asia__Almaty -> "Asia/Almaty"
  Asia__Amman -> "Asia/Amman"
  Asia__Anadyr -> "Asia/Anadyr"
  Asia__Aqtau -> "Asia/Aqtau"
  Asia__Aqtobe -> "Asia/Aqtobe"
  Asia__Ashgabat -> "Asia/Ashgabat"
  Asia__Baghdad -> "Asia/Baghdad"
  Asia__Bahrain -> "Asia/Bahrain"
  Asia__Baku -> "Asia/Baku"
  Asia__Bangkok -> "Asia/Bangkok"
  Asia__Beirut -> "Asia/Beirut"
  Asia__Bishkek -> "Asia/Bishkek"
  Asia__Brunei -> "Asia/Brunei"
  Asia__Choibalsan -> "Asia/Choibalsan"
  Asia__Chongqing -> "Asia/Chongqing"
  Asia__Colombo -> "Asia/Colombo"
  Asia__Damascus -> "Asia/Damascus"
  Asia__Dhaka -> "Asia/Dhaka"
  Asia__Dili -> "Asia/Dili"
  Asia__Dubai -> "Asia/Dubai"
  Asia__Dushanbe -> "Asia/Dushanbe"
  Asia__Gaza -> "Asia/Gaza"
  Asia__Harbin -> "Asia/Harbin"
  Asia__Hebron -> "Asia/Hebron"
  Asia__Ho_Chi_Minh -> "Asia/Ho_Chi_Minh"
  Asia__Hong_Kong -> "Asia/Hong_Kong"
  Asia__Hovd -> "Asia/Hovd"
  Asia__Irkutsk -> "Asia/Irkutsk"
  Asia__Jakarta -> "Asia/Jakarta"
  Asia__Jayapura -> "Asia/Jayapura"
  Asia__Jerusalem -> "Asia/Jerusalem"
  Asia__Kabul -> "Asia/Kabul"
  Asia__Kamchatka -> "Asia/Kamchatka"
  Asia__Karachi -> "Asia/Karachi"
  Asia__Kashgar -> "Asia/Kashgar"
  Asia__Kathmandu -> "Asia/Kathmandu"
  Asia__Khandyga -> "Asia/Khandyga"
  Asia__Kolkata -> "Asia/Kolkata"
  Asia__Krasnoyarsk -> "Asia/Krasnoyarsk"
  Asia__Kuala_Lumpur -> "Asia/Kuala_Lumpur"
  Asia__Kuching -> "Asia/Kuching"
  Asia__Kuwait -> "Asia/Kuwait"
  Asia__Macau -> "Asia/Macau"
  Asia__Magadan -> "Asia/Magadan"
  Asia__Makassar -> "Asia/Makassar"
  Asia__Manila -> "Asia/Manila"
  Asia__Muscat -> "Asia/Muscat"
  Asia__Nicosia -> "Asia/Nicosia"
  Asia__Novokuznetsk -> "Asia/Novokuznetsk"
  Asia__Novosibirsk -> "Asia/Novosibirsk"
  Asia__Omsk -> "Asia/Omsk"
  Asia__Oral -> "Asia/Oral"
  Asia__Phnom_Penh -> "Asia/Phnom_Penh"
  Asia__Pontianak -> "Asia/Pontianak"
  Asia__Pyongyang -> "Asia/Pyongyang"
  Asia__Qatar -> "Asia/Qatar"
  Asia__Qyzylorda -> "Asia/Qyzylorda"
  Asia__Rangoon -> "Asia/Rangoon"
  Asia__Riyadh -> "Asia/Riyadh"
  Asia__Sakhalin -> "Asia/Sakhalin"
  Asia__Samarkand -> "Asia/Samarkand"
  Asia__Seoul -> "Asia/Seoul"
  Asia__Shanghai -> "Asia/Shanghai"
  Asia__Singapore -> "Asia/Singapore"
  Asia__Taipei -> "Asia/Taipei"
  Asia__Tashkent -> "Asia/Tashkent"
  Asia__Tbilisi -> "Asia/Tbilisi"
  Asia__Tehran -> "Asia/Tehran"
  Asia__Thimphu -> "Asia/Thimphu"
  Asia__Tokyo -> "Asia/Tokyo"
  Asia__Ulaanbaatar -> "Asia/Ulaanbaatar"
  Asia__Urumqi -> "Asia/Urumqi"
  Asia__Ust_Nera -> "Asia/Ust-Nera"
  Asia__Vientiane -> "Asia/Vientiane"
  Asia__Vladivostok -> "Asia/Vladivostok"
  Asia__Yakutsk -> "Asia/Yakutsk"
  Asia__Yekaterinburg -> "Asia/Yekaterinburg"
  Asia__Yerevan -> "Asia/Yerevan"
  Atlantic__Azores -> "Atlantic/Azores"
  Atlantic__Bermuda -> "Atlantic/Bermuda"
  Atlantic__Canary -> "Atlantic/Canary"
  Atlantic__Cape_Verde -> "Atlantic/Cape_Verde"
  Atlantic__Faroe -> "Atlantic/Faroe"
  Atlantic__Madeira -> "Atlantic/Madeira"
  Atlantic__Reykjavik -> "Atlantic/Reykjavik"
  Atlantic__South_Georgia -> "Atlantic/South_Georgia"
  Atlantic__Stanley -> "Atlantic/Stanley"
  Atlantic__St_Helena -> "Atlantic/St_Helena"
  Australia__Adelaide -> "Australia/Adelaide"
  Australia__Brisbane -> "Australia/Brisbane"
  Australia__Broken_Hill -> "Australia/Broken_Hill"
  Australia__Currie -> "Australia/Currie"
  Australia__Darwin -> "Australia/Darwin"
  Australia__Eucla -> "Australia/Eucla"
  Australia__Hobart -> "Australia/Hobart"
  Australia__Lindeman -> "Australia/Lindeman"
  Australia__Lord_Howe -> "Australia/Lord_Howe"
  Australia__Melbourne -> "Australia/Melbourne"
  Australia__Perth -> "Australia/Perth"
  Australia__Sydney -> "Australia/Sydney"
  Europe__Amsterdam -> "Europe/Amsterdam"
  Europe__Andorra -> "Europe/Andorra"
  Europe__Athens -> "Europe/Athens"
  Europe__Belgrade -> "Europe/Belgrade"
  Europe__Berlin -> "Europe/Berlin"
  Europe__Brussels -> "Europe/Brussels"
  Europe__Bucharest -> "Europe/Bucharest"
  Europe__Budapest -> "Europe/Budapest"
  Europe__Chisinau -> "Europe/Chisinau"
  Europe__Copenhagen -> "Europe/Copenhagen"
  Europe__Dublin -> "Europe/Dublin"
  Europe__Gibraltar -> "Europe/Gibraltar"
  Europe__Helsinki -> "Europe/Helsinki"
  Europe__Istanbul -> "Europe/Istanbul"
  Europe__Kaliningrad -> "Europe/Kaliningrad"
  Europe__Kiev -> "Europe/Kiev"
  Europe__Lisbon -> "Europe/Lisbon"
  Europe__London -> "Europe/London"
  Europe__Luxembourg -> "Europe/Luxembourg"
  Europe__Madrid -> "Europe/Madrid"
  Europe__Malta -> "Europe/Malta"
  Europe__Minsk -> "Europe/Minsk"
  Europe__Monaco -> "Europe/Monaco"
  Europe__Moscow -> "Europe/Moscow"
  Europe__Oslo -> "Europe/Oslo"
  Europe__Paris -> "Europe/Paris"
  Europe__Prague -> "Europe/Prague"
  Europe__Riga -> "Europe/Riga"
  Europe__Rome -> "Europe/Rome"
  Europe__Samara -> "Europe/Samara"
  Europe__Simferopol -> "Europe/Simferopol"
  Europe__Sofia -> "Europe/Sofia"
  Europe__Stockholm -> "Europe/Stockholm"
  Europe__Tallinn -> "Europe/Tallinn"
  Europe__Tirane -> "Europe/Tirane"
  Europe__Uzhgorod -> "Europe/Uzhgorod"
  Europe__Vienna -> "Europe/Vienna"
  Europe__Vilnius -> "Europe/Vilnius"
  Europe__Volgograd -> "Europe/Volgograd"
  Europe__Warsaw -> "Europe/Warsaw"
  Europe__Zaporozhye -> "Europe/Zaporozhye"
  Europe__Zurich -> "Europe/Zurich"
  Indian__Antananarivo -> "Indian/Antananarivo"
  Indian__Chagos -> "Indian/Chagos"
  Indian__Christmas -> "Indian/Christmas"
  Indian__Cocos -> "Indian/Cocos"
  Indian__Comoro -> "Indian/Comoro"
  Indian__Kerguelen -> "Indian/Kerguelen"
  Indian__Mahe -> "Indian/Mahe"
  Indian__Maldives -> "Indian/Maldives"
  Indian__Mauritius -> "Indian/Mauritius"
  Indian__Mayotte -> "Indian/Mayotte"
  Indian__Reunion -> "Indian/Reunion"
  Pacific__Apia -> "Pacific/Apia"
  Pacific__Auckland -> "Pacific/Auckland"
  Pacific__Chatham -> "Pacific/Chatham"
  Pacific__Chuuk -> "Pacific/Chuuk"
  Pacific__Easter -> "Pacific/Easter"
  Pacific__Efate -> "Pacific/Efate"
  Pacific__Enderbury -> "Pacific/Enderbury"
  Pacific__Fakaofo -> "Pacific/Fakaofo"
  Pacific__Fiji -> "Pacific/Fiji"
  Pacific__Funafuti -> "Pacific/Funafuti"
  Pacific__Galapagos -> "Pacific/Galapagos"
  Pacific__Gambier -> "Pacific/Gambier"
  Pacific__Guadalcanal -> "Pacific/Guadalcanal"
  Pacific__Guam -> "Pacific/Guam"
  Pacific__Honolulu -> "Pacific/Honolulu"
  Pacific__Kiritimati -> "Pacific/Kiritimati"
  Pacific__Kosrae -> "Pacific/Kosrae"
  Pacific__Kwajalein -> "Pacific/Kwajalein"
  Pacific__Majuro -> "Pacific/Majuro"
  Pacific__Marquesas -> "Pacific/Marquesas"
  Pacific__Midway -> "Pacific/Midway"
  Pacific__Nauru -> "Pacific/Nauru"
  Pacific__Niue -> "Pacific/Niue"
  Pacific__Norfolk -> "Pacific/Norfolk"
  Pacific__Noumea -> "Pacific/Noumea"
  Pacific__Pago_Pago -> "Pacific/Pago_Pago"
  Pacific__Palau -> "Pacific/Palau"
  Pacific__Pitcairn -> "Pacific/Pitcairn"
  Pacific__Pohnpei -> "Pacific/Pohnpei"
  Pacific__Port_Moresby -> "Pacific/Port_Moresby"
  Pacific__Rarotonga -> "Pacific/Rarotonga"
  Pacific__Saipan -> "Pacific/Saipan"
  Pacific__Tahiti -> "Pacific/Tahiti"
  Pacific__Tarawa -> "Pacific/Tarawa"
  Pacific__Tongatapu -> "Pacific/Tongatapu"
  Pacific__Wake -> "Pacific/Wake"
  Pacific__Wallis -> "Pacific/Wallis"


fromByteString :: ByteString -> Maybe Zone
fromByteString x = case x of
  "Africa/Abidjan" -> Just Africa__Abidjan
  "Africa/Accra" -> Just Africa__Accra
  "Africa/Addis_Ababa" -> Just Africa__Addis_Ababa
  "Africa/Algiers" -> Just Africa__Algiers
  "Africa/Asmara" -> Just Africa__Asmara
  "Africa/Bamako" -> Just Africa__Bamako
  "Africa/Bangui" -> Just Africa__Bangui
  "Africa/Banjul" -> Just Africa__Banjul
  "Africa/Bissau" -> Just Africa__Bissau
  "Africa/Blantyre" -> Just Africa__Blantyre
  "Africa/Brazzaville" -> Just Africa__Brazzaville
  "Africa/Bujumbura" -> Just Africa__Bujumbura
  "Africa/Cairo" -> Just Africa__Cairo
  "Africa/Casablanca" -> Just Africa__Casablanca
  "Africa/Ceuta" -> Just Africa__Ceuta
  "Africa/Conakry" -> Just Africa__Conakry
  "Africa/Dakar" -> Just Africa__Dakar
  "Africa/Dar_es_Salaam" -> Just Africa__Dar_es_Salaam
  "Africa/Djibouti" -> Just Africa__Djibouti
  "Africa/Douala" -> Just Africa__Douala
  "Africa/El_Aaiun" -> Just Africa__El_Aaiun
  "Africa/Freetown" -> Just Africa__Freetown
  "Africa/Gaborone" -> Just Africa__Gaborone
  "Africa/Harare" -> Just Africa__Harare
  "Africa/Johannesburg" -> Just Africa__Johannesburg
  "Africa/Kampala" -> Just Africa__Kampala
  "Africa/Khartoum" -> Just Africa__Khartoum
  "Africa/Kigali" -> Just Africa__Kigali
  "Africa/Kinshasa" -> Just Africa__Kinshasa
  "Africa/Lagos" -> Just Africa__Lagos
  "Africa/Libreville" -> Just Africa__Libreville
  "Africa/Lome" -> Just Africa__Lome
  "Africa/Luanda" -> Just Africa__Luanda
  "Africa/Lubumbashi" -> Just Africa__Lubumbashi
  "Africa/Lusaka" -> Just Africa__Lusaka
  "Africa/Malabo" -> Just Africa__Malabo
  "Africa/Maputo" -> Just Africa__Maputo
  "Africa/Maseru" -> Just Africa__Maseru
  "Africa/Mbabane" -> Just Africa__Mbabane
  "Africa/Mogadishu" -> Just Africa__Mogadishu
  "Africa/Monrovia" -> Just Africa__Monrovia
  "Africa/Nairobi" -> Just Africa__Nairobi
  "Africa/Ndjamena" -> Just Africa__Ndjamena
  "Africa/Niamey" -> Just Africa__Niamey
  "Africa/Nouakchott" -> Just Africa__Nouakchott
  "Africa/Ouagadougou" -> Just Africa__Ouagadougou
  "Africa/Porto-Novo" -> Just Africa__Porto_Novo
  "Africa/Sao_Tome" -> Just Africa__Sao_Tome
  "Africa/Tripoli" -> Just Africa__Tripoli
  "Africa/Tunis" -> Just Africa__Tunis
  "Africa/Windhoek" -> Just Africa__Windhoek
  "America/Adak" -> Just America__Adak
  "America/Anchorage" -> Just America__Anchorage
  "America/Antigua" -> Just America__Antigua
  "America/Araguaina" -> Just America__Araguaina
  "America/Argentina/Buenos_Aires" -> Just America__Argentina__Buenos_Aires
  "America/Argentina/Catamarca" -> Just America__Argentina__Catamarca
  "America/Argentina/Cordoba" -> Just America__Argentina__Cordoba
  "America/Argentina/Jujuy" -> Just America__Argentina__Jujuy
  "America/Argentina/La_Rioja" -> Just America__Argentina__La_Rioja
  "America/Argentina/Mendoza" -> Just America__Argentina__Mendoza
  "America/Argentina/Rio_Gallegos" -> Just America__Argentina__Rio_Gallegos
  "America/Argentina/Salta" -> Just America__Argentina__Salta
  "America/Argentina/San_Juan" -> Just America__Argentina__San_Juan
  "America/Argentina/San_Luis" -> Just America__Argentina__San_Luis
  "America/Argentina/Tucuman" -> Just America__Argentina__Tucuman
  "America/Argentina/Ushuaia" -> Just America__Argentina__Ushuaia
  "America/Asuncion" -> Just America__Asuncion
  "America/Atikokan" -> Just America__Atikokan
  "America/Bahia" -> Just America__Bahia
  "America/Bahia_Banderas" -> Just America__Bahia_Banderas
  "America/Barbados" -> Just America__Barbados
  "America/Belem" -> Just America__Belem
  "America/Belize" -> Just America__Belize
  "America/Blanc-Sablon" -> Just America__Blanc_Sablon
  "America/Boa_Vista" -> Just America__Boa_Vista
  "America/Bogota" -> Just America__Bogota
  "America/Boise" -> Just America__Boise
  "America/Cambridge_Bay" -> Just America__Cambridge_Bay
  "America/Campo_Grande" -> Just America__Campo_Grande
  "America/Cancun" -> Just America__Cancun
  "America/Caracas" -> Just America__Caracas
  "America/Cayenne" -> Just America__Cayenne
  "America/Cayman" -> Just America__Cayman
  "America/Chicago" -> Just America__Chicago
  "America/Chihuahua" -> Just America__Chihuahua
  "America/Costa_Rica" -> Just America__Costa_Rica
  "America/Creston" -> Just America__Creston
  "America/Cuiaba" -> Just America__Cuiaba
  "America/Curacao" -> Just America__Curacao
  "America/Danmarkshavn" -> Just America__Danmarkshavn
  "America/Dawson" -> Just America__Dawson
  "America/Dawson_Creek" -> Just America__Dawson_Creek
  "America/Denver" -> Just America__Denver
  "America/Detroit" -> Just America__Detroit
  "America/Edmonton" -> Just America__Edmonton
  "America/Eirunepe" -> Just America__Eirunepe
  "America/El_Salvador" -> Just America__El_Salvador
  "America/Fortaleza" -> Just America__Fortaleza
  "America/Glace_Bay" -> Just America__Glace_Bay
  "America/Godthab" -> Just America__Godthab
  "America/Goose_Bay" -> Just America__Goose_Bay
  "America/Grand_Turk" -> Just America__Grand_Turk
  "America/Guatemala" -> Just America__Guatemala
  "America/Guayaquil" -> Just America__Guayaquil
  "America/Guyana" -> Just America__Guyana
  "America/Halifax" -> Just America__Halifax
  "America/Havana" -> Just America__Havana
  "America/Hermosillo" -> Just America__Hermosillo
  "America/Indiana/Indianapolis" -> Just America__Indiana__Indianapolis
  "America/Indiana/Knox" -> Just America__Indiana__Knox
  "America/Indiana/Marengo" -> Just America__Indiana__Marengo
  "America/Indiana/Petersburg" -> Just America__Indiana__Petersburg
  "America/Indiana/Tell_City" -> Just America__Indiana__Tell_City
  "America/Indiana/Vevay" -> Just America__Indiana__Vevay
  "America/Indiana/Vincennes" -> Just America__Indiana__Vincennes
  "America/Indiana/Winamac" -> Just America__Indiana__Winamac
  "America/Inuvik" -> Just America__Inuvik
  "America/Iqaluit" -> Just America__Iqaluit
  "America/Jamaica" -> Just America__Jamaica
  "America/Juneau" -> Just America__Juneau
  "America/Kentucky/Louisville" -> Just America__Kentucky__Louisville
  "America/Kentucky/Monticello" -> Just America__Kentucky__Monticello
  "America/La_Paz" -> Just America__La_Paz
  "America/Lima" -> Just America__Lima
  "America/Los_Angeles" -> Just America__Los_Angeles
  "America/Maceio" -> Just America__Maceio
  "America/Managua" -> Just America__Managua
  "America/Manaus" -> Just America__Manaus
  "America/Martinique" -> Just America__Martinique
  "America/Matamoros" -> Just America__Matamoros
  "America/Mazatlan" -> Just America__Mazatlan
  "America/Menominee" -> Just America__Menominee
  "America/Merida" -> Just America__Merida
  "America/Metlakatla" -> Just America__Metlakatla
  "America/Mexico_City" -> Just America__Mexico_City
  "America/Miquelon" -> Just America__Miquelon
  "America/Moncton" -> Just America__Moncton
  "America/Monterrey" -> Just America__Monterrey
  "America/Montevideo" -> Just America__Montevideo
  "America/Montreal" -> Just America__Montreal
  "America/Nassau" -> Just America__Nassau
  "America/New_York" -> Just America__New_York
  "America/Nipigon" -> Just America__Nipigon
  "America/Nome" -> Just America__Nome
  "America/Noronha" -> Just America__Noronha
  "America/North_Dakota/Beulah" -> Just America__North_Dakota__Beulah
  "America/North_Dakota/Center" -> Just America__North_Dakota__Center
  "America/North_Dakota/New_Salem" -> Just America__North_Dakota__New_Salem
  "America/Ojinaga" -> Just America__Ojinaga
  "America/Panama" -> Just America__Panama
  "America/Pangnirtung" -> Just America__Pangnirtung
  "America/Paramaribo" -> Just America__Paramaribo
  "America/Phoenix" -> Just America__Phoenix
  "America/Port-au-Prince" -> Just America__Port_au_Prince
  "America/Port_of_Spain" -> Just America__Port_of_Spain
  "America/Porto_Velho" -> Just America__Porto_Velho
  "America/Puerto_Rico" -> Just America__Puerto_Rico
  "America/Rainy_River" -> Just America__Rainy_River
  "America/Rankin_Inlet" -> Just America__Rankin_Inlet
  "America/Recife" -> Just America__Recife
  "America/Regina" -> Just America__Regina
  "America/Resolute" -> Just America__Resolute
  "America/Rio_Branco" -> Just America__Rio_Branco
  "America/Santa_Isabel" -> Just America__Santa_Isabel
  "America/Santarem" -> Just America__Santarem
  "America/Santiago" -> Just America__Santiago
  "America/Santo_Domingo" -> Just America__Santo_Domingo
  "America/Sao_Paulo" -> Just America__Sao_Paulo
  "America/Scoresbysund" -> Just America__Scoresbysund
  "America/Sitka" -> Just America__Sitka
  "America/St_Johns" -> Just America__St_Johns
  "America/Swift_Current" -> Just America__Swift_Current
  "America/Tegucigalpa" -> Just America__Tegucigalpa
  "America/Thule" -> Just America__Thule
  "America/Thunder_Bay" -> Just America__Thunder_Bay
  "America/Tijuana" -> Just America__Tijuana
  "America/Toronto" -> Just America__Toronto
  "America/Vancouver" -> Just America__Vancouver
  "America/Whitehorse" -> Just America__Whitehorse
  "America/Winnipeg" -> Just America__Winnipeg
  "America/Yakutat" -> Just America__Yakutat
  "America/Yellowknife" -> Just America__Yellowknife
  "Antarctica/Casey" -> Just Antarctica__Casey
  "Antarctica/Davis" -> Just Antarctica__Davis
  "Antarctica/DumontDUrville" -> Just Antarctica__DumontDUrville
  "Antarctica/Macquarie" -> Just Antarctica__Macquarie
  "Antarctica/Mawson" -> Just Antarctica__Mawson
  "Antarctica/Palmer" -> Just Antarctica__Palmer
  "Antarctica/Rothera" -> Just Antarctica__Rothera
  "Antarctica/Syowa" -> Just Antarctica__Syowa
  "Antarctica/Vostok" -> Just Antarctica__Vostok
  "Asia/Aden" -> Just Asia__Aden
  "Asia/Almaty" -> Just Asia__Almaty
  "Asia/Amman" -> Just Asia__Amman
  "Asia/Anadyr" -> Just Asia__Anadyr
  "Asia/Aqtau" -> Just Asia__Aqtau
  "Asia/Aqtobe" -> Just Asia__Aqtobe
  "Asia/Ashgabat" -> Just Asia__Ashgabat
  "Asia/Baghdad" -> Just Asia__Baghdad
  "Asia/Bahrain" -> Just Asia__Bahrain
  "Asia/Baku" -> Just Asia__Baku
  "Asia/Bangkok" -> Just Asia__Bangkok
  "Asia/Beirut" -> Just Asia__Beirut
  "Asia/Bishkek" -> Just Asia__Bishkek
  "Asia/Brunei" -> Just Asia__Brunei
  "Asia/Choibalsan" -> Just Asia__Choibalsan
  "Asia/Chongqing" -> Just Asia__Chongqing
  "Asia/Colombo" -> Just Asia__Colombo
  "Asia/Damascus" -> Just Asia__Damascus
  "Asia/Dhaka" -> Just Asia__Dhaka
  "Asia/Dili" -> Just Asia__Dili
  "Asia/Dubai" -> Just Asia__Dubai
  "Asia/Dushanbe" -> Just Asia__Dushanbe
  "Asia/Gaza" -> Just Asia__Gaza
  "Asia/Harbin" -> Just Asia__Harbin
  "Asia/Hebron" -> Just Asia__Hebron
  "Asia/Ho_Chi_Minh" -> Just Asia__Ho_Chi_Minh
  "Asia/Hong_Kong" -> Just Asia__Hong_Kong
  "Asia/Hovd" -> Just Asia__Hovd
  "Asia/Irkutsk" -> Just Asia__Irkutsk
  "Asia/Jakarta" -> Just Asia__Jakarta
  "Asia/Jayapura" -> Just Asia__Jayapura
  "Asia/Jerusalem" -> Just Asia__Jerusalem
  "Asia/Kabul" -> Just Asia__Kabul
  "Asia/Kamchatka" -> Just Asia__Kamchatka
  "Asia/Karachi" -> Just Asia__Karachi
  "Asia/Kashgar" -> Just Asia__Kashgar
  "Asia/Kathmandu" -> Just Asia__Kathmandu
  "Asia/Khandyga" -> Just Asia__Khandyga
  "Asia/Kolkata" -> Just Asia__Kolkata
  "Asia/Krasnoyarsk" -> Just Asia__Krasnoyarsk
  "Asia/Kuala_Lumpur" -> Just Asia__Kuala_Lumpur
  "Asia/Kuching" -> Just Asia__Kuching
  "Asia/Kuwait" -> Just Asia__Kuwait
  "Asia/Macau" -> Just Asia__Macau
  "Asia/Magadan" -> Just Asia__Magadan
  "Asia/Makassar" -> Just Asia__Makassar
  "Asia/Manila" -> Just Asia__Manila
  "Asia/Muscat" -> Just Asia__Muscat
  "Asia/Nicosia" -> Just Asia__Nicosia
  "Asia/Novokuznetsk" -> Just Asia__Novokuznetsk
  "Asia/Novosibirsk" -> Just Asia__Novosibirsk
  "Asia/Omsk" -> Just Asia__Omsk
  "Asia/Oral" -> Just Asia__Oral
  "Asia/Phnom_Penh" -> Just Asia__Phnom_Penh
  "Asia/Pontianak" -> Just Asia__Pontianak
  "Asia/Pyongyang" -> Just Asia__Pyongyang
  "Asia/Qatar" -> Just Asia__Qatar
  "Asia/Qyzylorda" -> Just Asia__Qyzylorda
  "Asia/Rangoon" -> Just Asia__Rangoon
  "Asia/Riyadh" -> Just Asia__Riyadh
  "Asia/Sakhalin" -> Just Asia__Sakhalin
  "Asia/Samarkand" -> Just Asia__Samarkand
  "Asia/Seoul" -> Just Asia__Seoul
  "Asia/Shanghai" -> Just Asia__Shanghai
  "Asia/Singapore" -> Just Asia__Singapore
  "Asia/Taipei" -> Just Asia__Taipei
  "Asia/Tashkent" -> Just Asia__Tashkent
  "Asia/Tbilisi" -> Just Asia__Tbilisi
  "Asia/Tehran" -> Just Asia__Tehran
  "Asia/Thimphu" -> Just Asia__Thimphu
  "Asia/Tokyo" -> Just Asia__Tokyo
  "Asia/Ulaanbaatar" -> Just Asia__Ulaanbaatar
  "Asia/Urumqi" -> Just Asia__Urumqi
  "Asia/Ust-Nera" -> Just Asia__Ust_Nera
  "Asia/Vientiane" -> Just Asia__Vientiane
  "Asia/Vladivostok" -> Just Asia__Vladivostok
  "Asia/Yakutsk" -> Just Asia__Yakutsk
  "Asia/Yekaterinburg" -> Just Asia__Yekaterinburg
  "Asia/Yerevan" -> Just Asia__Yerevan
  "Atlantic/Azores" -> Just Atlantic__Azores
  "Atlantic/Bermuda" -> Just Atlantic__Bermuda
  "Atlantic/Canary" -> Just Atlantic__Canary
  "Atlantic/Cape_Verde" -> Just Atlantic__Cape_Verde
  "Atlantic/Faroe" -> Just Atlantic__Faroe
  "Atlantic/Madeira" -> Just Atlantic__Madeira
  "Atlantic/Reykjavik" -> Just Atlantic__Reykjavik
  "Atlantic/South_Georgia" -> Just Atlantic__South_Georgia
  "Atlantic/Stanley" -> Just Atlantic__Stanley
  "Atlantic/St_Helena" -> Just Atlantic__St_Helena
  "Australia/Adelaide" -> Just Australia__Adelaide
  "Australia/Brisbane" -> Just Australia__Brisbane
  "Australia/Broken_Hill" -> Just Australia__Broken_Hill
  "Australia/Currie" -> Just Australia__Currie
  "Australia/Darwin" -> Just Australia__Darwin
  "Australia/Eucla" -> Just Australia__Eucla
  "Australia/Hobart" -> Just Australia__Hobart
  "Australia/Lindeman" -> Just Australia__Lindeman
  "Australia/Lord_Howe" -> Just Australia__Lord_Howe
  "Australia/Melbourne" -> Just Australia__Melbourne
  "Australia/Perth" -> Just Australia__Perth
  "Australia/Sydney" -> Just Australia__Sydney
  "Europe/Amsterdam" -> Just Europe__Amsterdam
  "Europe/Andorra" -> Just Europe__Andorra
  "Europe/Athens" -> Just Europe__Athens
  "Europe/Belgrade" -> Just Europe__Belgrade
  "Europe/Berlin" -> Just Europe__Berlin
  "Europe/Brussels" -> Just Europe__Brussels
  "Europe/Bucharest" -> Just Europe__Bucharest
  "Europe/Budapest" -> Just Europe__Budapest
  "Europe/Chisinau" -> Just Europe__Chisinau
  "Europe/Copenhagen" -> Just Europe__Copenhagen
  "Europe/Dublin" -> Just Europe__Dublin
  "Europe/Gibraltar" -> Just Europe__Gibraltar
  "Europe/Helsinki" -> Just Europe__Helsinki
  "Europe/Istanbul" -> Just Europe__Istanbul
  "Europe/Kaliningrad" -> Just Europe__Kaliningrad
  "Europe/Kiev" -> Just Europe__Kiev
  "Europe/Lisbon" -> Just Europe__Lisbon
  "Europe/London" -> Just Europe__London
  "Europe/Luxembourg" -> Just Europe__Luxembourg
  "Europe/Madrid" -> Just Europe__Madrid
  "Europe/Malta" -> Just Europe__Malta
  "Europe/Minsk" -> Just Europe__Minsk
  "Europe/Monaco" -> Just Europe__Monaco
  "Europe/Moscow" -> Just Europe__Moscow
  "Europe/Oslo" -> Just Europe__Oslo
  "Europe/Paris" -> Just Europe__Paris
  "Europe/Prague" -> Just Europe__Prague
  "Europe/Riga" -> Just Europe__Riga
  "Europe/Rome" -> Just Europe__Rome
  "Europe/Samara" -> Just Europe__Samara
  "Europe/Simferopol" -> Just Europe__Simferopol
  "Europe/Sofia" -> Just Europe__Sofia
  "Europe/Stockholm" -> Just Europe__Stockholm
  "Europe/Tallinn" -> Just Europe__Tallinn
  "Europe/Tirane" -> Just Europe__Tirane
  "Europe/Uzhgorod" -> Just Europe__Uzhgorod
  "Europe/Vienna" -> Just Europe__Vienna
  "Europe/Vilnius" -> Just Europe__Vilnius
  "Europe/Volgograd" -> Just Europe__Volgograd
  "Europe/Warsaw" -> Just Europe__Warsaw
  "Europe/Zaporozhye" -> Just Europe__Zaporozhye
  "Europe/Zurich" -> Just Europe__Zurich
  "Indian/Antananarivo" -> Just Indian__Antananarivo
  "Indian/Chagos" -> Just Indian__Chagos
  "Indian/Christmas" -> Just Indian__Christmas
  "Indian/Cocos" -> Just Indian__Cocos
  "Indian/Comoro" -> Just Indian__Comoro
  "Indian/Kerguelen" -> Just Indian__Kerguelen
  "Indian/Mahe" -> Just Indian__Mahe
  "Indian/Maldives" -> Just Indian__Maldives
  "Indian/Mauritius" -> Just Indian__Mauritius
  "Indian/Mayotte" -> Just Indian__Mayotte
  "Indian/Reunion" -> Just Indian__Reunion
  "Pacific/Apia" -> Just Pacific__Apia
  "Pacific/Auckland" -> Just Pacific__Auckland
  "Pacific/Chatham" -> Just Pacific__Chatham
  "Pacific/Chuuk" -> Just Pacific__Chuuk
  "Pacific/Easter" -> Just Pacific__Easter
  "Pacific/Efate" -> Just Pacific__Efate
  "Pacific/Enderbury" -> Just Pacific__Enderbury
  "Pacific/Fakaofo" -> Just Pacific__Fakaofo
  "Pacific/Fiji" -> Just Pacific__Fiji
  "Pacific/Funafuti" -> Just Pacific__Funafuti
  "Pacific/Galapagos" -> Just Pacific__Galapagos
  "Pacific/Gambier" -> Just Pacific__Gambier
  "Pacific/Guadalcanal" -> Just Pacific__Guadalcanal
  "Pacific/Guam" -> Just Pacific__Guam
  "Pacific/Honolulu" -> Just Pacific__Honolulu
  "Pacific/Kiritimati" -> Just Pacific__Kiritimati
  "Pacific/Kosrae" -> Just Pacific__Kosrae
  "Pacific/Kwajalein" -> Just Pacific__Kwajalein
  "Pacific/Majuro" -> Just Pacific__Majuro
  "Pacific/Marquesas" -> Just Pacific__Marquesas
  "Pacific/Midway" -> Just Pacific__Midway
  "Pacific/Nauru" -> Just Pacific__Nauru
  "Pacific/Niue" -> Just Pacific__Niue
  "Pacific/Norfolk" -> Just Pacific__Norfolk
  "Pacific/Noumea" -> Just Pacific__Noumea
  "Pacific/Pago_Pago" -> Just Pacific__Pago_Pago
  "Pacific/Palau" -> Just Pacific__Palau
  "Pacific/Pitcairn" -> Just Pacific__Pitcairn
  "Pacific/Pohnpei" -> Just Pacific__Pohnpei
  "Pacific/Port_Moresby" -> Just Pacific__Port_Moresby
  "Pacific/Rarotonga" -> Just Pacific__Rarotonga
  "Pacific/Saipan" -> Just Pacific__Saipan
  "Pacific/Tahiti" -> Just Pacific__Tahiti
  "Pacific/Tarawa" -> Just Pacific__Tarawa
  "Pacific/Tongatapu" -> Just Pacific__Tongatapu
  "Pacific/Wake" -> Just Pacific__Wake
  "Pacific/Wallis" -> Just Pacific__Wallis
  _ -> Nothing



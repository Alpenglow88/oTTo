# frozen_string_literal: true

require 'cld'

# Unit test module 1 for CLD language detection
module LanguageDetectionOne
  # Valid Afrikaans detection
  def afrikaans
    CLD.detect_language("dit is 'n toets in Afrikaans")
  end

  # Valid Albanian detection
  def albanian
    CLD.detect_language('ky është një provë në shqip')
  end

  # Valid Arabic detection
  def arabic
    CLD.detect_language('هذا اختبار باللغة العربية')
  end

  # Valid Armenian detection
  def armenian
    CLD.detect_language('սա հայերեն լեզվով փորձարկում է')
  end

  # Valid Azerbaijani detection
  def azerbaijani
    CLD.detect_language('bu Azerbaycanda bir imtahandır')
  end

  # Valid Basque detection
  def basque
    CLD.detect_language('hau euskarazko proba da')
  end

  # Valid Belarusian detection
  def belarusian
    CLD.detect_language('гэта тэст па-беларуску')
  end

  # Valid Bengali detection
  def bengali
    CLD.detect_language('এটি বেঙ্গালীর একটি পরীক্ষা')
  end

  # Valid Bulgarian detection
  def bulgarian
    CLD.detect_language('това е тест по български')
  end

  # Valid Catalan detection
  def catalan
    CLD.detect_language('es tracta d’una prova en català')
  end

  # Valid Cebuano detection
  def cebuano
    CLD.detect_language('usa kini ka pagsulay sa cebuano')
  end

  # Valid Cherokee detection
  def cherokee
    CLD.detect_language('ᎢᎧᎵᏨᏕᎦ ᏓᏆᎴᎳ ᎦᏃᎯᎵᏙ ᎠᏆᏤᎵᎢ')
  end

  # Valid Croatian detection
  def croatian
    CLD.detect_language('ovo je test na hrvatskom jeziku')
  end

  # Valid Czech detection
  def czech
    CLD.detect_language('toto je test v češtině')
  end

  # Valid Simplified Chinese detection
  def chinese_s
    CLD.detect_language('这是一个简体中文测')
  end

  # Valid Traditional Chinese detection
  def chinese_t
    CLD.detect_language('這是中國傳統的考試')
  end

  # Valid Danish detection
  def danish
    CLD.detect_language('Mit luftpudefartøj er fyldt med ål')
  end

  # Valid Dutch detection
  def dutch
    CLD.detect_language('dit is een test in het nederlands')
  end

  # Valid English detection
  def english
    CLD.detect_language('this is a test in English')
  end

  # Valid Estonian detection
  def estonian
    CLD.detect_language('Kas te räägite eesti keelt?')
  end

  # Valid Finnish detection
  def finnish
    CLD.detect_language('tämä on suomen kielen testi')
  end

  # Valid French detection
  def french
    CLD.detect_language("c'est un test en français")
  end

  # Valid Galician detection
  def galician
    CLD.detect_language('esta é unha proba en galego')
  end

  # Valid Ganda detection
  def ganda
    CLD.detect_language('Nkwagaliza amazalibwa go amalungi')
  end

  # Valid Georgian detection
  def georgian
    CLD.detect_language('ეს არის ტესტი ქართულად')
  end

  # Valid German detection
  def german
    CLD.detect_language('das ist ein test auf deutsch')
  end

  # Valid Greek detection
  def greek
    CLD.detect_language('αυτό είναι μια δοκιμή στα ελληνικά')
  end

  # Valid Gujarati detection
  def gujarati
    CLD.detect_language('આ ગુજરાતીમાં એક કસોટી છે')
  end
end

# Unit test module 2 for CLD language detection
module LanguageDetectionTwo
  # Valid Haitian Creole detection
  def haitian_creole
    CLD.detect_language('se yon tès an kreyòl ayisyen')
  end

  # Valid Hebrew detection
  def hebrew
    CLD.detect_language('זה מבחן בעברית')
  end

  # Valid Hindi detection
  def hindi
    CLD.detect_language('यह हिंदी में एक परीक्षा है')
  end

  # Valid Hmong detection
  def hmong
    CLD.detect_language('Nov yog ntawv xeem nyob hauv Hmoob')
  end

  # Valid Hungarian detection
  def hungarian
    CLD.detect_language('ez egy magyar nyelvű teszt')
  end

  # Valid Icelandic detection
  def icelandic
    CLD.detect_language('þetta er próf á íslensku')
  end

  # Valid Indonesian detection
  def indonesian
    CLD.detect_language('ini ujian dalam Bahasa Indonesia')
  end

  # Valid Inuktitut detection
  def inuktitut
    CLD.detect_language('ᐅᒥᐊᕐᔫᑉ ᐳᓪᓕᓕᒫᐸᒐ ᑕᑦᑕᕐᓂᖅ ᐊᒻᒪᔭᖅ')
  end

  # Valid Irish detection
  def irish
    CLD.detect_language('is scrúdú Gaeilge é seo')
  end

  # Valid Italian detection
  def italian
    CLD.detect_language('questo è un test in italiano')
  end

  # Valid Javanese detection
  def javanese
    CLD.detect_language('iki minangka ujian ing basa jawa')
  end

  # Valid Japanese detection
  def japanese
    CLD.detect_language('これは日本語のテストです')
  end

  # Valid Kannada detection
  def kannada
    CLD.detect_language('ಇದು ಕನ್ನಡದಲ್ಲಿ ಒಂದು ಪರೀಕ್ಷೆ')
  end

  # Valid Khmer detection
  def khmer
    CLD.detect_language('នេះជាការសាកល្បងជាភាសាខ្មែរ។')
  end

  # Valid Kinyarwanda detection
  def kinyarwanda
    CLD.detect_language('Uvuga Ikinyarwanda?')
  end

  # Valid Korean detection
  def korean
    CLD.detect_language('이것은 한국어 시험입니다')
  end

  # Valid Laotian detection
  def laotian
    CLD.detect_language('ນີ້ແມ່ນການທົດສອບເປັນພາສາລາວ')
  end

  # Valid Latvian detection
  def latvian
    CLD.detect_language('tas ir pārbaudījums latviešu valodā')
  end

  # Valid Lithuanian detection
  def lithuanian
    CLD.detect_language('tai testas lietuvių kalba')
  end

  # Valid Macedonian detection
  def macedonian
    CLD.detect_language('ова е тест на македонски')
  end

  # Valid Malay detection
  def malay
    CLD.detect_language('ini ujian dalam bahasa Melayu')
  end

  # Valid Malayalam detection
  def malayalam
    CLD.detect_language('ഇത് മലയാളത്തിലെ ഒരു പരീക്ഷണമാണ്')
  end

  # Valid Maltese detection
  def maltese
    CLD.detect_language('dan huwa test bil-Malti')
  end

  # Valid Marathi detection
  def marathi
    CLD.detect_language('ही एक मराठी भाषेत चाचणी आहे')
  end

  # Valid Nepali detection
  def nepali
    CLD.detect_language('यो नेपालीमा परिक्षण हो')
  end

  # Valid Norwegian detection
  def norwegian
    CLD.detect_language('dette er en test på norsk')
  end
end

# Unit test module 3 for CLD language detection
module LanguageDetectionThree
  # Valid Oriya detection
  def oriya
    CLD.detect_language('ମୋ ହୋବର୍କ୍ରାଫ୍ଟ ରେ ଇଲ୍ ଭର୍ତି ହେଇ ଜାଇଛି।')
  end

  # Valid Persian detection
  def persian
    CLD.detect_language('این یک تست به زبان فارسی است')
  end

  # Valid Polish detection
  def polish
    CLD.detect_language('to jest test z języka polskiego')
  end

  # Valid Portuguese detection
  def portuguese
    CLD.detect_language('isso é um teste em português')
  end

  # Valid Punjabi detection
  def punjabi
    CLD.detect_language('ਇਹ ਪੰਜਾਬੀ ਵਿਚ ਇਕ ਪ੍ਰੀਖਿਆ ਹੈ')
  end

  # Valid Romanian detection
  def romanian
    CLD.detect_language('acesta este un test în limba română')
  end

  # Valid Russian detection
  def russian
    CLD.detect_language('это тест на русском языке')
  end

  # Valid Scots Gaelic detection
  def scots_gaelic
    CLD.detect_language('tha seo na dheuchainn ann an Gàidhlig na h-Alba')
  end

  # Valid Serbian detection
  def serbian
    CLD.detect_language('ово је тест на српском')
  end

  # Valid Sinhala detection
  def sinhala
    CLD.detect_language('මෙය සිංහලෙහි පරීක්ෂණයකි')
  end

  # Valid Slovak detection
  def slovak
    CLD.detect_language('toto je test v slovenčine')
  end

  # Valid Slovenian detection
  def slovenian
    CLD.detect_language('to je test v slovenščini')
  end

  # Valid Somali detection
  def somali
    CLD.detect_language('kani waa tijaabo Afsoomaali ku qoran')
  end

  # Valid Spanish detection
  def spanish
    CLD.detect_language('esta es una prueba en español')
  end

  # Valid Swahili detection
  def swahili
    CLD.detect_language('huu ni mtihani kwa Kiswahili')
  end

  # Valid Swedish detection
  def swedish
    CLD.detect_language('detta är ett test på svenska')
  end

  # Valid Tagalog detection
  def tagalog
    CLD.detect_language('Puno ng palos ang aking hoberkrap')
  end

  # Valid Tamil detection
  def tamil
    CLD.detect_language('இது தமிழில் ஒரு சோதனை')
  end

  # Valid Telugu detection
  def telugu
    CLD.detect_language('ఇది తెలుగులో ఒక పరీక్ష')
  end

  # Valid Thai detection
  def thai
    CLD.detect_language('นี่คือการทดสอบในภาษาไทย')
  end

  # Valid Turkish detection
  def turkish
    CLD.detect_language('bu türkçe bir sınav')
  end

  # Valid Ukrainian detection
  def ukrainian
    CLD.detect_language('це тест з української мови')
  end

  # Valid Urdu detection
  def urdu
    CLD.detect_language('یہ اردو میں ایک امتحان ہے۔')
  end

  # Valid Vietnamese detection
  def vietnamese
    CLD.detect_language('đây là một bài kiểm tra tiếng Việt')
  end

  # Valid Welsh detection
  def welsh
    CLD.detect_language('prawf yn Gymraeg yw hwn')
  end

  # Valid Yiddish detection
  def yiddish
    CLD.detect_language('דאָס איז אַ פּראָבע אויף ייִדיש')
  end

  # Valid Zulu detection
  def zulu
    CLD.detect_language('Lokhu kungukuhlolwa kwesiZulu')
  end

  # Empty argument
  def empty_arg
    CLD.detect_language('')
  end

  # Nil argument
  def nil_arg
    CLD.detect_language(nil)
  end

  # Argument error
  def arg_error
    CLD.detect_language
  end
end

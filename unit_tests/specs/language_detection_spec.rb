# frozen_string_literal: true

require './unit_tests/unit_test_helper'

include LanguageDetectionOne
include LanguageDetectionTwo
include LanguageDetectionThree

describe('Language Detection - Afrikaans') do
  it('/correctly assess input as Afrikaans language') do
    expect(LanguageDetectionOne.afrikaans).to eq(code: 'af', name: 'AFRIKAANS', reliable: true)
  end
end

describe('Language Detection - Albanian') do
  it('/correctly assess input as Albanian language') do
    expect(LanguageDetectionOne.albanian).to eq(code: 'sq', name: 'ALBANIAN', reliable: true)
  end
end

describe('Language Detection - Arabic') do
  it('/correctly assess input as Arabic language') do
    expect(LanguageDetectionOne.arabic).to eq(code: 'ar', name: 'ARABIC', reliable: true)
  end
end

describe('Language Detection - Azerbaijani') do
  it('/correctly assess input as Azerbaijani language') do
    expect(LanguageDetectionOne.azerbaijani).to eq(code: 'az', name: 'AZERBAIJANI', reliable: true)
  end
end

describe('Language Detection - Basque') do
  it('/correctly assess input as Basque language') do
    expect(LanguageDetectionOne.basque).to eq(code: 'eu', name: 'BASQUE', reliable: true)
  end
end

describe('Language Detection - Belarusian') do
  it('/correctly assess input as Belarusian language') do
    expect(LanguageDetectionOne.belarusian).to eq(code: 'be', name: 'BELARUSIAN', reliable: true)
  end
end

describe('Language Detection - Bengali') do
  it('/correctly assess input as Bengalli language') do
    expect(LanguageDetectionOne.bengali).to eq(code: 'bn', name: 'BENGALI', reliable: true)
  end
end

describe('Language Detection - Bulgarian') do
  it('/correctly assess input as Bulgarian language') do
    expect(LanguageDetectionOne.bulgarian).to eq(code: 'bg', name: 'BULGARIAN', reliable: true)
  end
end

describe('Language Detection - Catalan') do
  it('/correctly assess input as Catalan language') do
    expect(LanguageDetectionOne.catalan).to eq(code: 'ca', name: 'CATALAN', reliable: true)
  end
end

describe('Language Detection - Cebuano') do
  it('/correctly assess input as Cebuano language') do
    expect(LanguageDetectionOne.cebuano).to eq(code: 'ceb', name: 'CEBUANO', reliable: true)
  end
end

describe('Language Detection - Cherokee') do
  it('/correctly assess input as Cherokee language') do
    expect(LanguageDetectionOne.cherokee).to eq(code: 'chr', name: 'CHEROKEE', reliable: true)
  end
end

describe('Language Detection - Croatian') do
  it('/correctly assess input as Croatian language') do
    expect(LanguageDetectionOne.croatian).to eq(code: 'hr', name: 'CROATIAN', reliable: true)
  end
end

describe('Language Detection - Czech') do
  it('/correctly assess input as Czech language') do
    expect(LanguageDetectionOne.czech).to eq(code: 'cs', name: 'CZECH', reliable: true)
  end
end

describe('Language Detection - Simplified Chinese') do
  it('/correctly assess input as Simplified Chinese language') do
    expect(LanguageDetectionOne.chinese_s).to eq(code: 'zh', name: 'Chinese', reliable: true)
  end
end

describe('Language Detection - Traditional Chinese') do
  it('/correctly assess input as Traditional Chinese language') do
    expect(LanguageDetectionOne.chinese_t).to eq(code: 'zh-Hant', name: 'ChineseT', reliable: true)
  end
end

describe('Language Detection - Danish') do
  it('/correctly assess input as Danish language') do
    expect(LanguageDetectionOne.danish).to eq(code: 'da', name: 'DANISH', reliable: true)
  end
end

describe('Language Detection - Dutch') do
  it('/correctly assess input as Dutch language') do
    expect(LanguageDetectionOne.dutch).to eq(code: 'nl', name: 'DUTCH', reliable: true)
  end
end

describe('Language Detection - English') do
  it('/correctly assess input as English language') do
    expect(LanguageDetectionOne.english).to eq(code: 'en', name: 'ENGLISH', reliable: true)
  end
end

describe('Language Detection - Estonian') do
  it('/correctly assess input as Estonian language') do
    expect(LanguageDetectionOne.estonian).to eq(code: 'et', name: 'ESTONIAN', reliable: true)
  end
end

describe('Language Detection - Finnish') do
  it('/correctly assess input as Finnish language') do
    expect(LanguageDetectionOne.finnish).to eq(code: 'fi', name: 'FINNISH', reliable: true)
  end
end

describe('Language Detection - French') do
  it('/correctly assess input as French language') do
    expect(LanguageDetectionOne.french).to eq(code: 'fr', name: 'FRENCH', reliable: true)
  end
end

describe('Language Detection - Galician') do
  it('/correctly assess input as Galician language') do
    expect(LanguageDetectionOne.galician).to eq(code: 'gl', name: 'GALICIAN', reliable: true)
  end
end

describe('Language Detection - Ganda') do
  it('/correctly assess input as Ganda language') do
    expect(LanguageDetectionOne.ganda).to eq(code: 'lg', name: 'GANDA', reliable: true)
  end
end

describe('Language Detection - Georgian') do
  it('/correctly assess input as Georgian language') do
    expect(LanguageDetectionOne.georgian).to eq(code: 'ka', name: 'GEORGIAN', reliable: true)
  end
end

describe('Language Detection - German') do
  it('/correctly assess input as German language') do
    expect(LanguageDetectionOne.german).to eq(code: 'de', name: 'GERMAN', reliable: true)
  end
end

describe('Language Detection - Greek') do
  it('/correctly assess input as Greek language') do
    expect(LanguageDetectionOne.greek).to eq(code: 'el', name: 'GREEK', reliable: true)
  end
end

describe('Language Detection - Gujarati') do
  it('/correctly assess input as Gujarati language') do
    expect(LanguageDetectionOne.gujarati).to eq(code: 'gu', name: 'GUJARATI', reliable: true)
  end
end

describe('Language Detection - Haitian Creole') do
  it('/correctly assess input as Haitian Creole language') do
    expect(LanguageDetectionTwo.haitian_creole).to eq(code: 'ht', name: 'HAITIAN_CREOLE', reliable: true)
  end
end

describe('Language Detection - Hebrew') do
  it('/correctly assess input as Hebrew language') do
    expect(LanguageDetectionTwo.hebrew).to eq(code: 'he', name: 'HEBREW', reliable: true)
  end
end

describe('Language Detection - Hindi') do
  it('/correctly assess input as Hindi language') do
    expect(LanguageDetectionTwo.hindi).to eq(code: 'hi', name: 'HINDI', reliable: true)
  end
end

describe('Language Detection - Hmong') do
  it('/correctly assess input as Hmong language') do
    expect(LanguageDetectionTwo.hmong).to eq(code: 'hmn', name: 'HMONG', reliable: true)
  end
end

describe('Language Detection - Hungarian') do
  it('/correctly assess input as Hungarian language') do
    expect(LanguageDetectionTwo.hungarian).to eq(code: 'hu', name: 'HUNGARIAN', reliable: true)
  end
end

describe('Language Detection - Icelandic') do
  it('/correctly assess input as Icelandic language') do
    expect(LanguageDetectionTwo.icelandic).to eq(code: 'is', name: 'ICELANDIC', reliable: true)
  end
end

describe('Language Detection - Indonesian') do
  it('/correctly assess input as Indonesian language') do
    expect(LanguageDetectionTwo.indonesian).to eq(code: 'id', name: 'INDONESIAN', reliable: true)
  end
end

describe('Language Detection - Inuktitut') do
  it('/correctly assess input as Inuktitut language') do
    expect(LanguageDetectionTwo.inuktitut).to eq(code: 'iu', name: 'INUKTITUT', reliable: true)
  end
end

describe('Language Detection - Irish') do
  it('/correctly assess input as Irish language') do
    expect(LanguageDetectionTwo.irish).to eq(code: 'ga', name: 'IRISH', reliable: true)
  end
end

describe('Language Detection - Italian') do
  it('/correctly assess input as Italian language') do
    expect(LanguageDetectionTwo.italian).to eq(code: 'it', name: 'ITALIAN', reliable: true)
  end
end

describe('Language Detection - Javanese') do
  it('/correctly assess input as Javanese language') do
    expect(LanguageDetectionTwo.javanese).to eq(code: 'jv', name: 'JAVANESE', reliable: true)
  end
end

describe('Language Detection - Japanese') do
  it('/correctly assess input as Japanese language') do
    expect(LanguageDetectionTwo.japanese).to eq(code: 'ja', name: 'Japanese', reliable: true)
  end
end

describe('Language Detection - Kannada') do
  it('/correctly assess input as Kannada language') do
    expect(LanguageDetectionTwo.kannada).to eq(code: 'kn', name: 'KANNADA', reliable: true)
  end
end

describe('Language Detection - Khmer') do
  it('/correctly assess input as Khmer language') do
    expect(LanguageDetectionTwo.khmer).to eq(code: 'km', name: 'KHMER', reliable: true)
  end
end

describe('Language Detection - Kinyarwanda') do
  it('/correctly assess input as Kinyarwanda language') do
    expect(LanguageDetectionTwo.kinyarwanda).to eq(code: 'rw', name: 'KINYARWANDA', reliable: true)
  end
end

describe('Language Detection - Korean') do
  it('/correctly assess input as Korean language') do
    expect(LanguageDetectionTwo.korean).to eq(code: 'ko', name: 'Korean', reliable: true)
  end
end

describe('Language Detection - Laotian') do
  it('/correctly assess input as Laotian language') do
    expect(LanguageDetectionTwo.laotian).to eq(code: 'lo', name: 'LOATIAN', reliable: true)
  end
end

describe('Language Detection - Latvian') do
  it('/correctly assess input as Latvian language') do
    expect(LanguageDetectionTwo.latvian).to eq(code: 'lv', name: 'LATVIAN', reliable: true)
  end
end

describe('Language Detection - Lithuanian') do
  it('/correctly assess input as Lithuanian language') do
    expect(LanguageDetectionTwo.lithuanian).to eq(code: 'lt', name: 'LITHUANIAN', reliable: true)
  end
end

describe('Language Detection - Macedonian') do
  it('/correctly assess input as Macedonian language') do
    expect(LanguageDetectionTwo.macedonian).to eq(code: 'mk', name: 'MACEDONIAN', reliable: true)
  end
end

describe('Language Detection - Malay') do
  it('/correctly assess input as Malay language') do
    expect(LanguageDetectionTwo.malay).to eq(code: 'ms', name: 'MALAY', reliable: true)
  end
end

describe('Language Detection - Malayalam') do
  it('/correctly assess input as Malayalam language') do
    expect(LanguageDetectionTwo.malayalam).to eq(code: 'ml', name: 'MALAYALAM', reliable: true)
  end
end

describe('Language Detection - Maltese') do
  it('/correctly assess input as Maltese language') do
    expect(LanguageDetectionTwo.maltese).to eq(code: 'mt', name: 'MALTESE', reliable: true)
  end
end

describe('Language Detection - Marathi') do
  it('/correctly assess input as Marathi language') do
    expect(LanguageDetectionTwo.marathi).to eq(code: 'mr', name: 'MARATHI', reliable: true)
  end
end

describe('Language Detection - Nepali') do
  it('/correctly assess input as Nepali language') do
    expect(LanguageDetectionTwo.nepali).to eq(code: 'ne', name: 'NEPALI', reliable: true)
  end
end

describe('Language Detection - Norwegian') do
  it('/correctly assess input as Norwegian language') do
    expect(LanguageDetectionTwo.norwegian).to eq(code: 'no', name: 'NORWEGIAN', reliable: true)
  end
end

describe('Language Detection - Oriya') do
  it('/correctly assess input as Oriya language') do
    expect(LanguageDetectionThree.oriya).to eq(code: 'or', name: 'ORIYA', reliable: true)
  end
end

describe('Language Detection - Persian') do
  it('/correctly assess input as Persian language') do
    expect(LanguageDetectionThree.persian).to eq(code: 'fa', name: 'PERSIAN', reliable: true)
  end
end

describe('Language Detection - Polish') do
  it('/correctly assess input as Polish language') do
    expect(LanguageDetectionThree.polish).to eq(code: 'pl', name: 'POLISH', reliable: true)
  end
end

describe('Language Detection - Portuguese') do
  it('/correctly assess input as Portuguese language') do
    expect(LanguageDetectionThree.portuguese).to eq(code: 'pt', name: 'PORTUGUESE', reliable: true)
  end
end

describe('Language Detection - Punjabi') do
  it('/correctly assess input as Punjabi language') do
    expect(LanguageDetectionThree.punjabi).to eq(code: 'pa', name: 'PUNJABI', reliable: true)
  end
end

describe('Language Detection - Romanian') do
  it('/correctly assess input as Romanian language') do
    expect(LanguageDetectionThree.romanian).to eq(code: 'ro', name: 'ROMANIAN', reliable: true)
  end
end

describe('Language Detection - Russian') do
  it('/correctly assess input as Russian language') do
    expect(LanguageDetectionThree.russian).to eq(code: 'ru', name: 'RUSSIAN', reliable: true)
  end
end

describe('Language Detection - Scots Gaelic') do
  it('/correctly assess input as Scots Gaelic language') do
    expect(LanguageDetectionThree.scots_gaelic).to eq(code: 'gd', name: 'SCOTS_GAELIC', reliable: true)
  end
end

describe('Language Detection - Serbian') do
  it('/correctly assess input as Serbian language') do
    expect(LanguageDetectionThree.serbian).to eq(code: 'sr', name: 'SERBIAN', reliable: true)
  end
end

describe('Language Detection - Sinhala') do
  it('/correctly assess input as Sinhala language') do
    expect(LanguageDetectionThree.sinhala).to eq(code: 'si', name: 'SINHALA', reliable: true)
  end
end

describe('Language Detection - Slovak') do
  it('/correctly assess input as Slovak language') do
    expect(LanguageDetectionThree.slovak).to eq(code: 'sk', name: 'SLOVAK', reliable: true)
  end
end

describe('Language Detection - Slovenian') do
  it('/correctly assess input as Slovenian language') do
    expect(LanguageDetectionThree.slovenian).to eq(code: 'sl', name: 'SLOVENIAN', reliable: true)
  end
end

describe('Language Detection - Somali') do
  it('/correctly assess input as Somali language') do
    expect(LanguageDetectionThree.somali).to eq(code: 'so', name: 'SOMALI', reliable: true)
  end
end

describe('Language Detection - Spanish') do
  it('/correctly assess input as Spanish language') do
    expect(LanguageDetectionThree.spanish).to eq(code: 'es', name: 'SPANISH', reliable: true)
  end
end

describe('Language Detection - Swahili') do
  it('/correctly assess input as Swahili language') do
    expect(LanguageDetectionThree.swahili).to eq(code: 'sw', name: 'SWAHILI', reliable: true)
  end
end

describe('Language Detection - Swedish') do
  it('/correctly assess input as Swedish language') do
    expect(LanguageDetectionThree.swedish).to eq(code: 'sv', name: 'SWEDISH', reliable: true)
  end
end

describe('Language Detection - Tagalog') do
  it('/correctly assess input as Tagalog language') do
    expect(LanguageDetectionThree.tagalog).to eq(code: 'tl', name: 'TAGALOG', reliable: true)
  end
end

describe('Language Detection - Tamil') do
  it('/correctly assess input as Tamil language') do
    expect(LanguageDetectionThree.tamil).to eq(code: 'ta', name: 'TAMIL', reliable: true)
  end
end

describe('Language Detection - Telugu') do
  it('/correctly assess input as Telugu language') do
    expect(LanguageDetectionThree.telugu).to eq(code: 'te', name: 'TELUGU', reliable: true)
  end
end

describe('Language Detection - Thai') do
  it('/correctly assess input as Thai language') do
    expect(LanguageDetectionThree.thai).to eq(code: 'th', name: 'THAI', reliable: true)
  end
end

describe('Language Detection - Turkish') do
  it('/correctly assess input as Turkish language') do
    expect(LanguageDetectionThree.turkish).to eq(code: 'tr', name: 'TURKISH', reliable: true)
  end
end

describe('Language Detection - Ukrainian') do
  it('/correctly assess input as Ukrainian language') do
    expect(LanguageDetectionThree.ukrainian).to eq(code: 'uk', name: 'UKRAINIAN', reliable: true)
  end
end

describe('Language Detection - Urdu') do
  it('/correctly assess input as Urdu language') do
    expect(LanguageDetectionThree.urdu).to eq(code: 'ur', name: 'URDU', reliable: true)
  end
end

describe('Language Detection - Vietnamese') do
  it('/correctly assess input as Vietnamese language') do
    expect(LanguageDetectionThree.vietnamese).to eq(code: 'vi', name: 'VIETNAMESE', reliable: true)
  end
end

describe('Language Detection - Welsh') do
  it('/correctly assess input as Welsh language') do
    expect(LanguageDetectionThree.welsh).to eq(code: 'cy', name: 'WELSH', reliable: true)
  end
end

describe('Language Detection - Yiddish') do
  it('/correctly assess input as Yiddish language') do
    expect(LanguageDetectionThree.yiddish).to eq(code: 'yi', name: 'YIDDISH', reliable: true)
  end
end

describe('Language Detection - Zulu') do
  it('/correctly assess input as Zulu language') do
    expect(LanguageDetectionThree.zulu).to eq(code: 'zu', name: 'ZULU', reliable: true)
  end
end

describe('Language Detection - Empty argument') do
  it('/outputs unknown message') do
    expect(LanguageDetectionThree.empty_arg).to eq(code: 'un', name: 'Unknown', reliable: false)
  end
end

describe('Language Detection - Nil argument') do
  it('/outputs unknown message') do
    expect(LanguageDetectionThree.nil_arg).to eq(code: 'un', name: 'Unknown', reliable: false)
  end
end

describe('Language Detection - Error') do
  it('/raises argument error') do
    expect { raise LanguageDetectionThree.arg_error }.to raise_error(ArgumentError)
  end
end

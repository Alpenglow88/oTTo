# frozen_string_literal: true

require './unit_tests/unit_test_helper.rb'

include LiveLanguageLabel

begin
  describe('Undefined label outout - Sandbox') do
    it('/outputs predefined live label value when the language is undefined in the sandbox') do
      expect(LiveLanguageLabel.undefined_label_sand).to eq('EN VIVO')
    end
  end

  describe('Valid label outout - English Sandbox') do
    it('/utputs predefined live label value when the language is English in the sandbox') do
      expect(LiveLanguageLabel.valid_label_en_sand).to eq('LIVE')
    end
  end

  describe('Valid label outout - Italian Sandbox') do
    it('/utputs predefined live label value when the language is Italian in the sandbox') do
      expect(LiveLanguageLabel.valid_label_it_sand).to eq('LIVE')
    end
  end

  describe('Valid label outout - Spanish Sandbox') do
    it('/utputs predefined live label value when the language is Spanish in the sandbox') do
      expect(LiveLanguageLabel.valid_label_es_sand).to eq('EN VIVO')
    end
  end

  describe('Valid label outout - German Sandbox') do
    it('/utputs predefined live label value when the language is German in the sandbox') do
      expect(LiveLanguageLabel.valid_label_de_sand).to eq('LIVE')
    end
  end

  describe('Valid label outout - French Sandbox') do
    it('/utputs predefined live label value when the language is French in the sandbox') do
      expect(LiveLanguageLabel.valid_label_fr_sand).to eq('EN DIRECT')
    end
  end

  describe('Valid label outout - Japanese Sandbox') do
    it('/utputs predefined live label value when the language is Japanese in the sandbox') do
      expect(LiveLanguageLabel.valid_label_jp_sand).to eq('ライブ')
    end
  end

  describe('Valid label outout - OOT Sandbox') do
    it('/utputs predefined live label value when the language out of territory in the sandbox') do
      expect(LiveLanguageLabel.valid_label_oot_sand).to eq(nil)
    end
  end

  describe('Argument Error') do
    it('/raises argument error') do
      expect { raise LiveLanguageLabel.argument_error }.to raise_error(ArgumentError)
    end
  end
end

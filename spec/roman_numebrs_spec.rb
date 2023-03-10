# frozen_string_literal: true

require 'rspec'
require_relative '../src/roman_numbers.rb'
require_relative '../data/roman_data.rb'

RSpec.describe do
  context 'when the numbers are in range' do
    describe '.to_roman' do
      IN_RANGE_NUMBERS.each do |roman, arabic|
        it "transforms #{arabic} to #{roman}" do
          expect(arabic.to_roman).to eq(roman)
        end
      end
    end
  end

  context 'when the numbers are out of range' do
    OUT_OF_RANGE_NUMBERS.each do |roman, arabic|
      it "returns '#{roman}'" do
        expect(arabic.to_roman).to eq(OUT_OF_RANGE)
      end
    end
  end
end

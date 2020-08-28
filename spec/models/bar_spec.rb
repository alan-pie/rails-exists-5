require 'rails_helper'

RSpec.describe Bar, type: :model do
  describe 'with a foo in foos,' do
    let(:foo) { Foo.new }
    let(:bar) { Bar.new(foos: [foo]) }

    it 'foo_ids.include?(foo.id) includes the foo' do
      expect(bar.foo_ids.include?(foo.id)).to be true
    end

    it 'foos.first is foo' do
      expect(bar.foos.first).to eq foo
    end

    it 'foos.size is 1' do
      expect(bar.foos.size).to eq 1
    end

    it 'foos.empty? is false' do
      expect(bar.foos.empty?).to be false
    end

    it 'foos.find(foo.id) returns the foo' do
      expect(bar.foos.find(foo.id)).to eq foo
    end

    it 'foos.include?(foo) is true' do
      expect(bar.foos.include?(foo)).to be true
    end

    it 'foos.exists?(foo.id) is true' do
      expect(bar.foos.exists?(foo.id)).to be true
    end

    it 'foos.take returns f' do
      expect(bar.foos.take).to eq f
    end
  end
end

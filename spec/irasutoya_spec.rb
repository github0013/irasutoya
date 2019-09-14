# frozen_string_literal: true

RSpec.describe Irasutoya do
  it 'has a version number' do
    expect(Irasutoya::VERSION).not_to be nil
  end

  describe '#random' do
    before do
      allow(Net::HTTP).to receive(:get) { File.read('spec/files/posts_summary.jsonp') }
      allow(URI).to receive_message_chain(:parse, :open) { File.read('spec/files/post.html') }
    end

    it 'should return random irasuto' do
      expect(Irasutoya.random).to be_a(Irasutoya::Irasuto)
    end

    it 'should return random irasuto with url' do
      expect(Irasutoya.random.url).to eq('http://www.irasutoya.com/2014/03/blog-post_5924.html')
    end

    it 'should return random irasuto with title' do
      expect(Irasutoya.random.title).to eq('太った少年のイラスト（肥満）')
    end

    it 'should return random irasuto with description' do
      expect(Irasutoya.random.description).to eq('標準体重よりも少し太った小学生～中学生くらいの少年（肥満児）のイラストです。')
    end

    it 'should return random irasuto with image_url' do
      expect(Irasutoya.random.image_url).to eq('http://4.bp.blogspot.com/-7Pa9IazPoII/VGLMYk-SjpI/AAAAAAAAo_s/IryhUKoFJQ0/s400/himan03_youngman.png')
    end
  end
end

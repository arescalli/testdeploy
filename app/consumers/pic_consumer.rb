class PicConsumer
  include Hutch::Consumer
  consume 'logishift.pic_importer'

  def process(message)
    # mark_payment_as_failed(message[:id])
    # PicImporterWorker.new.execute('test')
    array = []
    2000.times do 
    	o = OpenStruct.new(train: 1, date: Date.today)
    	array << o
    	p = PicImporterLog.new
    	p.text = Date.today.to_s
    	p.save!
    end
    Rails.logger.info 'Sono il pic importerrrrrr'
  end
end
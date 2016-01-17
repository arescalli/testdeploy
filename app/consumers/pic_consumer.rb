class PicConsumer
  include Hutch::Consumer
  consume 'logishift.pic_importer'

  def process(message)
    # mark_payment_as_failed(message[:id])
    # PicImporterWorker.new.execute('test')
    20.times do 
    	o = OpenStruct.new(train: 1, date: Date.today)
    	Rails.logger.info 'Sono il pic importerrrrrr'
    	sleep(10)
    end
  end
end
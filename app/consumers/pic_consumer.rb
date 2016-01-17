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
    end
    Rails.logger.info 'Sono il pic importerrrrrr'
  end
end
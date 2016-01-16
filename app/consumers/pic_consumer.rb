class PicConsumer
  include Hutch::Consumer
  consume 'logishift.pic_importer'

  def process(message)
    # mark_payment_as_failed(message[:id])
    # PicImporterWorker.new.execute('test')
    puts 'Sono il pic importer!'
    Rails.logger.info 'Sono il pic importerrrrrr'
  end
end
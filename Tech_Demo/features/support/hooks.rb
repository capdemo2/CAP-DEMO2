#Author: MOKLASUR RAHMAN
#Date:07/11/2016
include SauceLabs
include MacysReusableFunction


Before do


    ENV['BROWSER'] ||= "chrome"
    ENV['WHERE'] ||= "local"

    if(ENV['WHERE']=="remote")

      @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym,{url:"http://taz_bir2017:a7ae7d93-8d55-45f9-9d9b-dbc8d9d32aa9@ondemand.saucelabs.com:443/wd/hub"})

    else
      # @browser = SauceLabs.watir_browser(ENV['BROWSER'].to_sym)

      if(ENV['BROWSER']== "chrome")
        @browser = Watir::Browser.new ENV['BROWSER'].to_sym,:switches => %w[--disable-extensions  --ignore-certificate-errors --disable-popup-blocking --disable-translate]
      else
        @browser = Watir::Browser.new ENV['BROWSER'].to_sym
      end
      # @browser = Watir::Browser.new ENV['BROWSER'].to_sym
      # @browser = Watir::Browser.new ENV['BROWSER'].to_sym,:switches => %w[--disable-extensions  --ignore-certificate-errors --disable-popup-blocking --disable-translate]
    end

    @browser.window.maximize
  end


After do |scenario|
  if scenario.failed?
      time = Time.now.strftime("%Y-%m-%d_%H-%M-%S")
    Dir::mkdir('screenshots') if not File.directory?('screenshots')
    screenshot = "./screenshots/FAILED_#{scenario.name.gsub(' ','_').gsub(/[^0-9A-Za-z_]/, '')}.png"
    @browser.driver.save_screenshot(screenshot)
    embed screenshot, 'image/png'
  end
  @browser.quit

end




at_exit do
  ENV['ARCHIVE_RESULTS'] = 'no' if ENV['ARCHIVE_RESULTS'].nil?
  if ENV['ARCHIVE_RESULTS']=="yes"
    Dir.mkdir("resultsarchive") if Dir["resultsarchive"].empty?
    folder = Dir.pwd
    input_filenames = ['results.html']

    zipfile_name = "#{Date.today}_results.zip"

    Zip::File.open(zipfile_name, Zip::File::CREATE) do |zipfile|
      input_filenames.each do |filename|
        zipfile.add(filename, folder + '/' + filename)
      end
    end
    FileUtils.mv(zipfile_name,"resultsarchive/#{zipfile_name}")
  end
end




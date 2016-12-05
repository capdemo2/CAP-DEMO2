module ReuseableFunction


  def excel(excel_file_name, work_sheet_name,row,column)
    dir_to_excel = Dir.pwd + '/lib/config/data/'
    $read_workbook = RubyXL::Parser.parse("#{dir_to_excel}#{excel_file_name}")
    $worksheet = $read_workbook["#{work_sheet_name}"]
    $worksheet[row][column].value
  end


  def excel_macys_internal(row,column)
    dir_to_excel = Dir.pwd + '/lib/config/data/'
    $read_workbook = RubyXL::Parser.parse("#{dir_to_excel}/Macys.xlsx")
    $worksheet = $read_workbook["#{Test_Data}"]
    $worksheet[row][column].value
  end




end
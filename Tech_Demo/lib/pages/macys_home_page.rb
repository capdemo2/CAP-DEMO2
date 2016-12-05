class MacysHomePage<GenericBasePage


  page_url "http://www1.macys.com/"


  element(:my_account){|b|b.link(id:"href_myAccountHeader")}
  element(:create_btn){|b|b.span(text:"create")}
  element(:fname){|b|b.text_field(id:"firstName")}
  element(:lname){|b|b.text_field(id:"lastName")}
  element(:email_text){|b|b.text_field(id:"email")}
  element(:passwrd){|b|b.text_field(id:"password")}
  element(:month_drop_down){|b|b.select(id:"month")}
  element(:date_drop_down){|b|b.select(id:"day")}
  element(:year_drop_down){|b|b.select(id:"year")}
  element(:create_profile_btn){|b|b.button(id:"createProfileBtn")}


  def click_on_my_account_link
    my_account.when_present(60).click
  end

  def click_create_btn
    create_btn.when_present.click
  end

  def enter_random_email
    # @a1=rand(0..2000)''
    # @email="jhon_smith"+"#{@a1}"+"@gmail.com"
    # puts "Printing Email #{@email}"
    #
    email_text.when_present.set("bal-tal@gmail.com")
  end


  def enter_profile_info


    fname.when_present.set excel_macys_internal(1,0)
    lname.when_present.set excel_macys_internal(1,1)
   # email.when_present.set excel_macys_internal(1,2)
   # email_text.when_present.set random_email
    passwrd.when_present.set excel_macys_internal(1,3)
    month_drop_down.when_present.select excel_macys_internal(1,4)
    date_drop_down.when_present.select excel_macys_internal(1,5)
    year_drop_down.when_present.select excel_macys_internal(1,6)
  end

  def click_create_profile_btn
    create_profile_btn.when_present.click
  end













end
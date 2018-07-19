class Contact < MailForm::Base
  attribute :amount,        :validate => true
  attribute :name,          :validate => true
  attribute :company_name,  :validate => true
  attribute :company_zip,   :validate => true
  attribute :email,         :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :nickname,  :captcha  => true

  def headers
  	{
      :subject => "Application Form",
      :to => "burgeonx@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
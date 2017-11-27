class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message
  attribute :nickname,  :captcha  => true

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Jess Sharman Contact Form",
      :to => "jessicasharmanmusic@gmail.com",
      :from => %("#{name}" <#{email}>)
      :reply_to => %<#{email}>
    }
  end
end

class EmailValidator < ActiveModel::Validator
  def validate record
    if record.email.split('').last(17).join('').downcase == '@spartaglobal.com'
    else
      record.errors.add(:email, "This is not a sparta global email address.")
    end
  end
end

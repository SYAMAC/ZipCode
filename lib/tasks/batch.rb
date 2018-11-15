require 'csv'

class Tasks::Batch

  def self.import_csv_to_database
    file = "#{Rails.root}/tmp/KEN_ALL.CSV"
    begin
      CSV.foreach(file, encoding: "SJIS") do |row|
        postal_code = PostalCode.create!(postal_code: row[2])
        # ダウンロードしたデータに下記のような文言があったため修正
        street = if row[8] == "以下に掲載がない場合"
                  ''
                else
                  row[8]
                end
        Address.create!(
          prefecture: row[6],
          city: row[7],
          street: street,
          postal_code_id: postal_code.id
        )
      end
      p "Read Success"
    rescue
      p "Error!"
    end
  end
end
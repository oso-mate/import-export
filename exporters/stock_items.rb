class Exporter::StockItems < Exporter

  def self.format(data)
    data.map! do |row|
      {
        id: row["item id"],
        description: row["description"],
        price: row["price"],
        cost: row["cost"],
        price_type: row["price_type"],
        quantity_on_hand: row["quantity_on_hand"],
        modifiers: generate_modifiers(row)
      }
    end
  end

  def self.generate_modifiers(row)
    index = 1

    [].tap do |m|
      while row.has_key?("modifier_#{index}_name") do
        modifier = {
          name: row["modifier_#{index}_name"],
          price: row["modifier_#{index}_price"]
        }

        m.push modifier
        index += 1
      end
    end
  end

end
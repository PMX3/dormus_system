json.array!(@deals) do |deal|
  json.extract! deal, :id, :deal_type, :amount_due, :amount_paid, :deal_timestamp, :payment_for
  json.url deal_url(deal, format: :json)
end

online_bank = {
  client: "German Oskarovich Blockchain",
  balance: 123.45,
  list_transaction: [{
    definition: 'Shoes',
    type: :output,
    sum: 40
    }, {
    definition: 'Salary (compony BLIJP)',
    type: :input,
    sum: 1000
    }, {
    definition: 'Voucher sale',
    type: :input,
    sum: 300
    }, {
    definition: 'Bicycle',
    type: :output,
    sum: 200
    }, {
    definition: 'Grandms\'s protesic leg',
    type: :output,
    sum: 300
    }],
  visibility_filter: [:input, :output] # in such array show all, if only :input show only input
}

online_bank[:list_transaction].each_index do |arr|
  puts online_bank[:list_transaction][arr].inspect if online_bank[:visibility_filter].include?online_bank[:list_transaction][arr][:type]
end

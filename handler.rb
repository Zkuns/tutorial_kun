require 'json'
require 'aws-sdk'

def get_campaign(event:, context:)
  dynamodb = Aws::DynamoDB::Client.new(region: 'us-east-1')
  client_id = event["queryStringParameters"]["client_id"]
  params = {
    table_name: 'Campaign_03',
    scan_filter: {
      "client_id" => {
        attribute_value_list: [client_id],
        comparison_operator: "EQ"
      },
    }
  }
  begin
    data = dynamodb.scan(params)
    response = {
      statusCode: 200,
      body: {
        data: data[:items]
      }.to_json
    }
  rescue  Aws::DynamoDB::Errors::ServiceError => error
    response = {
      statusCode: 500,
      body: {
        message: error
      }.to_json
    }
  end
  response
end

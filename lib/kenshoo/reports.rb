module Kenshoo
  module Reports
    def list
      response = self.http_client.get "/v2/reports?ks=#{self.ks_id}"
      JSON(response)
    end

    def get(report_id)
      response = self.http_client.get "/v2/reports/#{report_id}?ks=#{self.ks_id}"
      JSON(response)
    end

    # return runToken
    def run(report_id, start_date, end_date)
      data = { dateRange: { from: start_date, to: end_date } }
      runner = self.http_client.post "/v2/reports/#{report_id}/runs?ks=#{self.ks_id}", JSON(data)
      runner.env.response_headers['location'].split('/').last.split('?').first
    end

    def status(run_token)
      response = self.http_client.get "/v2/reports/runs/#{run_token}/status?ks=#{self.ks_id}"
      JSON(response)
    end
  end
end

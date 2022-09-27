require 'uri'
require 'net/http'
module Scrapper
    class Scrapper
        def scrap
            total_count = 0
            count_per_offset = 20
            3.times.each do |index|
              puts "INDEX #{index}"
                green_japan_url = 'https://www.green-japan.com/api/v2/user/job_offers?company_name_only_flg=false&keyword=&low_job_type_ids%5B%5D=190100&new_flg=false&offset=%{offset}&order_type=job_offer_score&salary_bottom_id=&width_size=400'
                target_url = green_japan_url.sub('%{offset}', index.to_s)
                puts "TARGETURL #{target_url}"
                res = Net::HTTP.get_response(URI(target_url))

                formated_res = JSON.parse(res.body.force_encoding('utf-8'))
                formated_res['job_offers']
                ["total_job_offer_count", "total_client_count", "job_offers"]
                puts "====== res ======"
                puts formated_res['total_job_offer_count']
                puts formated_res['total_client_count']
                puts formated_res['job_offers'].first
                puts "====== res ======"
                # 1~10秒度間でランダムで待機
                sleep(rand(1..10)) 
            end
        end
    end
end
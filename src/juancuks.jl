module juancuks

using HTTP

export send_post_request

function send_post_request(url::String, data::Dict)
    headers = Dict("Content-Type" => "application/x-www-form-urlencoded")
    
    body = join(["$(key)=$(HTTP.escape_string(value))" for (key, value) in data], "&")
    
    response = HTTP.post(url, headers=headers, body=body)
    return response
end

end

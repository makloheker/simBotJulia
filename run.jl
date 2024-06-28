using Pkg
Pkg.activate(".")
using juancuks
using JSON

function botResponse(text::String, lc::String = "id")
    url = "https://api.simsimi.vn/v1/simtalk"
    data = Dict("text" => text, "lc" => lc)
    response = juancuks.send_post_request(url, data)
    return response
end

function crots()
    while true
        print("you>: ")
        text_input = readline()
        
        response = botResponse(text_input)
        
        body_string = String(response.body)
        
        response_dict = JSON.parse(body_string)
        
        s_response = response_dict["message"]
        
        println("bot>: ", s_response)

        if text_input == "exit"
            break
        end
    end
end

crots()

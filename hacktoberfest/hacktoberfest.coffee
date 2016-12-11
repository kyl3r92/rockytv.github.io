---
permalink: /hacktoberfest/hacktoberfest
---

pr_count = 0
$('form').submit (evt) ->
    # Clean up
    $('.hacktober-result .hacktober-collection').empty()
    $('.hacktober-result p').remove()
    pr_count = 0

    arr = $(this).serializeArray()

    for item in arr
        if item.name == 'github_user'
            username = item.value

            if username 
                $.getJSON("https://api.github.com/search/issues?q=created:2016-09-30T00:00:00-12:00..2016-10-31T23:59:59-12:00+type:pr+is:public+author:#{username}")
                    .done (json) ->
                        pr_count = json.total_count
                        for json_item in json.items
                            elem = document.createElement 'a'

                            elem.className = 'collection-item'
                            elem.href = json_item.html_url
                            elem.target = '_blank'
                            
                            repo_name = json_item.repository_url.replace 'https://api.github.com/repos/', ''
                            elem.appendChild document.createTextNode "#{repo_name} ##{json_item.number} - #{json_item.title} (#{json_item.state})"

                            $('.hacktober-result .hacktober-collection').append elem
                        
                        requests_text = if pr_count == 1 then 'request' else 'requests'
                        helper_text = if pr_count >= 1 then "You have submitted #{pr_count} pull #{requests_text}" else "You haven't submitted a pull request yet :("

                        elem = document.createElement 'p'
                        elem.appendChild document.createTextNode helper_text

                        $('.hacktober-result').prepend elem
    
    evt.preventDefault()
    evt.stopImmediatePropagation()
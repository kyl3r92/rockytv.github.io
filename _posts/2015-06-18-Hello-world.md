---
title: Hello, world!
---

Lorem ipsum dolor sit amet

{% highlight ruby linenos %}
def show
  @widget = Widget(params[:id])
  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @widget }
  end
end
{% endhighlight %}

{% highlight c# linenos %}
public static void Main(string[] args)
{
        Console.WriteLine("Hello, world!");
}
{% endhighlight %}

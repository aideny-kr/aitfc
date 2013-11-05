class FacebookInterface

  class StubInterface

    def friends
      [
        {
          "name" => "James Schaffer",
          "id" => "11670"
        },
        {
          "name" => "Brian O'Malley",
          "id" => "615125"
        },
        {
          "name" => "Greg Staff",
          "id" => "1507686"
        },
        {
          "name" => "Katherine McNerney",
          "id" => "1530325"
        },
        {
          "name" => "Joel Bonasera",
          "id" => "1905046"
        },
        {
          "name" => "Denny Abraham",
          "id" => "1911249"
        }
      ]
    end

    def friend_detail(id)
      {
        "id" => id.to_s,
        "name" => "James Schaffer",
        "first_name" => "James",
        "last_name" => "Schaffer",
        "link" => "https://www.facebook.com/jas.schaffer",
        "username" => "jas.schaffer",
        "gender" => "male",
        "locale" => "en_US",
        "updated_time" => "2013-09-23T02:08:44+0000"
      }
    end
  end
end

FacebookInterface.stubs(:for).returns(FacebookInterface::StubInterface.new)
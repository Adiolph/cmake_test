#include <catch2/catch.hpp>
#include <string>

TEST_CASE("String", "[String]")
{
    SECTION("ABC equals ABS")
    {
        std::string a, b;
        a = "ABC";
        b = "ABC";
        REQUIRE(a == b);
    }
}

#include "add/MyAdd.hpp"
#include <catch2/catch.hpp>
#include "spdlog/spdlog.h"
#include "spdlog/sinks/stdout_color_sinks.h"
auto test_logger = spdlog::stdout_color_mt("TestLogger");

TEST_CASE("Add", "[Add]")
{
    SECTION("1 pulse 1")
    {
        test_logger->debug(MyAdd(1, 1));
        REQUIRE(MyAdd(1, 1) == 2);
    }
    SECTION("1 pulse 2")
    {
        test_logger->debug(MyAdd(1, 2));
        REQUIRE(MyAdd(1, 2) == 3);
    }
}
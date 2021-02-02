#include "iostream"
#include "spdlog/spdlog.h"
#include "spdlog/sinks/stdout_color_sinks.h"

using std::endl;
using std::cout;
auto logger = spdlog::stdout_color_mt("MyLogger");

void MyPrint()
{
    // cout << "Hello, world!" << endl;
    logger->info("Hello, world!");
}

void MyPrint(const std::string & str)
{
    // cout << str << endl;
    logger->info(str);
}
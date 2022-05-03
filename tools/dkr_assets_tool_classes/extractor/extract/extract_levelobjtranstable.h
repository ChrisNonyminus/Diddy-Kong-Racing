#pragma once

#include "extract.h"

class ExtractLevelObjectTranslationTable : Extract {
public:
    ExtractLevelObjectTranslationTable(std::string key, std::vector<uint8_t> data, std::string outFilepath, std::string folder, json::JSON &configJSON);
    ~ExtractLevelObjectTranslationTable();
};


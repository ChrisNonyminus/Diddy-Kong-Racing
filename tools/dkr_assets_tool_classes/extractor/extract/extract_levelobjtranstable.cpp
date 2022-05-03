#include "extract_levelobjtranstable.h"

#define SECTION_OBJECT_HEADERS_INDEX 34
#define NULL_ENTRY 0x200

ExtractLevelObjectTranslationTable::ExtractLevelObjectTranslationTable(std::string key, std::vector<uint8_t> data, 
std::string outFilepath, std::string folder, json::JSON &configJSON) : Extract(key, data, outFilepath) {    
    json::JSON out = json::Object();
    json::JSON table = json::Array();

    int size = 512;
    while (size > 1) {
        int i = size - 1;
        int objIndex = (data[i*2] << 8) | data[i*2+1];
        if(objIndex != NULL_ENTRY) {
            break;
        }
        size--;
    }
    
    for(int i = 0; i < size; i++) {
        int objIndex = (data[i*2] << 8) | data[i*2+1];
        table.append(configJSON["assets"]["sections"][SECTION_OBJECT_HEADERS_INDEX]["child-build-ids"][objIndex]);
    }
    
    out["table"] = table;
    out["type"] = "LevelObjectTranslationTable";
    write_json(out, outFilepath);
    print_extracted();
}

ExtractLevelObjectTranslationTable::~ExtractLevelObjectTranslationTable(){
}


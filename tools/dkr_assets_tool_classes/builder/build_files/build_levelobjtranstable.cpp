#include "build_levelobjtranstable.h"

#define NULL_ENTRY 0x200
#define TABLE_SIZE 512

void write_to_table(std::vector<uint8_t> &out, int offset, int value) {
    out[offset] = (value >> 8) & 0xFF;
    out[offset + 1] = value & 0xFF;
}

BuildLevelObjectTranslationTable::BuildLevelObjectTranslationTable(std::string srcPath, std::string dstPath) {
    std::vector<uint8_t> out(TABLE_SIZE * 2);

    int jsonTableSize = get_array_length_from_json(srcPath, "table");

    for(int i = 0; i < TABLE_SIZE; i++) {
        if(i < jsonTableSize) {
            std::string objId = get_string_from_json(srcPath, "table", i);
            int index = get_index_from_build_id("ASSET_OBJECT_HEADERS", objId);
            write_to_table(out, i*2, (index != -1) ? index : NULL_ENTRY);
        } else {
            write_to_table(out, i*2, NULL_ENTRY);
        }
    }

    write_binary_file(out, dstPath);
}

BuildLevelObjectTranslationTable::~BuildLevelObjectTranslationTable() {
    
}

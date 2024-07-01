#include "ROM.h"

void ROM::run()
{
    int id;
    bool type;
    string filename;
    ifstream file;
    float value;
    bool is_reading_data = false;
    
    while(rst.read())
        wait();
    while(true)
    {
        if(!is_reading_data)
        {
            if(layer_id_valid.read())
            {
                // Read signals
                id = layer_id.read();
                type = layer_id_type.read();
                if (id == 0)
                {
                    filename = string(DATA_PATH) + IMAGE_FILE_NAME;
                }
                else if (id <= 5)
                {
                    if (type == 0)
                        filename = string(DATA_PATH) + "conv" + to_string(id) + "_weight.txt";
                    else
                        filename = string(DATA_PATH) + "conv" + to_string(id) + "_bias.txt";
                }
                else if (id <= 8)
                {
                    if (type == 0)
                        filename = string(DATA_PATH) + "fc" + to_string(id) + "_weight.txt";
                    else
                        filename = string(DATA_PATH) + "fc" + to_string(id) + "_bias.txt";
                }
                else
                {
                    cout << "Error: Invalid layer id " << id << "." << endl;
                    sc_stop();
                }
                file = ifstream(filename);
                is_reading_data = true;
            }
        }
        else 
        {
            if(layer_id_valid.read())
            {
                cout << "Error: layer_id_valid should be low when reading data." << endl;
                sc_stop();
            }
            data_valid.write(true);
            file >> value;
            if(file.eof())
            {
                file.close();
                data_valid.write(false);
                data.write(0);
                is_reading_data = false;
                //cout<<"ROM value: "<<value<<endl;                
                continue;
            }
            data.write(value);
    //        cout<<"ROM value: "<<value<<endl;
        }
        wait();
    }
}
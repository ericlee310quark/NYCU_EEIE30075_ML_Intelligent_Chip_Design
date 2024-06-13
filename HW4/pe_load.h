#ifndef PE_H
#define PE_H

#include <iostream>
#include <fstream>
#include <cstdlib>
#include <iomanip>
#include <algorithm>
#include <vector>
#include <queue>



#include <string>
#include <cmath>
#include <sstream>


#include "systemc.h"
using namespace std;


//-------------------------------
//  Header[23,22] 00: data
//      Header[21:18]:  op
//      Header[17:14]:  next dst
//  Header[23,22] 10: weight
//  Header[23,22] 11: bias
//  Header[21:18]:  result dst
//  
//-------------------------------

struct Packet {
    int source_id;
    int dest_id;
    int op_id;
    bool is_parameter;
    bool is_bias;
    vector<float> datas;
};

class PE {
public:
    PE(){};
    Packet* get_packet();
    void check_packet(Packet* p);
    void init(int pe_id);
    
private:
    int id;
    int next_dst;
    int next_op;
    int send_count;
    int recv_count;

    int in_ch;
    int in_height;
    int in_width;
    int out_ch;
    int out_height;
    int out_width;
    int stride;
    int kernel_size;
    int padding;

    int mp_out_ch;
    int mp_out_size;
    int mp_stride;
    int mp_padding;

    
    vector <float> weights_vec;
    vector <float> bias_vec;

    //vector<Packet> send_packets;
    //vector<Packet> recv_packets;
    queue <Packet*> send_packets;
};

Packet* PE::get_packet(){
    if(this->send_packets.size()>0){
        Packet* tmp_packet = this->send_packets.front();
        cout<<"[INFO]PE_"<<this->id<<": get_packet->datasize:"<<tmp_packet->datas.size()<<endl;
        this->send_packets.pop();
        return tmp_packet;
    }
    else{
        return nullptr;
    }
}
void PE::init(int pe_id){
    this->id = pe_id;
    switch(pe_id){
        case 1:
            this->next_dst = 2;
            this->next_op = 1;

            this->in_ch = 3;
            this->in_height = 224;
            this->in_width  = 224;
            this->out_ch =  64;
            this->out_height = 55;
            this->out_width = 55;
            this->stride = 4;
            this->kernel_size = 11;
            this->padding = 2;

            this->mp_out_ch = 64;
            this->mp_out_size = 27;
            this->mp_stride = 2;
            this->mp_padding = 0;

            break;
        case 2:
            this->next_dst = 3;
            this->next_op = 2;

            this->in_ch = 64;
            this->in_height = 27;
            this->in_width  = 27;
            this->out_ch =  192;
            this->out_height = 27;
            this->out_width = 27;
            this->stride = 1;
            this->kernel_size = 5;
            this->padding = 2;

            this->mp_out_ch = 192;
            this->mp_out_size = 13;
            this->mp_stride = 2;
            this->mp_padding = 0;

            break;
        case 3:
            this->next_dst = 7;
            this->next_op = 2;

            this->in_ch = 192;
            this->in_height = 13;
            this->in_width  = 13;
            this->out_ch =  384;
            this->out_height = 13;
            this->out_width = 13;
            this->stride = 1;
            this->kernel_size = 3;
            this->padding = 1;

            this->mp_out_ch = 0;
            this->mp_out_size = 0;
            this->mp_stride = 0;
            this->mp_padding = 0;
            break;
        case 7:
            this->next_dst = 6;
            this->next_op = 1;

            this->in_ch = 384;
            this->in_height = 13;
            this->in_width  = 13;
            this->out_ch =  256;
            this->out_height = 13;
            this->out_width = 13;
            this->stride = 1;
            this->kernel_size = 3;
            this->padding = 1;

            this->mp_out_ch = 0;
            this->mp_out_size = 0;
            this->mp_stride = 0;
            this->mp_padding = 0;
            break;
        case 6:
            this->next_dst = 5;
            this->next_op = 3;

            this->in_ch = 256;
            this->in_height = 13;
            this->in_width  = 13;
            this->out_ch =  256;
            this->out_height = 13;
            this->out_width = 13;
            this->stride = 1;
            this->kernel_size = 3;
            this->padding = 1;

            this->mp_out_ch = 256;
            this->mp_out_size = 6;
            this->mp_stride = 2;
            this->mp_padding = 0;
            break;
        case 5:
            this->next_dst = 4;
            this->next_op = 3;

            this->in_ch = 9216;
            this->in_height = 0;
            this->in_width  = 0;
            this->out_ch =  4096;
            this->out_height = 0;
            this->out_width = 0;
            this->stride = 0;
            this->kernel_size = 0;
            this->padding = 0;

            this->mp_out_ch = 0;
            this->mp_out_size = 0;
            this->mp_stride = 0;
            this->mp_padding = 0;
            break;
        case 4:
            this->next_dst = 12;
            this->next_op = 4;

            this->in_ch = 4096;
            this->in_height = 0;
            this->in_width  = 0;
            this->out_ch =  4096;
            this->out_height = 0;
            this->out_width = 0;
            this->stride = 0;
            this->kernel_size = 0;
            this->padding = 0;

            this->mp_out_ch = 0;
            this->mp_out_size = 0;
            this->mp_stride = 0;
            this->mp_padding = 0;
            break;
        case 12:
            this->next_dst = 0;
            this->next_op = 0;

            this->in_ch = 4096;
            this->in_height = 0;
            this->in_width  = 0;
            this->out_ch =  1000;
            this->out_height = 0;
            this->out_width = 0;
            this->stride = 0;
            this->kernel_size = 0;
            this->padding = 0;

            this->mp_out_ch = 0;
            this->mp_out_size = 0;
            this->mp_stride = 0;
            this->mp_padding = 0;
            break;
        default:
            this->next_dst = 0;
            this->next_op = 0;

            this->in_ch = 0;
            this->in_height = 0;
            this->in_width  = 0;
            this->out_ch =  0;
            this->out_height = 0;
            this->out_width = 0;
            this->stride = 0;
            this->kernel_size = 0;
            this->padding = 0;

            this->mp_out_ch = 0;
            this->mp_out_size = 0;
            this->mp_stride = 0;
            this->mp_padding = 0;
            break;
    }
    vector <float> golden_weight;
    vector <float> golden_bias;
    std::string weight_addr;
    std::string bias_addr;
    if(this->id==1){         
        weight_addr = "data/conv1_weight.txt";
        bias_addr = "data/conv1_bias.txt";
    }
    else if(this->id==2){
        weight_addr = "data/conv2_weight.txt";
        bias_addr = "data/conv2_bias.txt";
    }
    else if(this->id==3){
        weight_addr = "data/conv3_weight.txt";
        bias_addr = "data/conv3_bias.txt";
    }
    else if(this->id==7){
        weight_addr = "data/conv4_weight.txt";
        bias_addr = "data/conv4_bias.txt";
    }
    else if(this->id==6){
        weight_addr = "data/conv5_weight.txt";
        bias_addr = "data/conv5_bias.txt";
    }
    else if(this->id==5){
        weight_addr = "data/fc6_weight.txt";
        bias_addr = "data/fc6_bias.txt";
    }
    else if(this->id==4){
        weight_addr = "data/fc7_weight.txt";
        bias_addr = "data/fc7_bias.txt";
    }
    else if(this->id==12){
        weight_addr = "data/fc8_weight.txt";
        bias_addr = "data/fc8_bias.txt";
    }
    else{
        cerr<<"[FATAL] Don't have this id!"<<endl;
    }
    std::ifstream weight_file(weight_addr);
    std::ifstream bias_file(bias_addr);
    cout<<"[INFO] Golden weight: Load "<< weight_addr <<" & "<< bias_addr << endl;
    float element;
    int cnt = 0;

    while(weight_file >> element){
        this->weights_vec.push_back(element);
        cnt++;
    }

    while(bias_file >> element){
        this->bias_vec.push_back(element);
        cnt++;
    }
    weight_file.close();
    bias_file.close();


}



void PE::check_packet(Packet* p){
    if(p->is_parameter){
        if(p->is_bias){

            cout<<"[INFO]PE_"<<this->id<<" get bias"<<endl;
            if(!this->bias_vec.empty()){
                this->bias_vec.clear();
            }
            for (int i=0; i<(p->datas.size()); i++)  
                this->bias_vec.push_back(p->datas[i]);
                
         

            cout<<"[INFO]Weight num: "<<this->weights_vec.size()<<endl;
            cout<<"[INFO]Bias num: "<<this->bias_vec.size()<<endl;
            cout<<"[INFO]Weight[0]: "<<this->weights_vec[0]<<endl;
            cout<<"[INFO]Weight[1]: "<<this->weights_vec[1]<<endl;
            cout<<"[INFO]Weight[2]: "<<this->weights_vec[2]<<endl;
            cout<<"[INFO]Weight[3]: "<<this->weights_vec[3]<<endl;
            cout<<"[INFO]Weight[last]: "<<this->weights_vec[this->weights_vec.size()-1]<<endl;
            cout<<"[INFO]Bias[0]: "<<this->bias_vec[0]<<endl;
            cout<<"[INFO]Bias[last]: "<<this->bias_vec[this->bias_vec.size()-1]<<endl;
        }
        else{
            cout<<"[INFO]PE_"<<this->id<<" get weight"<<endl;

            if(!this->weights_vec.empty()){
                this->weights_vec.clear();
            }
            for (int i=0; i<(p->datas.size()); i++)  
                this->weights_vec.push_back(p->datas[i]);

            cout<<"[INFO]Weight num: "<<this->weights_vec.size()<<endl;
            cout<<"[INFO]Bias num: "<<this->bias_vec.size()<<endl;


            


        }
    }
    else{
        Packet* tmp_packet = new Packet();
        tmp_packet->source_id =     this->id;
        tmp_packet->dest_id =       this->next_dst;
        tmp_packet->op_id =         this->next_op;
        tmp_packet->is_parameter =  0;
        tmp_packet->is_bias =       0;
        tmp_packet->datas.clear();
        

        cout<<"[INFO]PE_"<<this->id<<" recieve op"<<endl;
        cout<<"[INFO]"<<"Src: "<<p->source_id<<endl;
        cout<<"[INFO]"<<"Dst: "<<p->dest_id<<endl;
        cout<<"[INFO]"<<"Op_id: "<<p->op_id<<endl;
        cout<<"[INFO]Weight num: "<<this->weights_vec.size()<<endl;
        cout<<"[INFO]Bias num: "<<this->bias_vec.size()<<endl;
        cout<<"[INFO]Input Feature num: "<<p->datas.size()<<endl;


        if((p->op_id)==1){
            //TODO:
            //  Conv + MaxPooling
            
            //tmp_packet->datas.reserve(this->mp_out_ch*this->mp_out_size*this->mp_out_size);
            cout<<"[INFO]core_"<<this->id<<" infeature["<<0<<"]: "<< p->datas[0] <<endl;

            vector <float> golden_img;
            std::string img_addr;
            if(this->id==1){
                std::ifstream img_file("data/cat.txt");
                cout<<"[INFO] Golden weight: Load data/cat.txt" << endl;
                float element;
                while(img_file >> element){
                    golden_img.push_back(element);
                }

                if(golden_img.size()!=(p->datas.size())){
                    cerr << "[FATAL] In PE_"<< this->id << "# of golden_weight:" << golden_img.size() << " # of weight:" << p->datas.size() <<endl;
                }

                for(int i=0; i<golden_img.size();i++){
                    if(p->datas[i]!=golden_img[i]){
                        cerr <<"[FATAL] In PE_"<< this->id << ", p->datas[" << i <<"] = " << p->datas[i] << " golden_img["<<i<<"] = " << golden_img[i] <<endl;
                    }
                }


            }


            
            cout<<"Core_"<<this->id<<": Reserve output vec size: "<<this->mp_out_ch*this->mp_out_size*this->mp_out_size<<endl;
            for(int i=0;i<this->mp_out_ch*this->mp_out_size*this->mp_out_size;i++){
                tmp_packet->datas.push_back(0);
            }


            float partial_sum, temp_large;
            int in_feature_idx ,out_feature_idx, in_feature_y, in_feature_x;
            int weight_idx;
            vector <float> conv_result;
            //conv_result.reserve(this->out_ch*this->out_height*this->out_width);
            cout<<"Core_"<<this->id<<": Reserve temp vec size: "<<this->out_ch*this->out_height*this->out_width<<endl;
            for(int i=0;i<this->out_ch*this->out_height*this->out_width;i++){
                conv_result.push_back(0);
            }


			for(int o_c=0;o_c<this->out_ch;o_c++){
				for(int o_y=0;o_y<this->out_height;o_y++){
					for(int o_x=0;o_x<this->out_width;o_x++){
						partial_sum = 0;
						for(int i_c=0;i_c<this->in_ch;i_c++){
							for(int k_y=int(this->kernel_size/2)*(-1);k_y<int(this->kernel_size/2)+1;k_y++){
								for(int k_x=int(this->kernel_size/2)*(-1);k_x<int(this->kernel_size/2)+1;k_x++){
									in_feature_y = this->stride*o_y+k_y+int(this->kernel_size/2) - this->padding;
									in_feature_x = this->stride*o_x+k_x+int(this->kernel_size/2) - this->padding;
									if(!((in_feature_y<0)||(in_feature_x<0)||(in_feature_y>=this->in_height)||(in_feature_x>=this->in_width))){
										in_feature_idx = (i_c*this->in_height*this->in_width)+(in_feature_y*this->in_width)+(in_feature_x);
										weight_idx = (o_c*in_ch*this->kernel_size*this->kernel_size)+(i_c*this->kernel_size*this->kernel_size)+((k_y+int(this->kernel_size/2))*(kernel_size))+(k_x+int(this->kernel_size/2));
										//partial_sum+= (in_feature[i_c][in_feature_y][in_feature_x]*weight[o_c][i_c][5+k_y][5+k_x]);
										partial_sum+= ((p->datas[in_feature_idx])*this->weights_vec[weight_idx]);
									}
								}
							}
						}
						out_feature_idx = (o_c * this->out_height * this->out_width)  + (o_y * this->out_width) + o_x;
						if((this->bias_vec[o_c] + partial_sum)<0){
							conv_result[out_feature_idx] = 0;	
						}
						else{
							partial_sum += this->bias_vec[o_c];
							conv_result[out_feature_idx] = (float)partial_sum;//bias[o_c] + partial_sum;
						}
						
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"[INFO]core_"<<this->id<<" conv_relu_out_feature["<<o_c<<",0,0]: "<< conv_result[out_feature_idx] <<endl;
						}
						
					}
				}
			}


            for(int o_c=0;o_c<this->mp_out_ch;o_c++){
				for(int o_y=0;o_y<this->mp_out_size;o_y++){
					for(int o_x=0;o_x<this->mp_out_size;o_x++){
						temp_large = 0;
						for(int k_y=-1;k_y<=1;k_y++){
							for(int k_x=-1;k_x<=1;k_x++){
								in_feature_y = o_y * this->mp_stride + 1 + k_y;
								in_feature_x = o_x * this->mp_stride + 1 + k_x;
								if(conv_result[(o_c*this->out_height*this->out_width)+(in_feature_y*this->out_width)+in_feature_x]>temp_large){
									temp_large = conv_result[(o_c*this->out_height*this->out_width)+(in_feature_y*this->out_width)+in_feature_x];
								}
							}
						}
						tmp_packet->datas[(o_c*this->mp_out_size*this->mp_out_size)+(o_y*this->mp_out_size)+o_x] = temp_large;
						
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"[INFO]core_"<<this->id<<" Mp["<<o_c<<",0,0]: "<< tmp_packet->datas[(o_c*this->mp_out_size*this->mp_out_size)+(o_y*this->mp_out_size)+o_x] <<endl;
						}
						
					}
				}
			}
            cout<<"Core_"<<this->id<<": tmp_packet->datas.size() = "<<tmp_packet->datas.size()<<endl;
            send_packets.push(tmp_packet);
        }
        else if((p->op_id)==2){
            //TODO:
            //  Conv

            //tmp_packet->datas.reserve(this->out_ch*this->out_height*this->out_width);

            cout<<"[INFO]core_"<<this->id<<" infeature["<<0<<"]: "<< p->datas[0] <<endl;
            cout<<"Core_"<<this->id<<": Reserve output vec size: "<<this->out_ch*this->out_height*this->out_width<<endl;
            for(int i=0;i<this->out_ch*this->out_height*this->out_width;i++){
                tmp_packet->datas.push_back(0);
            }
            float partial_sum;
            int in_feature_idx ,out_feature_idx, in_feature_y, in_feature_x;
            int weight_idx;

			for(int o_c=0;o_c<this->out_ch;o_c++){
				for(int o_y=0;o_y<this->out_height;o_y++){
					for(int o_x=0;o_x<this->out_width;o_x++){
						partial_sum = 0;
						for(int i_c=0;i_c<this->in_ch;i_c++){
							for(int k_y=int(this->kernel_size/2)*(-1);k_y<int(this->kernel_size/2)+1;k_y++){
								for(int k_x=int(this->kernel_size/2)*(-1);k_x<int(this->kernel_size/2)+1;k_x++){
									in_feature_y = this->stride*o_y+k_y+int(this->kernel_size/2) - this->padding;
									in_feature_x = this->stride*o_x+k_x+int(this->kernel_size/2) - this->padding;
									if(!((in_feature_y<0)||(in_feature_x<0)||(in_feature_y>=this->in_height)||(in_feature_x>=this->in_width))){
										in_feature_idx = (i_c*this->in_height*this->in_width)+(in_feature_y*this->in_width)+(in_feature_x);
										weight_idx = (o_c*in_ch*this->kernel_size*this->kernel_size)+(i_c*this->kernel_size*this->kernel_size)+((k_y+int(this->kernel_size/2))*(kernel_size))+(k_x+int(this->kernel_size/2));
										//partial_sum+= (in_feature[i_c][in_feature_y][in_feature_x]*weight[o_c][i_c][5+k_y][5+k_x]);
										partial_sum+= ((p->datas[in_feature_idx])*this->weights_vec[weight_idx]);
									}
								}
							}
						}
						out_feature_idx = (o_c * this->out_height * this->out_width)  + (o_y * this->out_width) + o_x;
						if((this->bias_vec[o_c] + partial_sum)<0){
							tmp_packet->datas[out_feature_idx] = 0;	
						}
						else{
							partial_sum += this->bias_vec[o_c];
							tmp_packet->datas[out_feature_idx] = (float)partial_sum;//bias[o_c] + partial_sum;
						}
						
						if((o_c==0)&&(o_y==0)&&(o_x==0)){
							cout<<"[INFO]core_"<<this->id<<" conv_relu_out_feature["<<o_c<<",0,0]: "<< tmp_packet->datas[out_feature_idx] <<endl;
						}
						
					}
				}
			}
            send_packets.push(tmp_packet);

        }
        else if((p->op_id)==3){
            //TODO:
            //  Linear
            //tmp_packet->datas.reserve(this->out_ch);


            cout<<"Core_"<<this->id<<": Reserve output vec size: "<<this->out_ch<<endl;
            cout<<"[INFO]core_"<<this->id<<" infeature["<<0<<"]: "<< p->datas[0] <<endl;
            for(int i=0;i<this->out_ch;i++){
                tmp_packet->datas.push_back(0);
            }

            float partial_sum;

            for(int o_c=0;o_c<this->out_ch;o_c++){
                partial_sum = 0;
                for(int i_c=0;i_c<this->in_ch;i_c++){
                    partial_sum+=(p->datas[i_c]*this->weights_vec[(o_c*in_ch) + i_c]);
                }
                if((partial_sum + this->bias_vec[o_c])<0){
                    tmp_packet->datas[o_c] = 0;
                }
                else {
                    partial_sum+=this->bias_vec[o_c];
                    tmp_packet->datas[o_c] = partial_sum;
                }
                
                if(o_c==0){
                    cout<<"[INFO]core_"<<this->id<<" linear0_relu["<<o_c<<"]: "<< tmp_packet->datas[o_c] <<endl;
                }
                
                send_packets.push(tmp_packet);
            }
        }
        else if((p->op_id)==4){
            //TODO:
            //  Linear + Softmax
            //tmp_packet->datas.reserve(this->out_ch);
            cout<<"Core_"<<this->id<<": Reserve output vec size: "<<this->out_ch<<endl;
            cout<<"[INFO]core_"<<this->id<<" infeature["<<0<<"]: "<< p->datas[0] <<endl;
            for(int i=0;i<this->out_ch;i++){
                tmp_packet->datas.push_back(0);
            }

            
            float partial_sum, exp_sum, temp_exp;

            for(int o_c=0;o_c<this->out_ch;o_c++){
                partial_sum = 0;
                for(int i_c=0;i_c<this->in_ch;i_c++){
                    partial_sum+=(p->datas[i_c]*this->weights_vec[(o_c*in_ch) + i_c]);
                }
                //if((partial_sum + this->bias_vec[o_c])<0){
                //    tmp_packet->datas[o_c] = 0;
                //}
                //else {
                //    partial_sum+=this->bias_vec[o_c];
                //    tmp_packet->datas[o_c] = partial_sum;
                //}
                partial_sum+=this->bias_vec[o_c];
                tmp_packet->datas[o_c] = partial_sum;
                if(o_c==0){
                    cout<<"[INFO]core_"<<this->id<<" linear0_relu["<<o_c<<"]: "<< tmp_packet->datas[o_c] <<endl;
                }
                
            }
            //exp_sum = 0.0;
            //for(int i=0;i<this->out_ch;i++){
			//	temp_exp = exp(tmp_packet->datas[i]);
			//	exp_sum+=temp_exp;
			//}
            //for (int i = 0; i < 1000; i++) {
            //    temp_exp = tmp_packet->datas[i];
			//	tmp_packet->datas[i] = (temp_exp)/(exp_sum);
    		//}
            //cout<<"[INFO]core_"<<this->id<<" softmax["<<0<<"]: "<< tmp_packet->datas[0] <<endl;
            

            send_packets.push(tmp_packet);
        }
        else {
            // None implement
        }

        //delete tmp_packet;
    }
}






#endif
`timescale 1ns/10ps
module router #(parameter router_id = 0)(clk, 
              rst,
              //out_flit
              out_flit_L,   out_flit_R,     out_flit_U,     out_flit_B,     out_flit_C,
              //out_req
              out_req_L,    out_req_R,      out_req_U,      out_req_B,      out_req_C,
              //in_ack
              in_ack_L,     in_ack_R,       in_ack_U,       in_ack_B,       in_ack_C,
              //in_flit
              in_flit_L,    in_flit_R,      in_flit_U,      in_flit_B,      in_flit_C,
              //in_req
              in_req_L,     in_req_R,       in_req_U,       in_req_B,       in_req_C,
              //out_ack
              out_ack_L,    out_ack_R,      out_ack_U,      out_ack_B,      out_ack_C);

    
input clk, rst;
input in_ack_L,     in_ack_R,       in_ack_U,       in_ack_B,       in_ack_C;
input in_req_L,     in_req_R,       in_req_U,       in_req_B,       in_req_C;
input [33:0] in_flit_L,    in_flit_R,      in_flit_U,      in_flit_B,      in_flit_C;

output reg out_req_L,    out_req_R,      out_req_U,      out_req_B,      out_req_C;
output reg out_ack_L,    out_ack_R,      out_ack_U,      out_ack_B,      out_ack_C;

output reg [33:0] out_flit_L;
output reg [33:0]  out_flit_R;
output reg [33:0]  out_flit_U;
output reg [33:0] out_flit_B;
output reg [33:0] out_flit_C;
//

wire in_ack [4:0];
wire in_req [4:0];
wire [33:0] in_flit [4:0];
reg out_ack [4:0];
reg out_req [4:0];
reg [33:0] out_flit [4:0];

integer ind;

//wire rinc [4:0];
//wire winc [4:0];
//wire rempty [4:0];
//wire wfull [4:0];

reg [2:0] occu_by_input [4:0];
reg occu_valid [4:0];
reg [3:0] dst_id [4:0];
reg [2:0] d_r [4:0];
reg [2:0] d_c [4:0];

reg [2:0] dif_r [4:0];
reg [2:0] dif_c [4:0];

wire [2:0] s_r, s_c;

reg [2:0] curr_dst_comb [4:0];
reg [2:0] curr_dst_reg [4:0];

reg en_out_gate_reg [4:0];


parameter LEFT = 3'd0,
          RIGHT = 3'd1,
          UP    = 3'd2,
          BUTTOM = 4'd3,
           CORE = 3'd4;

parameter s_IDEL  = 3'd0,
          s_ROUTE = 3'd1,
          s_TRANS = 3'd2,
          s_WAIT  = 3'd3,
          s_TAIL  = 3'd4;
reg [2:0] next_state [4:0];
reg [2:0] curr_state [4:0];


//genvar in_ind1, in_ind2, in_ind3, in_ind4, in_ind5, in_ind6;

integer in_ind1, in_ind2, in_ind3, in_ind4, in_ind5, in_ind6;

//AFIFO AFIFO_L #(DSIZE = 34, ASIZE = 4) (.rst(rst), .rclk(clk), .rinc(rinc[0]), .rwclk(clk), .winc(winc[0]), .wdata(in_flit[0]), .rempty(rempty[0]), .wfull(wfull[0]) );
//AFIFO AFIFO_R #(DSIZE = 34, ASIZE = 4) (.rst(rst), .rclk(clk), .rinc(rinc[1]), .rwclk(clk), .winc(winc[1]), .wdata(in_flit[1]), .rempty(rempty[1]), .wfull(wfull[1]) );
//AFIFO AFIFO_U #(DSIZE = 34, ASIZE = 4) (.rst(rst), .rclk(clk), .rinc(rinc[2]), .rwclk(clk), .winc(winc[2]), .wdata(in_flit[2]), .rempty(rempty[2]), .wfull(wfull[2]) );
//AFIFO AFIFO_B #(DSIZE = 34, ASIZE = 4) (.rst(rst), .rclk(clk), .rinc(rinc[3]), .rwclk(clk), .winc(winc[3]), .wdata(in_flit[3]), .rempty(rempty[3]), .wfull(wfull[3]) );
//AFIFO AFIFO_C #(DSIZE = 34, ASIZE = 4) (.rst(rst), .rclk(clk), .rinc(rinc[4]), .rwclk(clk), .winc(winc[4]), .wdata(in_flit[4]), .rempty(rempty[4]), .wfull(wfull[4]) );



//  route way

//always@(*)begin
assign   in_ack[0] = in_ack_L;
assign   in_ack[1] = in_ack_R;
assign   in_ack[2] = in_ack_U;
assign   in_ack[3] = in_ack_B;
assign   in_ack[4] = in_ack_C;
//end
//always@(*)begin
assign    in_req[0] = in_req_L;
assign    in_req[1] = in_req_R;
assign    in_req[2] = in_req_U;
assign    in_req[3] = in_req_B;
assign    in_req[4] = in_req_C;
//end
//always@(*)begin
assign    in_flit[0] = in_flit_L;
assign    in_flit[1] = in_flit_R;
assign    in_flit[2] = in_flit_U;
assign    in_flit[3] = in_flit_B;
assign    in_flit[4] = in_flit_C;
//end








assign s_r = (router_id)/4;
assign s_c = (router_id)%4;

//initial begin
always@(posedge clk)begin
    if(router_id==0)begin
        //if(in_flit_C[33])   $display("", curr_dst_comb[0], curr_dst_comb[1], curr_dst_comb[2], curr_dst_comb[3], curr_dst_comb[4]);

        //$display("dst_id[0]: %d. %d. %d. %d. %d.", dst_id[0], dst_id[1], dst_id[2], dst_id[3], dst_id[4]);
        //
//
        ////$display("ID: %d. s_r: %d. s_c: %d ", router_id,s_r,s_c);
        ////$display("dst_id[0]: %d. %d. %d. %d. %d.", dst_id[0], dst_id[1], dst_id[2], dst_id[3], dst_id[4]);
        ////$display("curr_dst_comb[0]: %d. %d. %d. %d. %d.", curr_dst_comb[0], curr_dst_comb[1], curr_dst_comb[2], curr_dst_comb[3], curr_dst_comb[4]);
        ////
        //$display("curr_state: %d. %d. %d. %d. %d", curr_state[0], curr_state[1], curr_state[2], curr_state[3], curr_state[4]);
        //$display("occu_by_input: %d. %d. %d. %d. %d", occu_by_input[0], occu_by_input[1], occu_by_input[2], occu_by_input[3], occu_by_input[4]);
        //$display("curr_dst_reg: %d. %d. %d. %d. %d", curr_dst_reg[0], curr_dst_reg[1], curr_dst_reg[2], curr_dst_reg[3], curr_dst_reg[4]);
        //$display("en_out_gate_reg: %d. %d. %d. %d. %d", en_out_gate_reg[0], en_out_gate_reg[1], en_out_gate_reg[2], en_out_gate_reg[3], en_out_gate_reg[4]);
        //
        ////
////
        //$display("in_flit: %b. %b. %b. %b. %b", in_flit[0], in_flit[1], in_flit[2], in_flit[3], in_flit[4]);
        //$display("in_req: %b. %b. %b. %b. %b", in_req[0], in_req[1], in_req[2], in_req[3], in_req[4]);
        //$display("out_ack: %b. %b. %b. %b. %b", out_ack[0], out_ack[1], out_ack[2], out_ack[3], out_ack[4]);
////
        ////
        //$display("out_flit: %b. %b. %b. %b. %b", out_flit[0], out_flit[1], out_flit[2], out_flit[3], out_flit[4]);
        //$display("out_req: %b. %b. %b. %b. %b", out_req[0], out_req[1], out_req[2], out_req[3], out_req[4]);
        //$display("in_ack: %b. %b. %b. %b. %b", in_ack[0], in_ack[1], in_ack[2], in_ack[3], in_ack[4]);
        
        

    end

end    
//end

always@(*)begin
    for(ind=0;ind<5;ind=ind+1)begin
        if(in_flit[ind][33]&&in_req[ind])begin
            dst_id[ind] = in_flit[ind][27:24]; 
            d_r[ind] = dst_id[ind]/4;
            d_c[ind] = dst_id[ind]%4;

            dif_r[ind] = (4'd4 + d_r[ind] - s_r)%4'd4;
            dif_c[ind] = (4'd4 + d_c[ind] - s_c)%4'd4;

            if(dif_c[ind]=='b0 && dif_r[ind]=='b0)       curr_dst_comb[ind] = CORE;
            else if(dif_c[ind]=='b0)begin
                if(dif_r[ind]<=4'd2)         curr_dst_comb[ind] = BUTTOM;
                else                         curr_dst_comb[ind] = UP;
            end
            else begin
                if(dif_c[ind]<=4'd2)         curr_dst_comb[ind] = RIGHT;
                else                         curr_dst_comb[ind] = LEFT;
            end
        end
        else begin
            dst_id[ind] = 'b0;
            d_r[ind] = 'b0;
            d_c[ind] = 'b0;
            dif_r[ind] = 'b0;
            dif_c[ind] = 'b0;
            curr_dst_comb[ind] = 'b0;


        end
    end

    
end



//  curr_state, next_state
 integer in_ind;
generate

always@(posedge clk or posedge rst)begin
    for(in_ind=0;in_ind<5;in_ind=in_ind+1)begin
        if(rst) curr_state[in_ind] <= s_IDEL;
        else    curr_state[in_ind] <= next_state[in_ind];
    end
end
endgenerate
generate
always@(*)begin
    for(in_ind1=0;in_ind1<5;in_ind1=in_ind1+1)begin
        case(curr_state[in_ind1])
            s_IDEL: begin
                if(in_req[in_ind1] && in_flit[in_ind1][33]) next_state[in_ind1] = s_ROUTE;
                else                                        next_state[in_ind1] = s_IDEL;
            end
            s_ROUTE: begin
                if(en_out_gate_reg[curr_dst_comb[in_ind1]]) next_state[in_ind1] = s_TRANS;
                else                                        next_state[in_ind1] = s_ROUTE;
            end
            s_TRANS:begin
                if(!in_ack[curr_dst_reg[in_ind1]])                          next_state[in_ind1] = s_WAIT;
                else if(in_req[in_ind1]&&out_ack[in_ind1]&&in_flit[in_ind1][32])begin
                                                                            next_state[in_ind1] = s_TAIL;
                end
                else                                                        next_state[in_ind1] = s_TRANS;
            end
            s_WAIT:begin
                if(in_ack[curr_dst_reg[in_ind1]])    next_state[in_ind1] = s_TRANS;
                else                                next_state[in_ind1] = s_WAIT;
            end
            s_TAIL:begin
                if(in_ack[curr_dst_reg[in_ind1]]&&out_req[curr_dst_reg[in_ind1]]&&out_flit[curr_dst_reg[in_ind1]][32])begin
                                                    next_state[in_ind1] = s_IDEL;
                end
                else begin
                                                    next_state[in_ind1] = s_TAIL;
                end
            end
            default:    next_state[in_ind1] = s_IDEL;
        endcase
    end
   
end
endgenerate


//curr_dst_reg
always@(posedge clk or posedge rst)begin
    //generate
        for(in_ind2=0;in_ind2<5;in_ind2=in_ind2+1)begin
            if(rst)begin
                curr_dst_reg[in_ind2] <= 'b0;
            end
            else begin
                if(next_state[in_ind2]==s_ROUTE) curr_dst_reg[in_ind2] <= curr_dst_comb[in_ind2];
                else                             curr_dst_reg[in_ind2] <= curr_dst_reg[in_ind2];
            end
        end
    //endgenerate
end


integer out_ind3;
//en_out_gate_reg
always@(posedge clk or posedge rst)begin
    //generate
        for(out_ind3=0;out_ind3<5;out_ind3=out_ind3+1)begin
            if(rst)begin
                en_out_gate_reg[out_ind3] <= 'b1;
            end
            else begin
                //if(in_ack[out_ind3]&&out_req[out_ind3]&&out_flit[out_ind3][32]) en_out_gate_reg[out_ind3] <= 'b1;
                //else if(next_state[occu_by_input[out_ind3]] == s_TRANS) en_out_gate_reg[out_ind3] <= 'b0;
                //else en_out_gate_reg[out_ind3] <= en_out_gate_reg[out_ind3];
            
                if(next_state[occu_by_input[out_ind3]]==s_IDEL && occu_valid[out_ind3])         en_out_gate_reg[out_ind3] <= 'b1;
                //!
                else if(next_state[occu_by_input[out_ind3]] == s_TRANS && occu_valid[out_ind3]) en_out_gate_reg[out_ind3] <= 'b0;
                else                                                                        en_out_gate_reg[out_ind3] <= en_out_gate_reg[out_ind3];
            
            end
        end
    //endgenerate
end


//occu_by_input
always@(posedge clk or posedge rst)begin
    //generate
        for(in_ind4=0;in_ind4<5;in_ind4=in_ind4+1)begin
            if(rst)begin
                occu_by_input[in_ind4] <= 'b0;
                occu_valid[in_ind4]    <= 'b0;
            end
            else begin
                if(next_state[in_ind4]==s_ROUTE)begin
                    occu_by_input[curr_dst_comb[in_ind4]] <= in_ind4;
                    occu_valid[curr_dst_comb[in_ind4]]    <= 'b1;
                end
                else if (next_state[in_ind4]==s_IDEL)begin
                    occu_by_input[curr_dst_reg[in_ind4]] <= 'b0;
                    occu_valid[curr_dst_reg[in_ind4]] <=  'b0;
                end
                else begin
                    occu_by_input[curr_dst_reg[in_ind4]] <= occu_by_input[curr_dst_reg[in_ind4]];
                    occu_valid[curr_dst_reg[in_ind4]] <=  occu_valid[curr_dst_reg[in_ind4]];
                end
            end
        end
    //endgenerate
end

//out_ack
always@(posedge clk or posedge rst)begin
    //generate
        for(in_ind5=0;in_ind5<5;in_ind5=in_ind5+1)begin
            if(rst)begin
                out_ack[in_ind5] <= 'b0;
            end
            else begin
                if(next_state[in_ind5]==s_TRANS)begin
                //if(en_out_gate_reg[curr_dst_comb[in_ind5]] && curr_state[in_ind5]==s_ROUTE && next_state[in_ind5]==s_TRANS)begin
                    out_ack[in_ind5] <= 'b1;
                end
                else if(next_state[in_ind5]==s_WAIT)begin
                //else if(out_ack[in_ind5]=='b1 && in_req[in_ind5] && in_flit[in_ind5][32])begin
                    out_ack[in_ind5] <= 'b0;
                end
                else if(next_state[in_ind5]==s_TAIL)begin
                    out_ack[in_ind5] <= 'b0;
                end


                else out_ack[in_ind5] <= out_ack[in_ind5];
            end
        end
    //endgenerate
end
//out_req, out_flit

integer out_ind6;
always@(posedge clk or posedge rst)begin
    //generate
        for(out_ind6=0;out_ind6<5;out_ind6=out_ind6+1)begin
            if(rst)begin
                out_req[out_ind6] <= 'b0;
                out_flit[out_ind6] <= 'b0;
            end
            else begin
                //if(en_out_gate_reg[in_ind6] && curr_state[occu_by_input[in_ind6]]==s_ROUTE && next_state[occu_by_input[in_ind6]]==s_TRANS)begin
                if(out_ack[occu_by_input[out_ind6]]&&in_req[occu_by_input[out_ind6]]&&(!en_out_gate_reg[out_ind6]))begin
                    out_req[out_ind6] <= 'b1;
                    out_flit[out_ind6] <= in_flit[occu_by_input[out_ind6]];
                end
                else if(out_req[out_ind6]&&in_ack[out_ind6])begin
                    out_req[out_ind6] <= 'b0;
                    out_flit[out_ind6] <= 'b0;
                end
                else begin
                    out_req[out_ind6] <= out_req[out_ind6];
                    out_flit[out_ind6] <= out_flit[out_ind6];
                end
            end
        end
    //endgenerate
end



/*
always@(posedge clk or posedge rst)begin
    //generate
        for(in_ind6=0;in_ind6<5;in_ind6=in_ind6+1)begin
            if(rst)begin
                out_req[in_ind6] <= 'b0;
                out_flit[in_ind6] <= 'b0;
            end
            else begin
                //if(en_out_gate_reg[in_ind6] && curr_state[occu_by_input[in_ind6]]==s_ROUTE && next_state[occu_by_input[in_ind6]]==s_TRANS)begin
                if(next_state[occu_by_input[in_ind6]]==s_TRANS)begin
                    out_req[in_ind6] <= 'b1;
                    out_flit[in_ind6] <= in_flit[occu_by_input[in_ind6]];
                end
                
                else if(in_ack[in_ind6]=='b1 && out_req[in_ind6] && out_flit[in_ind6][32])begin
                    out_req[in_ind6] <= 'b0;
                    out_flit[in_ind6] <= 'b0;
                end
                else begin
                    out_req[in_ind6] <= out_req[in_ind6];
                    out_flit[in_ind6] <= in_flit[occu_by_input[in_ind6]];
                end
            end
        end
    //endgenerate
end
*/






always@(*)begin
    out_req_L = out_req[0];
    out_req_R = out_req[1];
    out_req_U = out_req[2];
    out_req_B = out_req[3];
    out_req_C = out_req[4];
end
always@(*)begin
    out_ack_L = out_ack[0];
    out_ack_R = out_ack[1];
    out_ack_U = out_ack[2];
    out_ack_B = out_ack[3];
    out_ack_C = out_ack[4];
end
always@(*)begin
    out_flit_L = out_flit[0];
    out_flit_R = out_flit[1];
    out_flit_U = out_flit[2];
    out_flit_B = out_flit[3];
    out_flit_C = out_flit[4];
end











endmodule


/*
module AFIFO #(parameter DSIZE = 8,
			   parameter ASIZE = 4)(
	//Input Port
	rst_n,
    //Input Port (read)
    rclk,
    rinc,
	//Input Port (write)
    wclk,
    winc,
	wdata,

    //Output Port (read)
    rempty,
	rdata,
    //Output Port (write)
    wfull
); 

//-----------------------------------------------------------------------------------------------------------------
//   PORT DECLARATION                                                  
//-----------------------------------------------------------------------------------------------------------------
input 				rst_n, rclk, rinc, wclk, winc;
input [DSIZE-1:0] 	wdata;

output 				rempty, wfull;
output [DSIZE-1:0] 	rdata;

//-----------------------------------------------------------------------------------------------------------------
//   LOGIC DECLARATION                                                 
//-----------------------------------------------------------------------------------------------------------------
wire [ASIZE-1:0] 	waddr, raddr;
wire [ASIZE:0] 		wptr, rptr, wq2_rptr, rq2_wptr;

//-----------------------------------------------------------------------------------------------------------------
//   Design                                                            
//-----------------------------------------------------------------------------------------------------------------
sync_r2w sync_r2w_m0 (.wq2_rptr(wq2_rptr), .rptr(rptr), .wclk(wclk), .rst_n(rst_n));

sync_w2r sync_w2r_m0 (.rq2_wptr(rq2_wptr), .wptr(wptr), .rclk(rclk), .rst_n(rst_n));

fifomem #(DSIZE, ASIZE) fifomem_m0 (.rdata(rdata), .wdata(wdata), .waddr(waddr), .raddr(raddr), .wclken(winc), .wfull(wfull), .wclk(wclk));

rptr_empty #(ASIZE) rptr_empty_m0 (.rempty(rempty), .raddr(raddr), .rptr(rptr), .rq2_wptr(rq2_wptr), .rinc(rinc), .rclk(rclk), .rst_n(rst_n));

wptr_full #(ASIZE) wptr_full_m0 (.wfull(wfull), .waddr(waddr), .wptr(wptr), .wq2_rptr(wq2_rptr), .winc(winc), .wclk(wclk), .rst_n(rst_n));



endmodule


module fifomem #(parameter DSIZE = 8,
				 parameter ASIZE = 4)(
	//Input Port
	wclk,
	wclken,
	wfull,
	wdata,
	waddr,
	raddr,

    //Output Port
	rdata
); 

input	wclk, wclken, wfull;
input [DSIZE-1:0] wdata;
input [ASIZE-1:0] waddr, raddr;

output [DSIZE-1:0] rdata;


localparam DEPTH = 1<<ASIZE;
reg [DSIZE-1:0] mem [DEPTH-1:0];

assign rdata = mem[raddr];

always @(posedge wclk)
	if(wclken && !wfull) mem[waddr] <= wdata;
	
endmodule



module sync_r2w #(parameter ASIZE = 4)(
	//Input Port
	rptr,
	wclk,
	rst_n,

    //Output Port
	wq2_rptr
); 


input wclk, rst_n;
input [ASIZE:0] rptr;

output reg [ASIZE:0] wq2_rptr;

reg [ASIZE:0] wq1_rptr;

always @(posedge wclk or negedge rst_n)begin
	if(!rst_n)
		{wq2_rptr,wq1_rptr} <= 0;
	else 
		{wq2_rptr,wq1_rptr} <= {wq1_rptr,rptr};
end


endmodule


module sync_w2r #(parameter ASIZE = 4)(
	//Input Port
	wptr,
	rclk,
	rst_n,

    //Output Port
	rq2_wptr
); 


input rclk, rst_n;
input [ASIZE:0] wptr;

output reg [ASIZE:0] rq2_wptr;

reg [ASIZE:0] rq1_wptr;

always @(posedge rclk or negedge rst_n)begin
	if(!rst_n)
		{rq2_wptr,rq1_wptr} <= 0;
	else 
		{rq2_wptr,rq1_wptr} <= {rq1_wptr,wptr};
end


endmodule


module wptr_full #(parameter ASIZE = 4)(
	//Input Port
	wq2_rptr,
	wclk,
	rst_n,
	winc,

    //Output Port
	wptr,
	waddr,
	wfull
); 
input [ASIZE:0] wq2_rptr;
input wclk, winc, rst_n;

output reg [ASIZE:0] wptr;
output [ASIZE-1:0] waddr;
output reg wfull;
// gray code
reg [ASIZE:0] wbin;
wire [ASIZE:0] wgraynext, wbinnext;

always @(posedge wclk or negedge rst_n)begin
	if(!rst_n)
		{wbin, wptr} <= 0;
	else 
		{wbin, wptr} <= {wbinnext, wgraynext};
end

assign waddr = wbin[ASIZE-1:0];

assign wbinnext = wbin + (winc & ~wfull);
assign wgraynext = (wbinnext>>1) ^ wbinnext;

// full
wire wfull_val;
assign wfull_val = (wgraynext=={~wq2_rptr[ASIZE:ASIZE-1],wq2_rptr[ASIZE-2:0]});

always @(posedge wclk or negedge rst_n)begin
	if(!rst_n)
		wfull <= 1'b0;
	else 
		wfull <= wfull_val;
end



endmodule 



module rptr_empty #(parameter ASIZE = 4)(
	//Input Port
	rq2_wptr,
	rclk,
	rst_n,
	rinc,

    //Output Port
	rptr,
	raddr,
	rempty
); 

input [ASIZE:0] rq2_wptr;
input rclk, rinc, rst_n;

output reg [ASIZE:0] rptr;
output [ASIZE-1:0] raddr;
output reg rempty;
// gray code
reg [ASIZE:0] rbin;
wire [ASIZE:0] rgraynext, rbinnext;

always @(posedge rclk or negedge rst_n)begin
	if(!rst_n)
		{rbin, rptr} <= 0;
	else 
		{rbin, rptr} <= {rbinnext, rgraynext};
end

assign raddr = rbin[ASIZE-1:0];

assign rbinnext = rbin + (rinc & ~rempty);
assign rgraynext = (rbinnext>>1) ^ rbinnext;

// empty
wire rempty_val;
assign rempty_val = (rgraynext == rq2_wptr);

always @(posedge rclk or negedge rst_n)begin
	if(!rst_n)
		rempty <= 1'b1;
	else 
		rempty <= rempty_val;
end



endmodule
*/
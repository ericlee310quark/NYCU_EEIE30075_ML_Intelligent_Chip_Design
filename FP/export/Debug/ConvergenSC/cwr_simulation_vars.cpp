extern "C" int strcmp(const char *s1, const char *s2);


namespace CoWare_simenv { 
const char* get(const char* name) {
if(strcmp(name, "MACHINE") == 0) { return "linux"; }
if(strcmp(name, "machine") == 0) { return "linux"; }
return ""; } 
int exists(const char* name) {
if(strcmp(name, "MACHINE") == 0) { return 1; }
if(strcmp(name, "machine") == 0) { return 1; }
return 0; }
}

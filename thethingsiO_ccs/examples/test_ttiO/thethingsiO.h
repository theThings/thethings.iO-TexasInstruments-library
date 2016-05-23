#ifndef THETHINGSIO_H_
#define THETHINGSIO_H_

#include "thethingsiO.h"

#include <string.h>

// SimpleLink includes
#include "simplelink.h"
#include "socket.h"

// driverlib includes
#include "hw_ints.h"
#include "hw_types.h"
#include "rom.h"
#include "rom_map.h"
#include "prcm.h"
#include "utils.h"
#include "interrupt.h"

// common interface includes
#include "uart_if.h"
#include "common.h"
#include "pinmux.h"

// HTTP Client lib
#include <http/client/httpcli.h>
#include <http/client/common.h>

typedef struct Thing_Struct {
	HTTPCli_Struct thing_client;
	char *token;
} Thing_Struct;


void SimpleLinkWlanEventHandler(SlWlanEvent_t *pWlanEvent);
void SimpleLinkNetAppEventHandler(SlNetAppEvent_t *pNetAppEvent);
void SimpleLinkHttpServerCallback(SlHttpServerEvent_t *pHttpEvent,
                                  SlHttpServerResponse_t *pHttpResponse);
void SimpleLinkGeneralEventHandler(SlDeviceEvent_t *pDevEvent);
void SimpleLinkSockEventHandler(SlSockEvent_t *pSock);
void InitializeAppVariables();
static long ConfigureSimpleLinkToDefaultState();
static long WlanConnect();
static int FlushHTTPResponse(HTTPCli_Handle httpClient);
char  *readResponse_2(HTTPCli_Handle httpClient);
char *HTTPActivate(HTTPCli_Handle httpClient, char *activation_code);
char *HTTPPost2thing(HTTPCli_Handle httpClient, char* token, char* key, char* value);
char *HTTPGetThing(HTTPCli_Handle httpClient, char *token, char *key, int limit);
long ConnectToAP();
int ConnectTo_thethingsiO(Thing_Struct * thing);
void BoardInit(void);
char *thing_activate(Thing_Struct *thing, char *activation_code);
char *thing_read_limit(Thing_Struct *thing, char *key, int limit);
char *thing_read(Thing_Struct *thing, char *key);
char *thing_write_string(Thing_Struct *thing, char *key, char *value);
char *thing_write_int(Thing_Struct *thing, char *key, int value);
char *thing_write_double(Thing_Struct *thing, char *key, double value);
char *thing_write_float(Thing_Struct *thing, char *key, float value);
char *thing_subscribe(Thing_Struct *thing);


#endif /* THETHINGSIO_H_ */

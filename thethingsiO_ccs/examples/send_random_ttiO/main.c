#include "thethingsiO.h"

int main()
{
	/*
	 * Preparation
	 */
    // Board Initialization
    BoardInit();
    // Configuring UART
    InitTerm();

    // Connect to AP
    // Put your SSID and password in common.h
    long lRetVal = ConnectToAP();
    if(lRetVal < 0)
    {
    	UART_PRINT("Connection to AP failed\n\r");
        LOOP_FOREVER();
    }
    UART_PRINT("Connected to AP\n\r");
    if(lRetVal < 0)
    {
        LOOP_FOREVER();
    }

    // Declare thing
    Thing_Struct thing;

    // Connect to thethingsiO server
    lRetVal = ConnectTo_thethingsiO(&thing.thing_client);
       if(lRetVal < 0)
       {
           LOOP_FOREVER();
       }
    UART_PRINT("Thing client connected\n\r");

    // In order to initialize the thing correctly you have to use one of
    // following two methods:
    // 1. If you have already activated your thing you should set the token
    thing.token = "YOUR TOKEN HERE";
    // 2. Or if not copy the provided activation code here
    // and uncomment the following line
    // char *act_code = "YOUR ACTIVATION CODE HERE";
    // and activate the thing (uncomment the following line)
    // char *token = thing_activate(&thing, act_code);

    /* Intializes random number generator */
  //  time_t t;
  //  srand((unsigned) time(&t));
    char * num;
    while(1)
    {
    	// Generate random number and write to string
    	sprintf(num, "%d", rand() % 100);
    	// Print to terminal
    	UART_PRINT(num);
    	UART_PRINT("\n\r");
    	// Send number to thethings
    	char *ws = thing_write_string(&thing, "random", num);
       	// Free memory
    	free(ws);
    	// Wait for 1 sec
    	_delay_cycles(80000000-1);
    }
}


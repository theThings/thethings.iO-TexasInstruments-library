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
    // 2. Or if your thing is not activated yet copy the provided activation code here
    // and uncomment the following line
    // char *act_code = "YOUR ACTIVATION CODE HERE";
    // and activate the thing (uncomment the following line)
    // char *token = thing_activate(&thing, act_code);


    /*
     * Write
     */

    // Here we write the value "Hello World!" to the key "test"
	UART_PRINT("\n\r\n\r*** thing write string begin ***\n\r\n\r");
	char *ws = thing_write_string(&thing, "test", "Hello Word!");
    UART_PRINT(ws);
	// We should free the memory if we don't need the data anymore
	free(ws);
   	UART_PRINT("\n\r\n\r*** thing write string end ***\n\r\n\r");

   	// Here we write the value '5' to the key "int"
	UART_PRINT("\n\r\n\r*** thing write int begin ***\n\r\n\r");
	char *wi = thing_write_int(&thing, "int", 5);
    UART_PRINT(wi);
	// We should free the memory if we don't need the data anymore
	free(wi);
   	UART_PRINT("\n\r\n\r*** thing write int end ***\n\r\n\r");

   	// Here we write the value '5.33' to the key "double"
 	UART_PRINT("\n\r\n\r*** thing write double begin ***\n\r\n\r");
 	char *wd = thing_write_double(&thing, "double", 5.33);
    UART_PRINT(wd);
	// We should free the memory if we don't need the data anymore
	free(wd);
   	UART_PRINT("\n\r\n\r*** thing write double end ***\n\r\n\r");

   	// Here we write the value '5.66' to the key more numbers
	UART_PRINT("\n\r\n\r*** thing write float begin ***\n\r\n\r");
	char *wf = thing_write_float(&thing, "more_numbers", 5.66);
    UART_PRINT(wf);
	// We should free the memory if we don't need the data anymore
	free(wf);
   	UART_PRINT("\n\r\n\r*** thing write float end ***\n\r\n\r");

   	/*
   	 * Read
   	 */

    // We read the last 5 values with key "test" from our thing
	UART_PRINT("\n\r\n\r*** thing read limit 5, key \"test\" begin ***\n\r\n\r");
    char *response = thing_read_limit(&thing, "test", 5);
    UART_PRINT(response);
	// We should free the memory if we don't need the data anymore
	free(response);
	UART_PRINT("\n\r\n\r*** thing read limit 5, key \"test\" end ***\n\r\n\r");

	// We read from the thing with the default limit value (10), key "int"
	UART_PRINT("\n\r\n\r*** thing read no limit, key \"int\" begin ***\n\r\n\r");
    char *response2 = thing_read(&thing, "int");
    UART_PRINT(response2);
    // We should free the memory if we don't need the data anymore
	free(response2);
 	UART_PRINT("\n\r\n\r*** thing read no limit, key \"int\" end ***\n\r\n\r");


 	/*
 	 * Subscribe
 	 */

 	// First subscribe call which creates the socket
	UART_PRINT("\n\r\n\r*** thing subscribe begin ***\n\r\n\r");
    char *sub = thing_subscribe(&thing);
    UART_PRINT(sub);
    // We should free the memory if we don't need the data anymore
    free(sub);
   	UART_PRINT("\n\r\n\r*** thing subscribe end ***\n\r");


	// Subsequent subscribe calls which check for new data
   	// In a loop, data sent to the thing will get printed to terminal
	UART_PRINT("\n\r\n\r*** stream subscribe begin ***\n\rSend some values!\n\r");
	UART_PRINT("\n\r");
  	while(1){
		sub = thing_subscribe(&thing);
		if (strlen(sub) > 0)
		{
			UART_PRINT(sub);

		}
	// We should free the memory if we don't need the data anymore
	free(sub);
  	}
}


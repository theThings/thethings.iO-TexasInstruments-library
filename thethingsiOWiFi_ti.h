#ifndef THETHINGSWIFI_TI_H
#define THETHINGSWIFI_TI_H

#include "thethingsiOClient_ti.h"

class thethingsiOWiFi_ti : public thethingsiOClient_ti {
public:
    thethingsiOWiFi_ti() : thethingsiOClient_ti(&regular_client, &subscription_client) { }
    thethingsiOWiFi_ti(String token) : thethingsiOClient_ti(&regular_client, &subscription_client, token) { }
private:
    WiFiClient regular_client;
    WiFiClient subscription_client;
};
#endif // THETHINGSWIFI_TI_H


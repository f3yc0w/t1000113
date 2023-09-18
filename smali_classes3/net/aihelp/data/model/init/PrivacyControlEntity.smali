.class public Lnet/aihelp/data/model/init/PrivacyControlEntity;
.super Ljava/lang/Object;
.source "PrivacyControlEntity.java"


# instance fields
.field private applicationIdentifier:I

.field private applicationName:I

.field private applicationVersion:I

.field private availableMemory:I

.field private batteryPower:I

.field private batteryStatus:I

.field private countryCode:I

.field private deviceModel:I

.field private freeSpacePhone:I

.field private networkType:I

.field private operator:I

.field private osVersion:I

.field private serverId:I

.field private totalMemory:I

.field private totalSpacePhone:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->countryCode:I

    .line 8
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->operator:I

    .line 9
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->networkType:I

    .line 10
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->deviceModel:I

    .line 11
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->totalSpacePhone:I

    .line 12
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->batteryStatus:I

    .line 13
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->osVersion:I

    .line 14
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->freeSpacePhone:I

    .line 15
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->batteryPower:I

    .line 16
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationIdentifier:I

    .line 17
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationVersion:I

    .line 18
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationName:I

    .line 19
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->serverId:I

    .line 20
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->totalMemory:I

    .line 21
    iput v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->availableMemory:I

    return-void
.end method


# virtual methods
.method public getApplicationIdentifier()Z
    .locals 2

    .line 60
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationIdentifier:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getApplicationName()Z
    .locals 2

    .line 68
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationName:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getApplicationVersion()Z
    .locals 2

    .line 64
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getAvailableMemory()Z
    .locals 2

    .line 76
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->availableMemory:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBatteryPower()Z
    .locals 2

    .line 56
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->batteryPower:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getBatteryStatus()Z
    .locals 2

    .line 44
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->batteryStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getCountryCode()Z
    .locals 2

    .line 24
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->countryCode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDeviceModel()Z
    .locals 2

    .line 36
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->deviceModel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getFreeSpacePhone()Z
    .locals 2

    .line 52
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->freeSpacePhone:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getNetworkType()Z
    .locals 2

    .line 32
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->networkType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getOperator()Z
    .locals 2

    .line 28
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->operator:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getOsVersion()Z
    .locals 2

    .line 48
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->osVersion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getServerId()Z
    .locals 2

    .line 72
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->serverId:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getTotalMemory()Z
    .locals 2

    .line 80
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->totalMemory:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getTotalSpacePhone()Z
    .locals 2

    .line 40
    iget v0, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->totalSpacePhone:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public setApplicationIdentifier(I)V
    .locals 0

    .line 120
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationIdentifier:I

    return-void
.end method

.method public setApplicationName(I)V
    .locals 0

    .line 128
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationName:I

    return-void
.end method

.method public setApplicationVersion(I)V
    .locals 0

    .line 124
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationVersion:I

    return-void
.end method

.method public setAvailableMemory(I)V
    .locals 0

    .line 140
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->availableMemory:I

    return-void
.end method

.method public setBatteryPower(I)V
    .locals 0

    .line 116
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->batteryPower:I

    return-void
.end method

.method public setBatteryStatus(I)V
    .locals 0

    .line 104
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->batteryStatus:I

    return-void
.end method

.method public setCountryCode(I)V
    .locals 0

    .line 84
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->countryCode:I

    return-void
.end method

.method public setDeviceModel(I)V
    .locals 0

    .line 96
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->deviceModel:I

    return-void
.end method

.method public setFreeSpacePhone(I)V
    .locals 0

    .line 112
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->freeSpacePhone:I

    return-void
.end method

.method public setNetworkType(I)V
    .locals 0

    .line 92
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->networkType:I

    return-void
.end method

.method public setOperator(I)V
    .locals 0

    .line 88
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->operator:I

    return-void
.end method

.method public setOsVersion(I)V
    .locals 0

    .line 108
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->osVersion:I

    return-void
.end method

.method public setServerId(I)V
    .locals 0

    .line 132
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->serverId:I

    return-void
.end method

.method public setTotalMemory(I)V
    .locals 0

    .line 136
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->totalMemory:I

    return-void
.end method

.method public setTotalSpacePhone(I)V
    .locals 0

    .line 100
    iput p1, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->totalSpacePhone:I

    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .line 144
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "countryCode"

    .line 146
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->countryCode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "operator"

    .line 147
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->operator:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "networkType"

    .line 148
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->networkType:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "deviceModel"

    .line 149
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->deviceModel:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "totalSpacePhone"

    .line 150
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->totalSpacePhone:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "batteryStatus"

    .line 151
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->batteryStatus:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "osVersion"

    .line 152
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->osVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "freeSpacePhone"

    .line 153
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->freeSpacePhone:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "batteryPower"

    .line 154
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->batteryPower:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "applicationIdentifier"

    .line 155
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationIdentifier:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "applicationVersion"

    .line 156
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationVersion:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "applicationName"

    .line 157
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->applicationName:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "serverId"

    .line 158
    iget v2, p0, Lnet/aihelp/data/model/init/PrivacyControlEntity;->serverId:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 160
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 162
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

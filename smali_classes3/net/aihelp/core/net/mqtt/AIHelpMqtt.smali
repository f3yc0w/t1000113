.class public Lnet/aihelp/core/net/mqtt/AIHelpMqtt;
.super Ljava/lang/Object;
.source "AIHelpMqtt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;,
        Lnet/aihelp/core/net/mqtt/AIHelpMqtt$Holder;
    }
.end annotation


# static fields
.field private static mConnectingMonitor:Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;


# instance fields
.field private connectionId:I

.field private faqMqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

.field private mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;-><init>()V

    sput-object v0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mConnectingMonitor:Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;

    return-void
.end method

.method synthetic constructor <init>(Lnet/aihelp/core/net/mqtt/AIHelpMqtt$1;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;-><init>()V

    return-void
.end method

.method public static getInstance()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;
    .locals 1

    .line 90
    invoke-static {}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$Holder;->access$000()Lnet/aihelp/core/net/mqtt/AIHelpMqtt;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public disconnect()V
    .locals 2

    .line 79
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->getIdentifier()I

    move-result v0

    iget v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    if-ne v0, v1, :cond_0

    .line 80
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->unregisterListener()V

    .line 81
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    .line 82
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    .line 86
    :cond_0
    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->setConnected(Z)V

    return-void
.end method

.method public getMqttConnectionId()I
    .locals 1

    .line 25
    iget v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    return v0
.end method

.method public onFaqDestroy()V
    .locals 2

    .line 72
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->faqMqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 73
    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->disconnect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    .line 74
    iput-object v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->faqMqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    :cond_0
    return-void
.end method

.method public postToServer(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public prepare(ILnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 35
    :goto_0
    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v2

    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 38
    :cond_1
    sget-object v2, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mConnectingMonitor:Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;

    const-wide/16 v3, 0x2710

    invoke-virtual {v2, v1, v3, v4}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 41
    iget v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    add-int/2addr v1, v0

    iput v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    .line 42
    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v0

    iget v1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-virtual {v0, p1, v1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getMqttConnection(ZI)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object v0

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    .line 43
    new-instance v1, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;

    iget v2, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-direct {v1, p1, p2, v2}, Lnet/aihelp/core/net/mqtt/callback/ConnectCallback;-><init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->connect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    .line 44
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    new-instance v1, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;

    sget-object v2, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mConnectingMonitor:Lnet/aihelp/core/net/mqtt/AIHelpMqtt$ConnectingHandler;

    iget v3, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-direct {v1, p1, p2, v2, v3}, Lnet/aihelp/core/net/mqtt/callback/ReceiveListener;-><init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;Landroid/os/Handler;I)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener(Lnet/aihelp/core/net/mqtt/client/Listener;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    .line 45
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getInstance()Lnet/aihelp/core/net/mqtt/config/MqttConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/aihelp/core/net/mqtt/config/MqttConfig;->getTopic(Z)[Lnet/aihelp/core/net/mqtt/client/Topic;

    move-result-object v1

    new-instance v2, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;

    iget v3, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->connectionId:I

    invoke-direct {v2, p1, p2, v3}, Lnet/aihelp/core/net/mqtt/callback/SubscribeCallback;-><init>(ZLnet/aihelp/core/net/mqtt/callback/IMqttCallback;I)V

    invoke-virtual {v0, v1, v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->subscribe([Lnet/aihelp/core/net/mqtt/client/Topic;Lnet/aihelp/core/net/mqtt/client/Callback;)V

    if-eqz p1, :cond_2

    .line 49
    iget-object p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->mqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    iput-object p1, p0, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->faqMqttConnection:Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    :cond_2
    return-void
.end method

.method public prepare(Lnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V
    .locals 1

    const/4 v0, 0x4

    .line 29
    invoke-virtual {p0, v0, p1}, Lnet/aihelp/core/net/mqtt/AIHelpMqtt;->prepare(ILnet/aihelp/core/net/mqtt/callback/IMqttCallback;)V

    return-void
.end method

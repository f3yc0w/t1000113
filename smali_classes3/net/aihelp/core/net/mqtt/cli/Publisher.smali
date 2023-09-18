.class public Lnet/aihelp/core/net/mqtt/cli/Publisher;
.super Ljava/lang/Object;
.source "Publisher.java"


# instance fields
.field private body:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

.field private count:J

.field private debug:Z

.field private final mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

.field private prefixCounter:Z

.field private qos:Lnet/aihelp/core/net/mqtt/client/QoS;

.field private retain:Z

.field private sleep:J

.field private topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/client/MQTT;-><init>()V

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    .line 29
    sget-object v0, Lnet/aihelp/core/net/mqtt/client/QoS;->AT_MOST_ONCE:Lnet/aihelp/core/net/mqtt/client/QoS;

    iput-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->qos:Lnet/aihelp/core/net/mqtt/client/QoS;

    const-wide/16 v0, 0x1

    .line 34
    iput-wide v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->count:J

    return-void
.end method

.method static synthetic access$000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->debug:Z

    return p0
.end method

.method static synthetic access$100(Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stderr(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lnet/aihelp/core/net/mqtt/cli/Publisher;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->sleep:J

    return-wide v0
.end method

.method static synthetic access$200(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    .locals 0

    .line 26
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->body:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    return-object p0
.end method

.method static synthetic access$300(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->prefixCounter:Z

    return p0
.end method

.method static synthetic access$400(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;
    .locals 0

    .line 26
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    return-object p0
.end method

.method static synthetic access$500(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Lnet/aihelp/core/net/mqtt/client/QoS;
    .locals 0

    .line 26
    iget-object p0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->qos:Lnet/aihelp/core/net/mqtt/client/QoS;

    return-object p0
.end method

.method static synthetic access$600(Lnet/aihelp/core/net/mqtt/cli/Publisher;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->retain:Z

    return p0
.end method

.method static synthetic access$800(Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lnet/aihelp/core/net/mqtt/cli/Publisher;)J
    .locals 2

    .line 26
    iget-wide v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->count:J

    return-wide v0
.end method

.method private static displayHelpAndExit(I)V
    .locals 2

    const-string v0, ""

    .line 39
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, "This is a simple mqtt client that will publish to a topic."

    .line 40
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    .line 41
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, "Arguments: [-h host] [-k keepalive] [-c] [-i id] [-u username [-p password]]"

    .line 42
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, "           [--will-topic topic [--will-payload payload] [--will-qos qos] [--will-retain]]"

    .line 43
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, "           [-d] [-n count] [-s sleep] [-q qos] [-r] -t topic ( -pc | -m message | -z | -f file )"

    .line 44
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    .line 45
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    .line 46
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -h : mqtt host uri to connect to. Defaults to tcp://localhost:1883."

    .line 47
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -k : keep alive in seconds for this client. Defaults to 60."

    .line 48
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -c : disable \'clean session\'."

    .line 49
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -i : id to use for this client. Defaults to a random id."

    .line 50
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -u : provide a username (requires MQTT 3.1 broker)"

    .line 51
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -p : provide a password (requires MQTT 3.1 broker)"

    .line 52
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " --will-topic : the topic on which to publish the client Will."

    .line 53
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " --will-payload : payload for the client Will, which is sent by the broker in case of"

    .line 54
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, "                  unexpected disconnection. If not given and will-topic is set, a zero"

    .line 55
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, "                  length message will be sent."

    .line 56
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " --will-qos : QoS level for the client Will."

    .line 57
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " --will-retain : if given, make the client Will retained."

    .line 58
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -d : display debug info on stderr"

    .line 59
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -n : the number of times to publish the message"

    .line 60
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -s : the number of milliseconds to sleep between publish operations (defaut: 0)"

    .line 61
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -q : quality of service level to use for the publish. Defaults to 0."

    .line 62
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -r : message should be retained."

    .line 63
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -t : mqtt topic to publish to."

    .line 64
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -m : message payload to send."

    .line 65
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -z : send a null (zero length) message."

    .line 66
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -f : send the contents of a file as the message."

    .line 67
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -pc : prefix a message counter to the message"

    .line 68
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    const-string v1, " -v : MQTT version to use 3.1 or 3.1.1. (default: 3.1)"

    .line 69
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    .line 70
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stdout(Ljava/lang/Object;)V

    .line 71
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private execute()V
    .locals 4

    .line 184
    iget-object v0, p0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->callbackConnection()Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    move-result-object v0

    .line 186
    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 189
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Lnet/aihelp/core/net/mqtt/cli/Publisher$1;

    invoke-direct {v3, p0, v0, v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher$1;-><init>(Lnet/aihelp/core/net/mqtt/cli/Publisher;Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/util/concurrent/CountDownLatch;)V

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->addShutdownHook(Ljava/lang/Thread;)V

    .line 209
    new-instance v2, Lnet/aihelp/core/net/mqtt/cli/Publisher$2;

    invoke-direct {v2, p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher$2;-><init>(Lnet/aihelp/core/net/mqtt/cli/Publisher;)V

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->listener(Lnet/aihelp/core/net/mqtt/client/Listener;)Lnet/aihelp/core/net/mqtt/client/CallbackConnection;

    .line 236
    invoke-virtual {v0}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->resume()V

    .line 237
    new-instance v2, Lnet/aihelp/core/net/mqtt/cli/Publisher$3;

    invoke-direct {v2, p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher$3;-><init>(Lnet/aihelp/core/net/mqtt/cli/Publisher;)V

    invoke-virtual {v0, v2}, Lnet/aihelp/core/net/mqtt/client/CallbackConnection;->connect(Lnet/aihelp/core/net/mqtt/client/Callback;)V

    .line 250
    new-instance v2, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;

    invoke-direct {v2, p0, v0, v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;-><init>(Lnet/aihelp/core/net/mqtt/cli/Publisher;Lnet/aihelp/core/net/mqtt/client/CallbackConnection;Ljava/util/concurrent/CountDownLatch;)V

    .line 296
    invoke-virtual {v2}, Lnet/aihelp/core/net/mqtt/cli/Publisher$4;->run()V

    .line 299
    :try_start_0
    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    .line 303
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 90
    new-instance v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;

    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;-><init>()V

    .line 93
    new-instance v1, Ljava/util/LinkedList;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 94
    :goto_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p0, :cond_18

    .line 96
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v4, "--help"

    .line 97
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->displayHelpAndExit(I)V

    goto :goto_0

    :cond_0
    const-string v4, "-v"

    .line 99
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 100
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setVersion(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v4, "-h"

    .line 101
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 102
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setHost(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v4, "-k"

    .line 103
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 104
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setKeepAlive(S)V

    goto :goto_0

    :cond_3
    const-string v4, "-c"

    .line 105
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 106
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setCleanSession(Z)V

    goto :goto_0

    :cond_4
    const-string v2, "-i"

    .line 107
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 108
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setClientId(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string v2, "-u"

    .line 109
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 110
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setUserName(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const-string v2, "-p"

    .line 111
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 112
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    const-string v2, "--will-topic"

    .line 113
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 114
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillTopic(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    const-string v2, "--will-payload"

    .line 115
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 116
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillMessage(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    const-string v2, "--will-qos"

    .line 117
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "Invalid qos value : "

    if-eqz v2, :cond_b

    .line 118
    :try_start_1
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 119
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v2

    array-length v2, v2

    if-le p0, v2, :cond_a

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stderr(Ljava/lang/Object;)V

    .line 121
    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->displayHelpAndExit(I)V

    .line 123
    :cond_a
    iget-object v2, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v4

    aget-object p0, v4, p0

    invoke-virtual {v2, p0}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillQos(Lnet/aihelp/core/net/mqtt/client/QoS;)V

    goto/16 :goto_0

    :cond_b
    const-string v2, "--will-retain"

    .line 124
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 125
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->mqtt:Lnet/aihelp/core/net/mqtt/client/MQTT;

    invoke-virtual {p0, v3}, Lnet/aihelp/core/net/mqtt/client/MQTT;->setWillRetain(Z)V

    goto/16 :goto_0

    :cond_c
    const-string v2, "-d"

    .line 126
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 127
    iput-boolean v3, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->debug:Z

    goto/16 :goto_0

    :cond_d
    const-string v2, "-n"

    .line 128
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 129
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->count:J

    goto/16 :goto_0

    :cond_e
    const-string v2, "-s"

    .line 130
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 131
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->sleep:J

    goto/16 :goto_0

    :cond_f
    const-string v2, "-q"

    .line 132
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 133
    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 134
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v2

    array-length v2, v2

    if-le p0, v2, :cond_10

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stderr(Ljava/lang/Object;)V

    .line 136
    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->displayHelpAndExit(I)V

    .line 138
    :cond_10
    invoke-static {}, Lnet/aihelp/core/net/mqtt/client/QoS;->values()[Lnet/aihelp/core/net/mqtt/client/QoS;

    move-result-object v2

    aget-object p0, v2, p0

    iput-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->qos:Lnet/aihelp/core/net/mqtt/client/QoS;

    goto/16 :goto_0

    :cond_11
    const-string v2, "-r"

    .line 139
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 140
    iput-boolean v3, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->retain:Z

    goto/16 :goto_0

    :cond_12
    const-string v2, "-t"

    .line 141
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 142
    new-instance p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    goto/16 :goto_0

    :cond_13
    const-string v2, "-m"

    .line 143
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 144
    new-instance p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->body:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    goto/16 :goto_0

    :cond_14
    const-string v2, "-z"

    .line 145
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 146
    new-instance p0, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    const-string v2, ""

    invoke-direct {p0, v2}, Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;-><init>(Ljava/lang/String;)V

    iput-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->body:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    goto/16 :goto_0

    :cond_15
    const-string v2, "-f"

    .line 147
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 148
    new-instance p0, Ljava/io/File;

    invoke-static {v1}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->shift(Ljava/util/LinkedList;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 149
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v4, "r"

    invoke-direct {v2, p0, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 151
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    long-to-int p0, v4

    new-array p0, p0, [B

    const-wide/16 v4, 0x0

    .line 152
    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 153
    invoke-virtual {v2, p0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 154
    new-instance v4, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    invoke-direct {v4, p0}, Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;-><init>([B)V

    iput-object v4, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->body:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    .line 157
    throw p0

    :cond_16
    const-string v2, "-pc"

    .line 158
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 159
    iput-boolean v3, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->prefixCounter:Z

    goto/16 :goto_0

    .line 161
    :cond_17
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid usage: unknown option: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stderr(Ljava/lang/Object;)V

    .line 162
    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->displayHelpAndExit(I)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    const-string p0, "Invalid usage: argument not a number"

    .line 165
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stderr(Ljava/lang/Object;)V

    .line 166
    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->displayHelpAndExit(I)V

    goto/16 :goto_0

    .line 170
    :cond_18
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->topic:Lnet/aihelp/core/net/mqtt/hawtbuf/UTF8Buffer;

    if-nez p0, :cond_19

    const-string p0, "Invalid usage: no topic specified."

    .line 171
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stderr(Ljava/lang/Object;)V

    .line 172
    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->displayHelpAndExit(I)V

    .line 174
    :cond_19
    iget-object p0, v0, Lnet/aihelp/core/net/mqtt/cli/Publisher;->body:Lnet/aihelp/core/net/mqtt/hawtbuf/Buffer;

    if-nez p0, :cond_1a

    const-string p0, "Invalid usage: -z -m or -f must be specified."

    .line 175
    invoke-static {p0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stderr(Ljava/lang/Object;)V

    .line 176
    invoke-static {v3}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->displayHelpAndExit(I)V

    .line 179
    :cond_1a
    invoke-direct {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->execute()V

    .line 180
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static shift(Ljava/util/LinkedList;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Invalid usage: Missing argument"

    .line 83
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->stderr(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 84
    invoke-static {v0}, Lnet/aihelp/core/net/mqtt/cli/Publisher;->displayHelpAndExit(I)V

    .line 86
    :cond_0
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private static stderr(Ljava/lang/Object;)V
    .locals 1

    .line 78
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

.method private static stdout(Ljava/lang/Object;)V
    .locals 1

    .line 75
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    return-void
.end method

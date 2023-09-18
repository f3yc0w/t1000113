.class public Lcom/netease/mobsec/grow/q;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/mobsec/grow/q$a;
    }
.end annotation


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/mobsec/grow/q;->a:Landroid/content/Context;

    return-void
.end method

.method public static a([CLjava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-char v2, p0, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_0

    rem-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    and-int/2addr v3, v4

    xor-int/2addr v2, v3

    const v3, 0xffff

    and-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v1

    goto :goto_1

    :cond_0
    shr-int/lit8 v4, v2, 0x1

    shl-int/lit8 v2, v2, 0x7

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/2addr v2, v1

    and-int/2addr v2, v3

    xor-int/2addr v2, v1

    and-int/2addr v2, v3

    add-int/lit16 v2, v2, 0xd3

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x1

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x7

    and-int/2addr v2, v3

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x2d

    and-int/2addr v2, v3

    shr-int/lit8 v4, v2, 0x3

    and-int/2addr v4, v3

    shl-int/lit8 v2, v2, 0x5

    and-int/2addr v2, v3

    or-int/2addr v2, v4

    and-int/2addr v2, v3

    rem-int v4, v1, v0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    xor-int/2addr v2, v4

    and-int/2addr v2, v3

    and-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, p0, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([C)V

    return-object p1
.end method


# virtual methods
.method public final a([B)Ljava/lang/String;
    .locals 26

    move-object/from16 v0, p1

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    const/16 v3, 0x27

    new-array v3, v3, [C

    const/16 v4, 0xc3

    const/4 v5, 0x0

    aput-char v4, v3, v5

    const/16 v4, 0x33

    const/4 v6, 0x1

    aput-char v4, v3, v6

    const/16 v4, 0xb1

    const/4 v7, 0x2

    aput-char v4, v3, v7

    const/16 v8, 0xd1

    const/4 v9, 0x3

    aput-char v8, v3, v9

    const/16 v8, 0xde

    const/4 v10, 0x4

    aput-char v8, v3, v10

    const/16 v8, 0x4a

    const/4 v11, 0x5

    aput-char v8, v3, v11

    const/16 v8, 0x5b

    const/4 v12, 0x6

    aput-char v8, v3, v12

    const/16 v8, 0x50

    const/4 v13, 0x7

    aput-char v8, v3, v13

    const/16 v8, 0xef

    const/16 v14, 0x8

    aput-char v8, v3, v14

    const/16 v8, 0x9

    aput-char v4, v3, v8

    const/16 v15, 0xa

    const/16 v16, 0xf

    aput-char v16, v3, v15

    const/16 v17, 0xc9

    const/16 v18, 0xb

    aput-char v17, v3, v18

    const/16 v17, 0xc2

    const/16 v15, 0xc

    aput-char v17, v3, v15

    const/16 v17, 0xd

    aput-char v14, v3, v17

    const/16 v19, 0xb0

    const/16 v20, 0xe

    aput-char v19, v3, v20

    const/16 v19, 0xd3

    aput-char v19, v3, v16

    const/16 v19, 0x10

    aput-char v20, v3, v19

    const/16 v19, 0x11

    const/16 v21, 0xa0

    aput-char v21, v3, v19

    const/16 v19, 0x42

    const/16 v21, 0x12

    aput-char v19, v3, v21

    const/16 v19, 0x13

    aput-char v18, v3, v19

    const/16 v19, 0xb0

    const/16 v22, 0x14

    aput-char v19, v3, v22

    const/16 v19, 0x15

    aput-char v21, v3, v19

    const/16 v19, 0x16

    const/16 v23, 0x6e

    aput-char v23, v3, v19

    const/16 v19, 0xa1

    const/16 v23, 0x17

    aput-char v19, v3, v23

    const/16 v19, 0x18

    const/16 v24, 0xaa

    aput-char v24, v3, v19

    const/16 v19, 0x19

    const/16 v24, 0x2a

    aput-char v24, v3, v19

    const/16 v19, 0x1a

    const/16 v24, 0x47

    aput-char v24, v3, v19

    const/16 v19, 0x1b

    const/16 v24, 0xe3

    aput-char v24, v3, v19

    const/16 v19, 0x1c

    const/16 v24, 0xde

    aput-char v24, v3, v19

    const/16 v19, 0x1d

    aput-char v6, v3, v19

    const/16 v24, 0x1e

    const/16 v25, 0x82

    aput-char v25, v3, v24

    const/16 v24, 0x1f

    const/16 v25, 0x73

    aput-char v25, v3, v24

    const/16 v24, 0x20

    const/16 v25, 0x58

    aput-char v25, v3, v24

    const/16 v24, 0x21

    const/16 v25, 0x2b

    aput-char v25, v3, v24

    const/16 v24, 0x22

    const/16 v25, 0xee

    aput-char v25, v3, v24

    const/16 v24, 0x23

    const/16 v25, 0xba

    aput-char v25, v3, v24

    const/16 v24, 0x24

    const/16 v25, 0xc3

    aput-char v25, v3, v24

    const/16 v24, 0x25

    const/16 v25, 0xd1

    aput-char v25, v3, v24

    const/16 v24, 0x26

    const/16 v25, 0x97

    aput-char v25, v3, v24

    const-string v14, "\u02cd\u0335\u0361\u0366\u036c\u02a0"

    invoke-static {v3, v14}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    instance-of v3, v2, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_0

    new-array v3, v9, [C

    aput-char v9, v3, v5

    const/16 v14, 0xf5

    aput-char v14, v3, v6

    aput-char v22, v3, v7

    const-string v14, "\u02eb\u037b\u032b\u02db\u0266\u02b5"

    invoke-static {v3, v14}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v3

    new-instance v14, Ljava/security/SecureRandom;

    invoke-direct {v14}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v1, v1, v14}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    move-object v14, v2

    check-cast v14, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v3}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    new-array v3, v10, [C

    const/16 v14, 0xc2

    aput-char v14, v3, v5

    const/16 v14, 0x66

    aput-char v14, v3, v6

    const/16 v14, 0xc6

    aput-char v14, v3, v7

    aput-char v8, v3, v9

    const-string v14, "\u02ed\u02b5\u034d\u029b\u028e\u0287"

    invoke-static {v3, v14}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    new-array v3, v15, [C

    const/16 v14, 0x83

    aput-char v14, v3, v5

    const/16 v14, 0x63

    aput-char v14, v3, v6

    aput-char v16, v3, v7

    const/16 v14, 0x9d

    aput-char v14, v3, v9

    aput-char v4, v3, v10

    const/16 v4, 0xc7

    aput-char v4, v3, v11

    const/16 v4, 0xa1

    aput-char v4, v3, v12

    aput-char v9, v3, v13

    const/16 v4, 0x3a

    const/16 v14, 0x8

    aput-char v4, v3, v14

    const/16 v4, 0x44

    aput-char v4, v3, v8

    const/16 v4, 0xa

    aput-char v13, v3, v4

    const/16 v4, 0x94

    aput-char v4, v3, v18

    const-string v4, "\u02e0\u02ad\u032e\u02c0\u0370\u0308"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x26

    new-array v4, v4, [C

    const/16 v14, 0x6e

    aput-char v14, v4, v5

    const/16 v14, 0xe7

    aput-char v14, v4, v6

    const/16 v14, 0x5a

    aput-char v14, v4, v7

    const/16 v14, 0x66

    aput-char v14, v4, v9

    const/16 v14, 0xb5

    aput-char v14, v4, v10

    aput-char v19, v4, v11

    const/16 v14, 0x56

    aput-char v14, v4, v12

    const/16 v12, 0x57

    aput-char v12, v4, v13

    const/16 v12, 0x5b

    const/16 v13, 0x8

    aput-char v12, v4, v13

    const/16 v12, 0x4c

    aput-char v12, v4, v8

    const/16 v8, 0x2d

    const/16 v12, 0xa

    aput-char v8, v4, v12

    const/16 v8, 0x9e

    aput-char v8, v4, v18

    const/16 v8, 0x91

    aput-char v8, v4, v15

    const/16 v8, 0xbd

    aput-char v8, v4, v17

    const/16 v8, 0xaa

    aput-char v8, v4, v20

    const/16 v8, 0x75

    aput-char v8, v4, v16

    const/16 v8, 0x10

    aput-char v21, v4, v8

    const/16 v8, 0x11

    const/16 v12, 0x9e

    aput-char v12, v4, v8

    const/16 v8, 0xe7

    aput-char v8, v4, v21

    const/16 v8, 0x13

    const/16 v12, 0x27

    aput-char v12, v4, v8

    aput-char v15, v4, v22

    const/16 v8, 0x15

    const/16 v12, 0x7d

    aput-char v12, v4, v8

    const/16 v8, 0x16

    const/16 v12, 0x72

    aput-char v12, v4, v8

    const/16 v8, 0x96

    aput-char v8, v4, v23

    const/16 v8, 0x18

    const/16 v12, 0xd6

    aput-char v12, v4, v8

    const/16 v8, 0x19

    const/16 v12, 0xcd

    aput-char v12, v4, v8

    const/16 v8, 0x1a

    const/16 v12, 0x3b

    aput-char v12, v4, v8

    const/16 v8, 0x1b

    aput-char v10, v4, v8

    const/16 v8, 0x1c

    const/16 v12, 0xb4

    aput-char v12, v4, v8

    const/16 v8, 0xd6

    aput-char v8, v4, v19

    const/16 v8, 0x1e

    const/16 v12, 0x96

    aput-char v12, v4, v8

    const/16 v8, 0x1f

    aput-char v23, v4, v8

    const/16 v8, 0x20

    const/16 v12, 0x75

    aput-char v12, v4, v8

    const/16 v8, 0x21

    const/16 v12, 0x87

    aput-char v12, v4, v8

    const/16 v8, 0x22

    aput-char v21, v4, v8

    const/16 v8, 0x23

    const/16 v12, 0x45

    aput-char v12, v4, v8

    const/16 v8, 0x24

    const/16 v12, 0x69

    aput-char v12, v4, v8

    const/16 v8, 0x25

    const/16 v12, 0x64

    aput-char v12, v4, v8

    const-string v8, "\u037a\u0296\u030a\u0296\u035c\u0293"

    invoke-static {v4, v8}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {v2, v6}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/16 v3, 0x3a98

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    invoke-virtual {v2, v5}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    new-array v3, v11, [C

    const/16 v4, 0xb7

    aput-char v4, v3, v5

    const/16 v4, 0x2e

    aput-char v4, v3, v6

    aput-char v17, v3, v7

    const/16 v4, 0xf5

    aput-char v4, v3, v9

    const/16 v4, 0x48

    aput-char v4, v3, v10

    const-string v4, "\u0310\u037d\u0376\u035a\u0362\u0346"

    invoke-static {v3, v4}, Lcom/netease/mobsec/grow/q;->a([CLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v0, :cond_4

    .line 1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v4, :cond_2

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_3

    goto :goto_2

    .line 2
    :cond_3
    :try_start_2
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lcom/netease/mobsec/grow/h;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    invoke-direct {v4, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v4

    .line 3
    :catch_0
    :cond_4
    :goto_2
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object v1

    :cond_5
    :try_start_3
    new-instance v0, Lcom/netease/mobsec/grow/q$a;

    .line 4
    invoke-direct {v0}, Lcom/netease/mobsec/grow/q$a;-><init>()V

    .line 5
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    throw v0
.end method

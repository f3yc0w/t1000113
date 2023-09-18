.class public Lcom/tendcloud/tenddata/game/at;
.super Ljava/lang/Object;
.source "td"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tendcloud/tenddata/game/at$c;,
        Lcom/tendcloud/tenddata/game/at$b;,
        Lcom/tendcloud/tenddata/game/at$a;,
        Lcom/tendcloud/tenddata/game/at$d;,
        Lcom/tendcloud/tenddata/game/at$e;
    }
.end annotation


# static fields
.field public static a:I = 0xea60

.field public static b:I = 0xea60

.field public static volatile c:Ljava/util/HashMap; = null

.field private static final d:I = 0x258

.field private static final e:I = 0xea60

.field private static final f:I = 0xea60

.field private static g:Landroid/content/Context;

.field private static volatile h:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 54
    sput-object v0, Lcom/tendcloud/tenddata/game/at;->g:Landroid/content/Context;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/at;->h:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 9

    .line 64
    sput-object p0, Lcom/tendcloud/tenddata/game/at;->g:Landroid/content/Context;

    .line 65
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->getCert()Ljava/lang/String;

    move-result-object v3

    const-string v1, ""

    const-string v5, "default"

    const/4 v8, 0x0

    move-object v2, p2

    move-object v4, p3

    move-object v6, p1

    move-object v7, p4

    invoke-static/range {v0 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 8

    const-string v6, "default"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, p6

    .line 59
    invoke-static/range {v0 .. v7}, Lcom/tendcloud/tenddata/game/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 9

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    .line 71
    invoke-static/range {v0 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 9

    .line 77
    sput-object p0, Lcom/tendcloud/tenddata/game/at;->g:Landroid/content/Context;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 78
    invoke-static/range {v0 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 0

    .line 255
    invoke-static {p0, p1, p2, p3}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 10

    .line 390
    new-instance v1, Lcom/tendcloud/tenddata/game/at$e;

    const/16 v0, 0x258

    invoke-direct {v1, v0}, Lcom/tendcloud/tenddata/game/at$e;-><init>(I)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p0

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 392
    :try_start_0
    invoke-static/range {v2 .. v9}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    .line 397
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 12

    move-object v0, p0

    const-string v1, ""

    const/16 v2, 0x258

    :try_start_0
    const-string v3, "https://"

    .line 406
    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 407
    sget-object v3, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object v6, p3

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object v6, p3

    .line 410
    :goto_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x1

    move-object v6, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object v3

    if-nez v3, :cond_1

    .line 412
    new-instance v0, Lcom/tendcloud/tenddata/game/at$e;

    invoke-direct {v0, v2, v1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 414
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v4, "https"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    .line 415
    invoke-static {v3, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    :cond_2
    move-object v0, p2

    move-object/from16 v4, p4

    .line 417
    invoke-static {p2, v3, v4}, Lcom/tendcloud/tenddata/game/at;->a([BLjava/net/URLConnection;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    .line 419
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 424
    new-instance v0, Lcom/tendcloud/tenddata/game/at$e;

    invoke-direct {v0, v2, v1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method private static a([BLjava/net/URLConnection;Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 9

    const/16 v0, 0x258

    if-eqz p0, :cond_a

    .line 528
    array-length v1, p0

    if-eqz v1, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_c

    .line 531
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 535
    move-object v2, p1

    check-cast v2, Ljava/net/HttpURLConnection;

    .line 536
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const v3, 0xea60

    :try_start_0
    const-string v4, "POST"

    .line 539
    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 541
    :try_start_1
    invoke-virtual {v4, p0}, Ljava/io/OutputStream;->write([B)V

    .line 542
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    .line 545
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v7, 0x190

    if-le v0, v7, :cond_1

    .line 548
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_0

    .line 550
    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 552
    :goto_0
    invoke-static {p2, v1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz v4, :cond_2

    .line 562
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 571
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    nop

    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 580
    :try_start_4
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception p2

    .line 583
    :goto_3
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 585
    :cond_4
    :goto_4
    sput v3, Lcom/tendcloud/tenddata/game/at;->a:I

    .line 586
    sput v3, Lcom/tendcloud/tenddata/game/at;->b:I

    .line 588
    array-length p0, p0

    int-to-long v3, p0

    move-object v7, p1

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;I)V

    goto :goto_8

    :catchall_3
    move-exception p2

    goto :goto_5

    :catchall_4
    move-exception p2

    move-object v4, v1

    .line 557
    :goto_5
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "message:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ";stack:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/tendcloud/tenddata/game/da;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v7, 0x0

    const/16 v8, 0x100

    .line 558
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    if-eqz v4, :cond_5

    .line 562
    :try_start_6
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    goto :goto_6

    :catchall_5
    nop

    :cond_5
    :goto_6
    if-eqz v1, :cond_6

    .line 571
    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    goto :goto_7

    :catchall_6
    nop

    :cond_6
    :goto_7
    if-eqz v2, :cond_4

    .line 580
    :try_start_8
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto :goto_4

    :catchall_7
    move-exception p2

    goto :goto_3

    .line 590
    :goto_8
    new-instance p0, Lcom/tendcloud/tenddata/game/at$e;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    return-object p0

    :catchall_8
    move-exception p2

    if-eqz v4, :cond_7

    .line 562
    :try_start_9
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    goto :goto_9

    :catchall_9
    nop

    :cond_7
    :goto_9
    if-eqz v1, :cond_8

    .line 571
    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    goto :goto_a

    :catchall_a
    nop

    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    .line 580
    :try_start_b
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    goto :goto_b

    :catchall_b
    move-exception v1

    .line 583
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    .line 585
    :cond_9
    :goto_b
    sput v3, Lcom/tendcloud/tenddata/game/at;->a:I

    .line 586
    sput v3, Lcom/tendcloud/tenddata/game/at;->b:I

    .line 588
    array-length p0, p0

    int-to-long v3, p0

    move-object v7, p1

    move v8, v0

    invoke-static/range {v2 .. v8}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;I)V

    throw p2

    .line 529
    :cond_a
    :goto_c
    new-instance p0, Lcom/tendcloud/tenddata/game/at$e;

    const-string p1, ""

    invoke-direct {p0, v0, p1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(ILjava/lang/String;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 247
    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5

    .line 594
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    .line 597
    :try_start_0
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, -0x1

    .line 598
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x30a95a

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "gzip"

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    if-eqz v2, :cond_4

    .line 603
    new-instance p0, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 605
    :goto_1
    :try_start_1
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 606
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 p1, 0xa

    .line 607
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 608
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/high16 v1, 0x6400000

    if-gt p1, v1, :cond_2

    goto :goto_1

    .line 609
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v1, "Input stream more than 100 MB size limit"

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    move-object v1, p0

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_4

    .line 600
    :cond_4
    :try_start_2
    new-instance p0, Ljava/lang/String;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :goto_2
    if-eqz v1, :cond_6

    .line 621
    :goto_3
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_1
    move-exception p1

    .line 617
    :goto_4
    :try_start_4
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_6

    goto :goto_3

    .line 629
    :catchall_2
    :cond_6
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_3
    move-exception p0

    if-eqz v1, :cond_7

    .line 621
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 627
    :catchall_4
    :cond_7
    throw p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 0

    .line 251
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 0

    .line 89
    invoke-static {p0, p1, p2}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 85
    invoke-static {p0, v0, p1}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 0

    .line 439
    invoke-static/range {p0 .. p6}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/net/URL;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/URLConnection;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v6, p3

    .line 434
    invoke-static/range {v0 .. v6}, Lcom/tendcloud/tenddata/game/at;->b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 668
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 670
    :cond_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :try_start_0
    const-string p0, "X.509"

    .line 673
    invoke-static {p0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object p0

    .line 674
    invoke-virtual {p0, v1}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    check-cast p0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 682
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-object v0, p0

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 688
    :catchall_2
    throw p0

    .line 682
    :catch_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :cond_1
    :goto_0
    return-object v0
.end method

.method private static a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;
    .locals 4

    const/4 v0, 0x0

    .line 503
    :try_start_0
    check-cast p0, Ljavax/net/ssl/HttpsURLConnection;

    const/16 v1, 0x10

    .line 505
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TLSv1.2"

    .line 506
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "TLSv1"

    .line 508
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 510
    :goto_0
    new-instance v2, Lcom/tendcloud/tenddata/game/at$d;

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/lang/String;)Ljava/security/cert/X509Certificate;

    move-result-object p1

    invoke-direct {v2, p1}, Lcom/tendcloud/tenddata/game/at$d;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    const/4 v3, 0x0

    aput-object v2, p1, v3

    .line 511
    invoke-virtual {v1, v0, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 514
    invoke-virtual {p0}, Ljavax/net/ssl/HttpsURLConnection;->getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    .line 516
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 519
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(ZLjava/security/cert/X509Certificate;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "TLS"

    .line 94
    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 96
    new-instance p0, Lcom/tendcloud/tenddata/game/at$d;

    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/at$d;-><init>(Ljava/security/cert/X509Certificate;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, p1, v2

    .line 97
    invoke-virtual {v1, v0, p1, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {v1, v0, v0, v0}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 103
    :goto_0
    invoke-virtual {v1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 106
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method private static a(Ljava/net/HttpURLConnection;JJLjava/lang/StringBuffer;I)V
    .locals 4

    const-string v0, "targetIP"

    if-eqz p0, :cond_1

    .line 636
    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 637
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object p0

    const-string v2, "targetUrl"

    .line 638
    invoke-virtual {p0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 640
    :try_start_1
    invoke-virtual {p0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 641
    invoke-virtual {p0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    const-string p0, "0.0.0.0"

    .line 643
    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/16 p0, 0xc8

    if-ne p6, p0, :cond_0

    const-string p0, "reqSize"

    .line 650
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "respTime"

    .line 651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, p3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    goto :goto_1

    :cond_0
    const-string p0, "errorMsg"

    .line 654
    invoke-virtual {p5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "statusCode"

    .line 655
    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    .line 659
    :goto_1
    invoke-static {p0, v1}, Lcom/tendcloud/tenddata/game/da;->a(ZLjava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    .line 662
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-void
.end method

.method private static a(Ljavax/net/ssl/HttpsURLConnection;)V
    .locals 0

    return-void
.end method

.method private static a(Ljava/io/InputStream;)[B
    .locals 7

    const/4 v0, 0x0

    .line 204
    :try_start_0
    new-instance v1, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v1, p0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/16 p0, 0x400

    :try_start_1
    new-array v2, p0, [B

    .line 207
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    const/4 v4, 0x0

    .line 208
    :try_start_2
    invoke-virtual {v1, v2, v4, p0}, Ljava/util/zip/GZIPInputStream;->read([BII)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 209
    invoke-virtual {v3, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 212
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 221
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 231
    :catchall_0
    :try_start_4
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v0

    move-object v0, v3

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v2, v0

    goto :goto_1

    :catchall_3
    move-exception p0

    move-object v1, v0

    move-object v2, v1

    .line 214
    :goto_1
    :try_start_5
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    if-eqz v0, :cond_1

    .line 221
    :try_start_6
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_2

    :catchall_4
    nop

    :cond_1
    :goto_2
    if-eqz v1, :cond_2

    .line 231
    :try_start_7
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    :catchall_5
    :cond_2
    move-object v0, v2

    :catchall_6
    :goto_3
    return-object v0

    :catchall_7
    move-exception p0

    if-eqz v0, :cond_3

    .line 221
    :try_start_8
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    goto :goto_4

    :catchall_8
    nop

    :cond_3
    :goto_4
    if-eqz v1, :cond_4

    .line 231
    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/GZIPInputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    .line 236
    :catchall_9
    :cond_4
    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;[Ljava/lang/String;)Lcom/tendcloud/tenddata/game/at$e;
    .locals 7

    .line 260
    new-instance v0, Lcom/tendcloud/tenddata/game/at$e;

    const/16 v1, 0x258

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/at$e;-><init>(I)V

    const/4 v1, 0x0

    .line 262
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 264
    invoke-static {v2, v1, v3, v1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URL;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 266
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v1, "https"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 267
    sget-object p0, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {v4, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v4

    .line 274
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    iput p0, v0, Lcom/tendcloud/tenddata/game/at$e;->statusCode:I

    .line 275
    iget p0, v0, Lcom/tendcloud/tenddata/game/at$e;->statusCode:I

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_4

    .line 276
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 277
    array-length p1, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, p1, :cond_1

    aget-object v4, p3, v2

    .line 278
    invoke-virtual {v1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 280
    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/tendcloud/tenddata/game/at$e;->responseMsg:Ljava/lang/String;

    .line 281
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    .line 282
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 p2, 0x1000

    :try_start_3
    new-array p2, p2, [B

    .line 286
    :goto_2
    invoke-virtual {p0, p2}, Ljava/io/InputStream;->read([B)I

    move-result p3

    const/4 v2, -0x1

    if-eq p3, v2, :cond_2

    .line 287
    invoke-virtual {p1, p2, v3, p3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 290
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 291
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v1, :cond_3

    .line 304
    :try_start_5
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :cond_3
    return-object v0

    :catchall_1
    move-exception p2

    .line 290
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 291
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw p2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_4
    if-eqz v1, :cond_5

    .line 304
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_5

    :catchall_2
    move-exception p0

    move-object v1, v4

    goto :goto_4

    :catchall_3
    move-exception p0

    .line 297
    :goto_4
    :try_start_8
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    if-eqz v1, :cond_5

    goto :goto_3

    :catchall_4
    :cond_5
    :goto_5
    return-object v0

    :catchall_5
    move-exception p0

    if-eqz v1, :cond_6

    .line 304
    :try_start_9
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 310
    :catchall_6
    :cond_6
    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 321
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 323
    invoke-static {v1, v0, v2, v0}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URL;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_9

    .line 325
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v4, "https"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 326
    sget-object p0, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {v3, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    .line 334
    :cond_0
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_6

    const-string p0, "MD5"

    .line 335
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    .line 337
    :try_start_2
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 338
    :try_start_3
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const/16 p2, 0x1000

    :try_start_4
    new-array p2, p2, [B

    .line 341
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 342
    invoke-virtual {v1, p2, v2, v4}, Ljava/io/FileOutputStream;->write([BII)V

    .line 343
    invoke-virtual {p0, p2, v2, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_0

    .line 348
    :cond_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    nop

    :goto_1
    if-eqz p1, :cond_2

    .line 357
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 365
    :catchall_1
    :cond_2
    :try_start_7
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->a([B)Ljava/lang/String;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_8

    if-eqz v3, :cond_3

    .line 376
    :try_start_8
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    :cond_3
    return-object p0

    :catchall_3
    move-exception p0

    goto :goto_2

    :catchall_4
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catchall_5
    move-exception p0

    move-object p1, v0

    move-object v1, p1

    :goto_2
    if-eqz v1, :cond_4

    .line 348
    :try_start_9
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_3

    :catchall_6
    nop

    :cond_4
    :goto_3
    if-eqz p1, :cond_5

    .line 357
    :try_start_a
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    .line 362
    :catchall_7
    :cond_5
    :try_start_b
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_8

    :cond_6
    if-eqz v3, :cond_7

    .line 376
    :goto_4
    :try_start_c
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    goto :goto_6

    :catchall_8
    move-exception p0

    goto :goto_5

    :catchall_9
    move-exception p0

    move-object v3, v0

    .line 369
    :goto_5
    :try_start_d
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_b

    if-eqz v3, :cond_7

    goto :goto_4

    :catchall_a
    :cond_7
    :goto_6
    return-object v0

    :catchall_b
    move-exception p0

    if-eqz v3, :cond_8

    .line 376
    :try_start_e
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_c

    .line 382
    :catchall_c
    :cond_8
    throw p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 117
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 127
    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 129
    invoke-static {v2, v1, v3, v1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URL;Ljava/lang/String;ZLjava/lang/String;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 130
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v4, "https"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 131
    sget-object p0, Lcom/tendcloud/tenddata/game/at;->c:Ljava/util/HashMap;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-static {v3, p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/net/URLConnection;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v3

    :cond_1
    const-string p0, "GET"

    .line 138
    invoke-virtual {v3, p0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p0

    const/16 p1, 0xc8

    if-ne p0, p1, :cond_6

    if-eqz p2, :cond_2

    .line 146
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/at;->a(Ljava/io/InputStream;)[B

    move-result-object p1

    const-string p2, "utf-8"

    invoke-direct {p0, p1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 148
    :cond_2
    new-instance p0, Ljava/io/BufferedReader;

    new-instance p1, Ljava/io/InputStreamReader;

    .line 149
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 151
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 152
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    const/high16 p2, 0x6400000

    if-gt p1, p2, :cond_3

    goto :goto_0

    .line 154
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Input stream more than 100 MB size limit"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    move-object v1, p0

    :goto_1
    if-eqz v1, :cond_5

    .line 173
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    nop

    :cond_5
    :goto_2
    if-eqz v3, :cond_9

    .line 182
    :goto_3
    :try_start_4
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    goto :goto_6

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    goto :goto_4

    .line 160
    :cond_6
    :try_start_5
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v3, :cond_7

    .line 182
    :try_start_6
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    :cond_7
    return-object p0

    :catchall_3
    move-exception p0

    goto :goto_4

    :catchall_4
    move-exception p0

    move-object v3, v1

    .line 169
    :goto_4
    :try_start_7
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    if-eqz v1, :cond_8

    .line 173
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_5

    :catchall_5
    nop

    :cond_8
    :goto_5
    if-eqz v3, :cond_9

    goto :goto_3

    .line 190
    :catchall_6
    :cond_9
    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_7
    move-exception p0

    if-eqz v1, :cond_a

    .line 173
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    goto :goto_7

    :catchall_8
    nop

    :cond_a
    :goto_7
    if-eqz v3, :cond_b

    .line 182
    :try_start_a
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_9

    .line 188
    :catchall_9
    :cond_b
    throw p0
.end method

.method private static b(Ljava/net/URL;Ljava/lang/String;ZLcom/tendcloud/tenddata/game/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URLConnection;
    .locals 0

    const-string p3, ""

    .line 446
    :try_start_0
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    const-string p4, "Accept-Encoding"

    .line 453
    invoke-virtual {p0, p4, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "User-Agent"

    .line 454
    invoke-virtual {p0, p4, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string p4, "Host"

    .line 458
    invoke-virtual {p0, p4, p1}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "Content-Type"

    .line 459
    invoke-virtual {p0, p1, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/16 p1, 0xe

    .line 480
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->a(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 p1, 0x13

    .line 481
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/bq;->b(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Connection"

    const-string p3, "close"

    .line 482
    invoke-virtual {p0, p1, p3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x1

    .line 485
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoInput(Z)V

    if-eqz p2, :cond_2

    .line 487
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setDoOutput(Z)V

    .line 489
    :cond_2
    sget p1, Lcom/tendcloud/tenddata/game/at;->a:I

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 490
    sget p1, Lcom/tendcloud/tenddata/game/at;->b:I

    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 492
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/da;->postSDKError(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

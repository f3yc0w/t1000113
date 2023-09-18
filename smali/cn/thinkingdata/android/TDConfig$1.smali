.class Lcn/thinkingdata/android/TDConfig$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/thinkingdata/android/TDConfig;->getRemoteConfig()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/thinkingdata/android/TDConfig;


# direct methods
.method constructor <init>(Lcn/thinkingdata/android/TDConfig;)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v0, "disable_event_list"

    const-string v1, "Getting remote config failed due to: "

    const-string v2, "ThinkingAnalytics.TDConfig"

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/net/URL;

    iget-object v5, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v5}, Lcn/thinkingdata/android/TDConfig;->access$000(Lcn/thinkingdata/android/TDConfig;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    check-cast v4, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v5}, Lcn/thinkingdata/android/TDConfig;->getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v5

    if-eqz v5, :cond_0

    instance-of v6, v4, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v6, :cond_0

    move-object v6, v4

    check-cast v6, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v6, v5}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    :cond_0
    const-string v5, "GET"

    invoke-virtual {v4, v5}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v5, 0xc8

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v6

    if-ne v5, v6, :cond_6

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v6, "code"

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "0"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v6}, Lcn/thinkingdata/android/TDConfig;->access$100(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/persistence/StorageFlushInterval;

    move-result-object v6

    invoke-virtual {v6}, Lcn/thinkingdata/android/persistence/StorageFlushInterval;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v8, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v8}, Lcn/thinkingdata/android/TDConfig;->access$200(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;

    move-result-object v8

    invoke-virtual {v8}, Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    const-string v9, "data"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    const-string/jumbo v9, "sync_interval"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    mul-int/lit16 v6, v6, 0x3e8

    const-string/jumbo v9, "sync_batch_size"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Fetched remote config for ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    iget-object v10, v10, Lcn/thinkingdata/android/TDConfig;->mToken:Ljava/lang/String;

    const/4 v11, 0x4

    invoke-static {v10, v11}, Lcn/thinkingdata/android/utils/TDUtils;->getSuffix(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "):\n"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v9}, Lcn/thinkingdata/android/TDConfig;->access$300(Lcn/thinkingdata/android/TDConfig;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v7, v9, :cond_2

    iget-object v9, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v9}, Lcn/thinkingdata/android/TDConfig;->access$400(Lcn/thinkingdata/android/TDConfig;)Ljava/util/Set;

    move-result-object v9

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :try_start_4
    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v0}, Lcn/thinkingdata/android/TDConfig;->access$300(Lcn/thinkingdata/android/TDConfig;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_2

    :catchall_0
    move-exception v0

    iget-object v7, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v7}, Lcn/thinkingdata/android/TDConfig;->access$300(Lcn/thinkingdata/android/TDConfig;)Ljava/util/concurrent/locks/ReadWriteLock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catch_0
    move-exception v0

    :try_start_5
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v0}, Lcn/thinkingdata/android/TDConfig;->access$200(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_4

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v0}, Lcn/thinkingdata/android/TDConfig;->access$200(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcn/thinkingdata/android/persistence/StorageFlushBulkSize;->put(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v0}, Lcn/thinkingdata/android/TDConfig;->access$100(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/persistence/StorageFlushInterval;

    move-result-object v0

    invoke-virtual {v0}, Lcn/thinkingdata/android/persistence/StorageFlushInterval;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v6, :cond_5

    iget-object v0, p0, Lcn/thinkingdata/android/TDConfig$1;->this$0:Lcn/thinkingdata/android/TDConfig;

    invoke-static {v0}, Lcn/thinkingdata/android/TDConfig;->access$100(Lcn/thinkingdata/android/TDConfig;)Lcn/thinkingdata/android/persistence/StorageFlushInterval;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcn/thinkingdata/android/persistence/StorageFlushInterval;->put(Ljava/lang/Object;)V

    :cond_5
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V

    goto :goto_3

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting remote config failed, responseCode is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_3
    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    if-eqz v4, :cond_a

    goto :goto_9

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v4, v3

    goto :goto_a

    :catch_4
    move-exception v0

    move-object v4, v3

    :goto_5
    :try_start_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    if-eqz v3, :cond_8

    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    if-eqz v4, :cond_a

    goto :goto_9

    :catch_6
    move-exception v0

    move-object v4, v3

    :goto_7
    :try_start_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/thinkingdata/android/utils/TDLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    if-eqz v3, :cond_9

    :try_start_a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    goto :goto_8

    :catch_7
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_8
    if-eqz v4, :cond_a

    :goto_9
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-void

    :catchall_2
    move-exception v0

    :goto_a
    if-eqz v3, :cond_b

    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8

    goto :goto_b

    :catch_8
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_b
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v0
.end method

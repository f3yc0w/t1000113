.class public Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;
.super Ljava/lang/Object;
.source "NERtcLiveStreamTaskInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;,
        Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamLayoutMode;
    }
.end annotation


# instance fields
.field public config:Lcom/netease/lava/nertc/sdk/live/NERtcLiveConfig;

.field public extraInfo:Ljava/lang/String;

.field public layout:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamLayout;

.field public liveMode:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;

.field public serverRecordEnabled:Z

.field public taskId:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->serverRecordEnabled:Z

    .line 144
    sget-object v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;->kNERtcLsModeVideo:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;

    iput-object v0, p0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;->liveMode:Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo$NERtcLiveStreamMode;

    return-void
.end method

.method public static deepCopy(Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;)Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskInfo"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 191
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 192
    :try_start_1
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 193
    :try_start_2
    invoke-virtual {v2, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 194
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V

    .line 196
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 197
    :try_start_3
    new-instance v4, Ljava/io/ObjectInputStream;

    invoke-direct {v4, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    :try_start_4
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netease/lava/nertc/sdk/live/NERtcLiveStreamTaskInfo;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 202
    invoke-static {v2}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    invoke-static {v3}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v4}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception p0

    move-object v4, v0

    goto/16 :goto_2

    :catch_1
    move-exception v4

    move-object v8, v4

    move-object v4, v0

    move-object v0, v8

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v3, v0

    move-object v4, v3

    goto :goto_2

    :catch_2
    move-exception v3

    move-object v4, v0

    move-object v0, v3

    move-object v3, v4

    goto :goto_1

    :catchall_2
    move-exception p0

    move-object v3, v0

    goto :goto_0

    :catch_3
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    move-object v0, v2

    move-object v2, v4

    goto :goto_1

    :catchall_3
    move-exception p0

    move-object v1, v0

    move-object v3, v1

    :goto_0
    move-object v4, v3

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    move-object v0, v1

    move-object v1, v4

    :goto_1
    :try_start_5
    const-string v5, "NERtcLiveStreamTaskInfo"

    .line 200
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deepCopy exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/netease/lava/webrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 202
    invoke-static {v2}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    invoke-static {v3}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v4}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p0

    :catchall_4
    move-exception p0

    :goto_2
    move-object v0, v2

    .line 202
    :goto_3
    invoke-static {v0}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 203
    invoke-static {v1}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 204
    invoke-static {v3}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 205
    invoke-static {v4}, Lcom/netease/yunxin/lite/util/FileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 206
    throw p0
.end method

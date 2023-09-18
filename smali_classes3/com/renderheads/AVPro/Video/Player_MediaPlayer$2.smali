.class public Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;
.super Ljava/lang/Object;
.source "Player_MediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->OpenVideoFromFileInternal(Ljava/lang/String;JLjava/lang/String;III)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

.field public final synthetic val$fileOffset:J

.field public final synthetic val$filePath:Ljava/lang/String;

.field public final synthetic val$httpHeader:Ljava/lang/String;

.field public final synthetic val$thisPlayer:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;


# direct methods
.method public constructor <init>(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Ljava/lang/String;Ljava/lang/String;JLcom/renderheads/AVPro/Video/Player_MediaPlayer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$thisPlayer",
            "val$fileOffset",
            "val$httpHeader",
            "val$filePath"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iput-object p2, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$httpHeader:Ljava/lang/String;

    iput-wide p4, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    iput-object p6, p0, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$thisPlayer:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 19

    move-object/from16 v1, p0

    const-string v2, "file:/"

    .line 1
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$102(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;[Landroid/media/MediaPlayer$TrackInfo;)[Landroid/media/MediaPlayer$TrackInfo;

    .line 3
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$202(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;J)J

    .line 4
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    const/4 v6, 0x0

    invoke-static {v0, v6}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$302(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Z)Z

    const/4 v7, -0x1

    .line 9
    :try_start_0
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v9, "http://"

    .line 10
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "https://"

    .line 11
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "rtmp://"

    .line 12
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_8

    const-string v9, "rtsp://"

    .line 13
    invoke-virtual {v0, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 37
    :cond_0
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$filePath:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x6

    if-eqz v9, :cond_1

    .line 40
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    :cond_1
    move-object v9, v0

    :try_start_1
    const-string v0, ".obb!/"

    .line 46
    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v7, :cond_2

    const/16 v11, 0xb

    add-int/2addr v0, v10

    add-int/lit8 v10, v0, -0x2

    .line 49
    invoke-virtual {v9, v11, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 50
    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v11, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-wide v12, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    invoke-static {v11, v10, v0, v12, v13}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$400(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_7

    .line 60
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v10, "Not an obb file"

    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    const/16 v10, 0xf

    :try_start_2
    const-string v0, "/assets/"

    .line 71
    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v11, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-object v11, v11, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    invoke-virtual {v11, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 77
    iget-object v11, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v11}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v12

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    iget-wide v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    add-long/2addr v14, v6

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v18, v9

    :try_start_3
    iget-wide v8, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    sub-long v16, v6, v8

    invoke-virtual/range {v12 .. v17}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 82
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v10, :cond_a

    .line 84
    iget-object v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static {v6, v7}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 87
    :try_start_4
    iget-object v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v6}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;

    move-result-object v12

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    add-long v14, v6, v8

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    sub-long v16, v6, v8

    invoke-virtual/range {v12 .. v17}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_7

    .line 91
    :catch_1
    :try_start_5
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 92
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0, v3}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_7

    :catch_2
    move-object/from16 v18, v9

    .line 103
    :catch_3
    :try_start_6
    iget-wide v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    cmp-long v0, v6, v4

    if-nez v0, :cond_5

    .line 109
    :try_start_7
    new-instance v4, Ljava/io/FileInputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v5, v18

    :try_start_8
    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 110
    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 112
    iget-object v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v6}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 117
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v10, :cond_3

    .line 119
    iget-object v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static {v6, v7}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 122
    :try_start_a
    iget-object v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v6}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_0

    .line 126
    :catch_4
    :try_start_b
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 127
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0, v3}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 135
    :cond_3
    :goto_0
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object/from16 v5, v18

    :goto_1
    move-object v4, v3

    :goto_2
    if-eqz v4, :cond_4

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 137
    :cond_4
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    :cond_5
    move-object/from16 v5, v18

    .line 145
    :try_start_d
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 146
    :try_start_e
    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 148
    iget-object v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v6}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v12

    iget-wide v14, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    sub-long v16, v6, v8

    move-object v13, v0

    invoke-virtual/range {v12 .. v17}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 153
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v6, v10, :cond_6

    .line 155
    iget-object v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    new-instance v7, Landroid/media/MediaExtractor;

    invoke-direct {v7}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static {v6, v7}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 158
    :try_start_f
    iget-object v6, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v6}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;

    move-result-object v12

    iget-wide v14, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    iget-wide v8, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$fileOffset:J

    sub-long v16, v6, v8

    move-object v13, v0

    invoke-virtual/range {v12 .. v17}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    goto :goto_3

    .line 162
    :catch_5
    :try_start_10
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 163
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0, v3}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 171
    :cond_6
    :goto_3
    :try_start_11
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto/16 :goto_7

    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v4, v3

    :goto_4
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 173
    :cond_7
    throw v0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :catch_6
    move-object/from16 v5, v18

    .line 181
    :catch_7
    :try_start_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 182
    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v2}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v2

    iget-object v4, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-object v4, v4, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-virtual {v2, v4, v0}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 187
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v2, v10, :cond_a

    .line 189
    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    new-instance v4, Landroid/media/MediaExtractor;

    invoke-direct {v4}, Landroid/media/MediaExtractor;-><init>()V

    invoke-static {v2, v4}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    .line 192
    :try_start_13
    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v2}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;

    move-result-object v2

    iget-object v4, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-object v4, v4, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    invoke-virtual {v2, v4, v0, v3}, Landroid/media/MediaExtractor;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8

    goto :goto_7

    .line 196
    :catch_8
    :try_start_14
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$500(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaExtractor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaExtractor;->release()V

    .line 197
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0, v3}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$502(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;Landroid/media/MediaExtractor;)Landroid/media/MediaExtractor;

    goto :goto_7

    .line 198
    :cond_8
    :goto_5
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$httpHeader:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 200
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-object v2, v2, Lcom/renderheads/AVPro/Video/Player_Base;->m_Context:Landroid/content/Context;

    iget-object v3, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$filePath:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-object v5, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$httpHeader:Ljava/lang/String;

    iget-object v6, v4, Lcom/renderheads/AVPro/Video/Player_Base;->m_KeyServerAuthToken:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/renderheads/AVPro/Video/Player_Base;->GetStringAsMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    goto :goto_6

    .line 207
    :cond_9
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$filePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 212
    :goto_6
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsStream:Z
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_9

    :cond_a
    :goto_7
    const/4 v6, 0x1

    goto :goto_8

    :catch_9
    move-exception v0

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to open video file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v6, 0x0

    :goto_8
    if-eqz v6, :cond_b

    .line 393
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$thisPlayer:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 394
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$thisPlayer:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 395
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$thisPlayer:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 396
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$thisPlayer:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 397
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$thisPlayer:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 398
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->val$thisPlayer:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 399
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    iget-object v2, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-boolean v2, v2, Lcom/renderheads/AVPro/Video/Player_Base;->m_bLooping:Z

    invoke-virtual {v0, v2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 405
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    const/4 v2, 0x2

    iput v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_VideoState:I

    const/4 v2, 0x1

    .line 406
    iput-boolean v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_bIsBuffering:Z

    .line 408
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    invoke-static {v0}, Lcom/renderheads/AVPro/Video/Player_MediaPlayer;->access$000(Lcom/renderheads/AVPro/Video/Player_MediaPlayer;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    goto :goto_9

    .line 412
    :cond_b
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    const/16 v2, 0x64

    iput v2, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iLastError:I

    .line 424
    :goto_9
    iget-object v0, v1, Lcom/renderheads/AVPro/Video/Player_MediaPlayer$2;->this$0:Lcom/renderheads/AVPro/Video/Player_MediaPlayer;

    iget-object v0, v0, Lcom/renderheads/AVPro/Video/Player_Base;->m_iCurrentOpenCloseCommand:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

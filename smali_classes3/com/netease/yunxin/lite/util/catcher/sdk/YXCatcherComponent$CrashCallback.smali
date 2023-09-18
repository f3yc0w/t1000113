.class public interface abstract Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent$CrashCallback;
.super Ljava/lang/Object;
.source "YXCatcherComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/yunxin/lite/util/catcher/sdk/YXCatcherComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CrashCallback"
.end annotation


# virtual methods
.method public abstract onCrash(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;JLjava/util/HashMap;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "md5",
            "crashLogFile",
            "sdkLogDir",
            "time",
            "extraInfo",
            "isOldCrash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

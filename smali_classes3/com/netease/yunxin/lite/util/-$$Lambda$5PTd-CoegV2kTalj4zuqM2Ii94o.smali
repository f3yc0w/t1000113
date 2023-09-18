.class public final synthetic Lcom/netease/yunxin/lite/util/-$$Lambda$5PTd-CoegV2kTalj4zuqM2Ii94o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/netease/yunxin/lite/util/ThreadUtils$BlockingOperation;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$5PTd-CoegV2kTalj4zuqM2Ii94o;->f$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/netease/yunxin/lite/util/-$$Lambda$5PTd-CoegV2kTalj4zuqM2Ii94o;->f$0:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    return-void
.end method

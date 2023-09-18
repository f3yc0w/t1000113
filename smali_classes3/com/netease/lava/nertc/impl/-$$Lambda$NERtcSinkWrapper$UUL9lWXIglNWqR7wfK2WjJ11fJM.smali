.class public final synthetic Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$UUL9lWXIglNWqR7wfK2WjJ11fJM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$UUL9lWXIglNWqR7wfK2WjJ11fJM;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iput-wide p2, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$UUL9lWXIglNWqR7wfK2WjJ11fJM;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$UUL9lWXIglNWqR7wfK2WjJ11fJM;->f$0:Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;

    iget-wide v1, p0, Lcom/netease/lava/nertc/impl/-$$Lambda$NERtcSinkWrapper$UUL9lWXIglNWqR7wfK2WjJ11fJM;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/netease/lava/nertc/impl/NERtcSinkWrapper;->lambda$onUserDataStart$101$NERtcSinkWrapper(J)V

    return-void
.end method

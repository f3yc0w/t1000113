.class public final synthetic Lcom/facebook/appevents/-$$Lambda$UserDataStore$XjYgC0V4vt2Qm77HyA8PYKQnhKE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/appevents/-$$Lambda$UserDataStore$XjYgC0V4vt2Qm77HyA8PYKQnhKE;->f$0:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/facebook/appevents/-$$Lambda$UserDataStore$XjYgC0V4vt2Qm77HyA8PYKQnhKE;->f$0:Landroid/os/Bundle;

    invoke-static {v0}, Lcom/facebook/appevents/UserDataStore;->lambda$XjYgC0V4vt2Qm77HyA8PYKQnhKE(Landroid/os/Bundle;)V

    return-void
.end method

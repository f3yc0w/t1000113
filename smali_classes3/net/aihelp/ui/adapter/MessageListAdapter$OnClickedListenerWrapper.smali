.class public Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"

# interfaces
.implements Lnet/aihelp/ui/adapter/MessageListAdapter$OnTextClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/adapter/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnClickedListenerWrapper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBotAnswerSelected(Lnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 0

    return-void
.end method

.method public onRetrySendingMessage(ILnet/aihelp/data/model/rpa/RPAMessage;)V
    .locals 0

    return-void
.end method

.method public onUrlClicked(ZLjava/lang/String;)V
    .locals 0

    return-void
.end method

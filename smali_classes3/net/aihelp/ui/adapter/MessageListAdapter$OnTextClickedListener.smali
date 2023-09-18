.class interface abstract Lnet/aihelp/ui/adapter/MessageListAdapter$OnTextClickedListener;
.super Ljava/lang/Object;
.source "MessageListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/aihelp/ui/adapter/MessageListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "OnTextClickedListener"
.end annotation


# virtual methods
.method public abstract onBotAnswerSelected(Lnet/aihelp/data/model/rpa/RPAMessage;)V
.end method

.method public abstract onRetrySendingMessage(ILnet/aihelp/data/model/rpa/RPAMessage;)V
.end method

.method public abstract onUrlClicked(ZLjava/lang/String;)V
.end method

.class Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;
.super Landroid/text/style/ClickableSpan;
.source "BaseMsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->getUrlSupportedText(Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

.field final synthetic val$urlColor:Ljava/lang/String;

.field final synthetic val$urlStr:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iput-object p2, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$urlStr:Ljava/lang/String;

    iput-object p3, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$urlColor:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 156
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$urlStr:Ljava/lang/String;

    invoke-static {p1, v0}, Lnet/aihelp/utils/AppInfoUtil;->isUrlStillNeedResponding(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    if-eqz p1, :cond_0

    .line 158
    iget-object p1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->this$0:Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;

    iget-object p1, p1, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter;->mWrapper:Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;

    const/4 v0, 0x0

    iget-object v1, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$urlStr:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lnet/aihelp/ui/adapter/MessageListAdapter$OnClickedListenerWrapper;->onUrlClicked(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lnet/aihelp/ui/adapter/cs/BaseMsgAdapter$3;->val$urlColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    return-void
.end method

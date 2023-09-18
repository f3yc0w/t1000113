.class Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;
.super Lnet/aihelp/core/net/http/callback/UploadCallback;
.source "BottomAttachmentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->uploadVideo(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/aihelp/core/net/http/callback/UploadCallback<",
        "Lnet/aihelp/data/model/init/UploadEntity$VideoResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

.field final synthetic val$videoMessage:Lnet/aihelp/data/model/rpa/MediaMessage;


# direct methods
.method constructor <init>(Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;Lnet/aihelp/data/model/rpa/MediaMessage;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->this$0:Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

    iput-object p2, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->val$videoMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    invoke-direct {p0}, Lnet/aihelp/core/net/http/callback/UploadCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onReqSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 153
    check-cast p1, Lnet/aihelp/data/model/init/UploadEntity$VideoResult;

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->onReqSuccess(Lnet/aihelp/data/model/init/UploadEntity$VideoResult;)V

    return-void
.end method

.method public onReqSuccess(Lnet/aihelp/data/model/init/UploadEntity$VideoResult;)V
    .locals 4

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/UploadEntity$VideoResult;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->this$0:Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

    iget-object v0, v0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/UploadEntity$VideoResult;->getData()Ljava/lang/String;

    move-result-object p1

    .line 159
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->val$videoMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setMsgStatus(I)V

    .line 160
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->val$videoMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    iget-object v2, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->this$0:Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

    iget-object v2, v2, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->bundle:Landroid/os/Bundle;

    const-string v3, "bottom_during_procedure"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setDuringRPAProcedure(Z)V

    .line 161
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->val$videoMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    const/4 v1, 0x4

    invoke-static {p1, v1}, Lnet/aihelp/data/model/rpa/UserMessage;->getRequestParams(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setRequestParams(Lorg/json/JSONObject;)V

    .line 162
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->this$0:Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;

    iget-object p1, p1, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;->val$videoMessage:Lnet/aihelp/data/model/rpa/MediaMessage;

    invoke-interface {p1, v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    :cond_0
    return-void
.end method

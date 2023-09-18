.class public Lnet/aihelp/ui/cs/bottom/BottomManualInputView;
.super Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;
.source "BottomManualInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;


# instance fields
.field private ivAttach:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;-><init>(Landroid/content/Context;)V

    .line 26
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->removeAllViews()V

    const-string v0, "aihelp_bottom_input_for_manual"

    .line 28
    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_iv_attach"

    .line 29
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->ivAttach:Landroid/widget/ImageView;

    .line 30
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->ivAttach:Landroid/widget/ImageView;

    const-string v0, "aihelp_svg_ic_attach"

    invoke-static {p1, v0}, Lnet/aihelp/utils/Styles;->reRenderImageView(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->prepareInputView()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 38
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->onClick(Landroid/view/View;)V

    .line 39
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v2, "aihelp_btn_send"

    invoke-static {v2}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 40
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 41
    invoke-static {}, Lnet/aihelp/ui/helper/StatisticHelper;->whenSendButtonClicked()V

    .line 42
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lnet/aihelp/data/model/rpa/RPAMessage;->getUserTextMsg(Ljava/lang/String;)Lnet/aihelp/data/model/rpa/UserMessage;

    move-result-object v2

    .line 44
    invoke-virtual {v2, v1}, Lnet/aihelp/data/model/rpa/UserMessage;->setDuringRPAProcedure(Z)V

    const/4 v3, 0x1

    .line 45
    invoke-virtual {v2, v0, v3}, Lnet/aihelp/data/model/rpa/UserMessage;->setRequestParams(Ljava/lang/String;I)V

    .line 46
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {v0, v2}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    .line 47
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->etInput:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :cond_0
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_iv_attach"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 51
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->getHostFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 53
    invoke-static {}, Lnet/aihelp/ui/helper/AttachmentPicker;->getInstance()Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/helper/AttachmentPicker;->setPickerHost(Landroidx/fragment/app/Fragment;)Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p1

    .line 54
    invoke-virtual {p1, p0}, Lnet/aihelp/ui/helper/AttachmentPicker;->setAttachmentPickerListener(Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;)Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/aihelp/ui/helper/AttachmentPicker;->launchImagePicker(Z)V

    :cond_1
    return-void
.end method

.method public onPickSuccess(Lnet/aihelp/ui/helper/AttachmentPickerFile;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomManualInputView;->bundle:Landroid/os/Bundle;

    const-string v1, "bottom_ticket_finished"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 62
    :cond_0
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->onPickSuccess(Lnet/aihelp/ui/helper/AttachmentPickerFile;)V

    return-void
.end method

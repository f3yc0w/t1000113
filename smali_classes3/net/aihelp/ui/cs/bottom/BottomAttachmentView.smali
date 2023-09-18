.class public Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;
.super Lnet/aihelp/ui/cs/bottom/BottomBaseView;
.source "BottomAttachmentView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, p2, v0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "aihelp_bottom_attachment"

    .line 45
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getLayoutId(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const-string p1, "aihelp_btn_add_attachment"

    .line 47
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "aihelp_upload_attachment"

    .line 48
    invoke-static {p2}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomBaseView;->onClick(Landroid/view/View;)V

    .line 56
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/AppInfoUtil;->validateNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string v0, "aihelp_btn_add_attachment"

    invoke-static {v0}, Lnet/aihelp/utils/ResResolver;->getViewId(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 57
    iget-object p1, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {p1}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->getHostFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 59
    invoke-static {}, Lnet/aihelp/ui/helper/AttachmentPicker;->getInstance()Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/ui/helper/AttachmentPicker;->setPickerHost(Landroidx/fragment/app/Fragment;)Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p1

    .line 60
    invoke-virtual {p1, p0}, Lnet/aihelp/ui/helper/AttachmentPicker;->setAttachmentPickerListener(Lnet/aihelp/ui/helper/AttachmentPicker$AttachmentPickerListener;)Lnet/aihelp/ui/helper/AttachmentPicker;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/aihelp/ui/helper/AttachmentPicker;->launchImagePicker(Z)V

    :cond_0
    return-void
.end method

.method public onPickFailure(ILjava/lang/Long;)V
    .locals 8

    const/4 v0, -0x5

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "aihelp_media_upload_err_size"

    .line 109
    invoke-static {p1}, Lnet/aihelp/utils/ResResolver;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/32 v0, 0x100000

    .line 111
    :try_start_0
    sget-object v2, Lnet/aihelp/utils/ToastUtil;->INSTANCE:Lnet/aihelp/utils/ToastUtil;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    div-long/2addr v6, v0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 113
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 114
    sget-object v2, Lnet/aihelp/utils/ToastUtil;->INSTANCE:Lnet/aihelp/utils/ToastUtil;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", < "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    div-long/2addr p1, v0

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "M"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 118
    :cond_1
    sget-object p1, Lnet/aihelp/utils/ToastUtil;->INSTANCE:Lnet/aihelp/utils/ToastUtil;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "Failed to get specific resource"

    invoke-virtual {p1, p2, v0}, Lnet/aihelp/utils/ToastUtil;->makeRawToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPickSuccess(Lnet/aihelp/ui/helper/AttachmentPickerFile;)V
    .locals 3

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->updateSkipStep(Lnet/aihelp/data/model/rpa/RPAStep;)V

    .line 71
    iget-object p1, p1, Lnet/aihelp/ui/helper/AttachmentPickerFile;->filePath:Ljava/lang/String;

    .line 72
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    sget-object p1, Lnet/aihelp/utils/ToastUtil;->INSTANCE:Lnet/aihelp/utils/ToastUtil;

    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "Failed to get file path."

    invoke-virtual {p1, v0, v2, v1}, Lnet/aihelp/utils/ToastUtil;->makeText(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void

    :cond_0
    const-string v0, "^/.+\\.(png|jpg|jpeg|PNG|JPG|JPEG)$"

    .line 77
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {p0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/core/util/luban/Luban;->with(Landroid/content/Context;)Lnet/aihelp/core/util/luban/Luban$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/aihelp/core/util/luban/Luban$Builder;->load(Ljava/lang/String;)Lnet/aihelp/core/util/luban/Luban$Builder;

    move-result-object v0

    new-instance v1, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;

    invoke-direct {v1, p0, p1}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$1;-><init>(Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lnet/aihelp/core/util/luban/Luban$Builder;->setCompressListener(Lnet/aihelp/core/util/luban/OnCompressListener;)Lnet/aihelp/core/util/luban/Luban$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lnet/aihelp/core/util/luban/Luban$Builder;->launch()V

    :cond_1
    const-string v0, "^/.+\\.(mp4|MP4)$"

    .line 100
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->uploadVideo(Ljava/io/File;)V

    :cond_2
    return-void
.end method

.method public uploadImage(Ljava/io/File;)V
    .locals 4

    .line 124
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 125
    new-instance v0, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/16 v1, 0xa

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/aihelp/ui/helper/BitmapHelper;->computeSize(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setImageSize([I)V

    const/4 v1, 0x2

    .line 127
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setMsgStatus(I)V

    .line 128
    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->bundle:Landroid/os/Bundle;

    const/4 v2, 0x1

    const-string v3, "bottom_during_procedure"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setDuringRPAProcedure(Z)V

    .line 129
    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {v1, v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    .line 131
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/API;->UPLOAD_URL:Ljava/lang/String;

    new-instance v3, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$2;

    invoke-direct {v3, p0, v0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$2;-><init>(Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;Lnet/aihelp/data/model/rpa/MediaMessage;)V

    invoke-virtual {v1, v2, p1, v3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestUpLoadFile(Ljava/lang/String;Ljava/io/File;Lnet/aihelp/core/net/http/callback/UploadCallback;)Lokhttp3/Call;

    :cond_0
    return-void
.end method

.method public uploadVideo(Ljava/io/File;)V
    .locals 4

    .line 147
    iget-object v0, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    if-eqz v0, :cond_0

    .line 148
    new-instance v0, Lnet/aihelp/data/model/rpa/MediaMessage;

    const/16 v1, 0xb

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/model/rpa/MediaMessage;-><init>(ILjava/lang/String;)V

    const/4 v1, 0x2

    .line 149
    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setMsgStatus(I)V

    .line 150
    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->bundle:Landroid/os/Bundle;

    const/4 v2, 0x1

    const-string v3, "bottom_during_procedure"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/aihelp/data/model/rpa/MediaMessage;->setDuringRPAProcedure(Z)V

    .line 151
    iget-object v1, p0, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;->mListener:Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;

    invoke-interface {v1, v0}, Lnet/aihelp/ui/cs/bottom/IBottomViewEventListener;->onUserAction(Lnet/aihelp/data/model/rpa/RPAMessage;)V

    .line 153
    invoke-static {}, Lnet/aihelp/core/net/http/AIHelpRequest;->getInstance()Lnet/aihelp/core/net/http/AIHelpRequest;

    move-result-object v1

    sget-object v2, Lnet/aihelp/common/API;->UPLOAD_VIDEO_URL:Ljava/lang/String;

    new-instance v3, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;

    invoke-direct {v3, p0, v0}, Lnet/aihelp/ui/cs/bottom/BottomAttachmentView$3;-><init>(Lnet/aihelp/ui/cs/bottom/BottomAttachmentView;Lnet/aihelp/data/model/rpa/MediaMessage;)V

    invoke-virtual {v1, v2, p1, v3}, Lnet/aihelp/core/net/http/AIHelpRequest;->requestUpLoadFile(Ljava/lang/String;Ljava/io/File;Lnet/aihelp/core/net/http/callback/UploadCallback;)Lokhttp3/Call;

    :cond_0
    return-void
.end method

.class public Lnet/aihelp/data/model/init/InitEntity;
.super Ljava/lang/Object;
.source "InitEntity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;
    }
.end annotation


# instance fields
.field private cdnUrl:Ljava/lang/String;

.field private configBusiness:Ljava/lang/String;

.field private configFaq:Ljava/lang/String;

.field private configFileName:Ljava/lang/String;

.field private configProcess:Ljava/lang/String;

.field private configStyle:Ljava/lang/String;

.field private configText:Ljava/lang/String;

.field private correctLanguage:Ljava/lang/String;

.field private customInformation:Lnet/aihelp/data/model/init/PrivacyControlEntity;

.field private distinguishUserByDevice:Z

.field private faqAimlFileName:Ljava/lang/String;

.field private faqFileName:Ljava/lang/String;

.field private faqYYdata:Ljava/lang/String;

.field private faqdata:Ljava/lang/String;

.field private faqdataForm:Ljava/lang/String;

.field private initPeriod:I

.field private isLocalizeFAQViaInit:Z

.field private isOpenPushServer:Z

.field private isOpenUploadLogFile:Z

.field private isOpenVideoUpload:Z

.field private isSetCrmToken:Z

.field private isTranslates:Z

.field private isUnreadMessage:Z

.field private localeFile:Ljava/lang/String;

.field private networkCheckSetting:Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;

.field private operateFileName:Ljava/lang/String;

.field private point:Ljava/lang/String;

.field private pushServer:Ljava/lang/String;

.field private requestLimit:I

.field private satisfyFeedback:Ljava/lang/String;

.field private showfaq:Ljava/lang/String;

.field private storyAimlFileName:Ljava/lang/String;

.field private svrip:Ljava/lang/String;

.field private svrport:Ljava/lang/String;

.field private tls:Z

.field private topic:Ljava/lang/String;

.field private unreadMessageTime:I

.field private upload:Ljava/lang/String;

.field private uploadLog:Ljava/lang/String;

.field private uploadVideo:Ljava/lang/String;

.field private videoUploadSizeLimit:I

.field private vipChatDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lnet/aihelp/data/model/init/InitEntity;->requestLimit:I

    return-void
.end method


# virtual methods
.method public getCdnUrl()Ljava/lang/String;
    .locals 1

    .line 369
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->cdnUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigBusiness()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->configBusiness:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigFaq()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->configFaq:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigFileName()Ljava/lang/String;
    .locals 1

    .line 169
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->configFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigProcess()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->configProcess:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigStyle()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->configStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getConfigText()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->configText:Ljava/lang/String;

    return-object v0
.end method

.method public getCorrectLanguage()Ljava/lang/String;
    .locals 1

    .line 161
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->correctLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomInformation()Lnet/aihelp/data/model/init/PrivacyControlEntity;
    .locals 1

    .line 257
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->customInformation:Lnet/aihelp/data/model/init/PrivacyControlEntity;

    return-object v0
.end method

.method public getFaqAimlFileName()Ljava/lang/String;
    .locals 1

    .line 377
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->faqAimlFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqFileName()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->faqFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqYYdata()Ljava/lang/String;
    .locals 1

    .line 353
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->faqYYdata:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqdata()Ljava/lang/String;
    .locals 1

    .line 345
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->faqdata:Ljava/lang/String;

    return-object v0
.end method

.method public getFaqdataForm()Ljava/lang/String;
    .locals 1

    .line 361
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->faqdataForm:Ljava/lang/String;

    return-object v0
.end method

.method public getInitPeriod()I
    .locals 1

    .line 249
    iget v0, p0, Lnet/aihelp/data/model/init/InitEntity;->initPeriod:I

    return v0
.end method

.method public getLocaleFile()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->localeFile:Ljava/lang/String;

    return-object v0
.end method

.method public getNetworkCheckSetting()Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;
    .locals 1

    .line 265
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->networkCheckSetting:Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;

    return-object v0
.end method

.method public getOperateFileName()Ljava/lang/String;
    .locals 1

    .line 401
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->operateFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getPoint()Ljava/lang/String;
    .locals 1

    .line 337
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->point:Ljava/lang/String;

    return-object v0
.end method

.method public getPushServer()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->pushServer:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestLimit()I
    .locals 1

    .line 185
    iget v0, p0, Lnet/aihelp/data/model/init/InitEntity;->requestLimit:I

    return v0
.end method

.method public getSatisfyFeedback()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->satisfyFeedback:Ljava/lang/String;

    return-object v0
.end method

.method public getShowfaq()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->showfaq:Ljava/lang/String;

    return-object v0
.end method

.method public getStoryAimlFileName()Ljava/lang/String;
    .locals 1

    .line 385
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->storyAimlFileName:Ljava/lang/String;

    return-object v0
.end method

.method public getSvrip()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->svrip:Ljava/lang/String;

    return-object v0
.end method

.method public getSvrport()Ljava/lang/String;
    .locals 1

    .line 281
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->svrport:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public getUnreadMessageTime()I
    .locals 1

    .line 233
    iget v0, p0, Lnet/aihelp/data/model/init/InitEntity;->unreadMessageTime:I

    return v0
.end method

.method public getUpload()Ljava/lang/String;
    .locals 1

    .line 313
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->upload:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadLog()Ljava/lang/String;
    .locals 1

    .line 329
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->uploadLog:Ljava/lang/String;

    return-object v0
.end method

.method public getUploadVideo()Ljava/lang/String;
    .locals 1

    .line 321
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->uploadVideo:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoUploadSizeLimit()I
    .locals 1

    .line 241
    iget v0, p0, Lnet/aihelp/data/model/init/InitEntity;->videoUploadSizeLimit:I

    return v0
.end method

.method public getVipChatDomain()Ljava/lang/String;
    .locals 1

    .line 289
    iget-object v0, p0, Lnet/aihelp/data/model/init/InitEntity;->vipChatDomain:Ljava/lang/String;

    return-object v0
.end method

.method public isDistinguishUserByDevice()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->distinguishUserByDevice:Z

    return v0
.end method

.method public isLocalizeFAQViaInit()Z
    .locals 1

    .line 177
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->isLocalizeFAQViaInit:Z

    return v0
.end method

.method public isOpenPushServer()Z
    .locals 1

    .line 225
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->isOpenPushServer:Z

    return v0
.end method

.method public isOpenUploadLogFile()Z
    .locals 1

    .line 209
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->isOpenUploadLogFile:Z

    return v0
.end method

.method public isOpenVideoUpload()Z
    .locals 1

    .line 193
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->isOpenVideoUpload:Z

    return v0
.end method

.method public isSetCrmToken()Z
    .locals 1

    .line 201
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->isSetCrmToken:Z

    return v0
.end method

.method public isTls()Z
    .locals 1

    .line 153
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->tls:Z

    return v0
.end method

.method public isTranslates()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->isTranslates:Z

    return v0
.end method

.method public isUnreadMessage()Z
    .locals 1

    .line 217
    iget-boolean v0, p0, Lnet/aihelp/data/model/init/InitEntity;->isUnreadMessage:Z

    return v0
.end method

.method public setCdnUrl(Ljava/lang/String;)V
    .locals 0

    .line 373
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->cdnUrl:Ljava/lang/String;

    return-void
.end method

.method public setConfigBusiness(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->configBusiness:Ljava/lang/String;

    return-void
.end method

.method public setConfigFaq(Ljava/lang/String;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->configFaq:Ljava/lang/String;

    return-void
.end method

.method public setConfigFileName(Ljava/lang/String;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->configFileName:Ljava/lang/String;

    return-void
.end method

.method public setConfigProcess(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->configProcess:Ljava/lang/String;

    return-void
.end method

.method public setConfigStyle(Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->configStyle:Ljava/lang/String;

    return-void
.end method

.method public setConfigText(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->configText:Ljava/lang/String;

    return-void
.end method

.method public setCorrectLanguage(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->correctLanguage:Ljava/lang/String;

    return-void
.end method

.method public setCustomInformation(Lnet/aihelp/data/model/init/PrivacyControlEntity;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->customInformation:Lnet/aihelp/data/model/init/PrivacyControlEntity;

    return-void
.end method

.method public setDistinguishUserByDevice(Z)V
    .locals 0

    .line 85
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->distinguishUserByDevice:Z

    return-void
.end method

.method public setFaqAimlFileName(Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->faqAimlFileName:Ljava/lang/String;

    return-void
.end method

.method public setFaqFileName(Ljava/lang/String;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->faqFileName:Ljava/lang/String;

    return-void
.end method

.method public setFaqYYdata(Ljava/lang/String;)V
    .locals 0

    .line 357
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->faqYYdata:Ljava/lang/String;

    return-void
.end method

.method public setFaqdata(Ljava/lang/String;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->faqdata:Ljava/lang/String;

    return-void
.end method

.method public setFaqdataForm(Ljava/lang/String;)V
    .locals 0

    .line 365
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->faqdataForm:Ljava/lang/String;

    return-void
.end method

.method public setInitPeriod(I)V
    .locals 0

    .line 253
    iput p1, p0, Lnet/aihelp/data/model/init/InitEntity;->initPeriod:I

    return-void
.end method

.method public setLocaleFile(Ljava/lang/String;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->localeFile:Ljava/lang/String;

    return-void
.end method

.method public setLocalizeFAQViaInit(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->isLocalizeFAQViaInit:Z

    return-void
.end method

.method public setNetworkCheckSetting(Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->networkCheckSetting:Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;

    return-void
.end method

.method public setOpenPushServer(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->isOpenPushServer:Z

    return-void
.end method

.method public setOpenUploadLogFile(Z)V
    .locals 0

    .line 213
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->isOpenUploadLogFile:Z

    return-void
.end method

.method public setOpenVideoUpload(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->isOpenVideoUpload:Z

    return-void
.end method

.method public setOperateFileName(Ljava/lang/String;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->operateFileName:Ljava/lang/String;

    return-void
.end method

.method public setPoint(Ljava/lang/String;)V
    .locals 0

    .line 341
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->point:Ljava/lang/String;

    return-void
.end method

.method public setPushServer(Ljava/lang/String;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->pushServer:Ljava/lang/String;

    return-void
.end method

.method public setRequestLimit(I)V
    .locals 0

    .line 189
    iput p1, p0, Lnet/aihelp/data/model/init/InitEntity;->requestLimit:I

    return-void
.end method

.method public setSatisfyFeedback(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->satisfyFeedback:Ljava/lang/String;

    return-void
.end method

.method public setSetCrmToken(Z)V
    .locals 0

    .line 205
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->isSetCrmToken:Z

    return-void
.end method

.method public setShowfaq(Ljava/lang/String;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->showfaq:Ljava/lang/String;

    return-void
.end method

.method public setStoryAimlFileName(Ljava/lang/String;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->storyAimlFileName:Ljava/lang/String;

    return-void
.end method

.method public setSvrip(Ljava/lang/String;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->svrip:Ljava/lang/String;

    return-void
.end method

.method public setSvrport(Ljava/lang/String;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->svrport:Ljava/lang/String;

    return-void
.end method

.method public setTls(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->tls:Z

    return-void
.end method

.method public setTopic(Ljava/lang/String;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->topic:Ljava/lang/String;

    return-void
.end method

.method public setTranslates(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->isTranslates:Z

    return-void
.end method

.method public setUnreadMessage(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Lnet/aihelp/data/model/init/InitEntity;->isUnreadMessage:Z

    return-void
.end method

.method public setUnreadMessageTime(I)V
    .locals 0

    .line 237
    iput p1, p0, Lnet/aihelp/data/model/init/InitEntity;->unreadMessageTime:I

    return-void
.end method

.method public setUpload(Ljava/lang/String;)V
    .locals 0

    .line 317
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->upload:Ljava/lang/String;

    return-void
.end method

.method public setUploadLog(Ljava/lang/String;)V
    .locals 0

    .line 333
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->uploadLog:Ljava/lang/String;

    return-void
.end method

.method public setUploadVideo(Ljava/lang/String;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->uploadVideo:Ljava/lang/String;

    return-void
.end method

.method public setVideoUploadSizeLimit(I)V
    .locals 0

    .line 245
    iput p1, p0, Lnet/aihelp/data/model/init/InitEntity;->videoUploadSizeLimit:I

    return-void
.end method

.method public setVipChatDomain(Ljava/lang/String;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lnet/aihelp/data/model/init/InitEntity;->vipChatDomain:Ljava/lang/String;

    return-void
.end method

.class public Lnet/aihelp/data/local/InitRepository;
.super Lnet/aihelp/core/mvp/AbsRepository;
.source "InitRepository.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lnet/aihelp/core/mvp/AbsRepository;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public prepareInitData(Lnet/aihelp/data/model/init/InitEntity;Ljava/lang/String;J)V
    .locals 7

    .line 33
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getRequestLimit()I

    move-result v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 34
    sget-object v3, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s_%s_"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "init_limit"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Lnet/aihelp/data/local/InitRepository;->doSave(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "init_response"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lnet/aihelp/data/local/InitRepository;->doSave(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "init_timestamp"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-virtual {p0, p2, p3}, Lnet/aihelp/data/local/InitRepository;->doSave(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getCdnUrl()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->CDN_URL:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getFaqdata()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->FAQ_URL:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getFaqYYdata()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->OP_URL:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getUpload()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->UPLOAD_URL:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getUploadVideo()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->UPLOAD_VIDEO_URL:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getUploadLog()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->UPLOAD_FILE_URL:Ljava/lang/String;

    .line 45
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getShowfaq()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->M_FAQ_URL:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getPoint()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->LOG_COUNT_URL:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getLocaleFile()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->LOCALE_FILE_URL:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getConfigStyle()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->CONFIG_STYLE_SHEET_URL:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getConfigBusiness()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->CONFIG_BUSINESS_LOGIC_URL:Ljava/lang/String;

    .line 52
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getSatisfyFeedback()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->CONFIG_OPINION_URL:Ljava/lang/String;

    .line 53
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getConfigFaq()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->CONFIG_FAQ_HOT_TOPIC_URL:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getConfigProcess()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->CONFIG_PROCESS_URL:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getConfigText()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->CONFIG_TEXT_URL:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getSvrip()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->MQTT_IP:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getSvrport()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->MQTT_PORT:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getTopic()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/API;->MQTT_TOPIC:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getPushServer()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 61
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getPushServer()Ljava/lang/String;

    move-result-object p2

    const-string p3, ":"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 62
    array-length p3, p2

    if-ne p3, v1, :cond_1

    .line 63
    aget-object p3, p2, v4

    sput-object p3, Lnet/aihelp/common/API;->MQTT_FAQ_IP:Ljava/lang/String;

    .line 64
    aget-object p2, p2, v5

    sput-object p2, Lnet/aihelp/common/API;->MQTT_FAQ_PORT:Ljava/lang/String;

    .line 68
    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isOpenVideoUpload()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_UPLOAD_VIDEO:Z

    .line 69
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isSetCrmToken()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_CRM_TOKEN:Z

    .line 70
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isOpenPushServer()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_OPEN_FAQ_NOTIFICATION:Z

    .line 71
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isUnreadMessage()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_OPEN_UNREAD_MSG:Z

    .line 72
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isOpenUploadLogFile()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_UPLOAD_LOG:Z

    .line 73
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isLocalizeFAQViaInit()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_LOCALIZE_VIA_INIT:Z

    .line 74
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isTls()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_MQTT_TLS:Z

    .line 75
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isTranslates()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_TRANSLATE_CS_MESSAGE:Z

    .line 76
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->isDistinguishUserByDevice()Z

    move-result p2

    sput-boolean p2, Lnet/aihelp/common/Const;->TOGGLE_DISTINGUISH_USER_BY_DEVICE:Z

    .line 78
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getFaqFileName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/Const;->FAQ_FILE:Ljava/lang/String;

    .line 79
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getStoryAimlFileName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/Const;->STORY_FILE:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getOperateFileName()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/Const;->OP_FILE:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getUnreadMessageTime()I

    move-result p2

    sput p2, Lnet/aihelp/common/Const;->LIMIT_CHECKING_UNREAD:I

    .line 82
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getVideoUploadSizeLimit()I

    move-result p2

    sput p2, Lnet/aihelp/common/Const;->LIMIT_UPLOADING_VIDEO:I

    .line 83
    iget-object p2, p0, Lnet/aihelp/data/local/InitRepository;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lnet/aihelp/utils/AppInfoUtil;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/Const;->APP_SHOW_NAME:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getCorrectLanguage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 86
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getCorrectLanguage()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    .line 89
    :cond_2
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getNetworkCheckSetting()Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 90
    sput-boolean v5, Lnet/aihelp/common/Const;->TOGGLE_NET_CHECK:Z

    .line 91
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getNetworkCheckSetting()Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;

    move-result-object p2

    invoke-virtual {p2}, Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;->getTraceroute()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lnet/aihelp/common/Const;->NET_TRACE_ROUTE:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity;->getNetworkCheckSetting()Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/data/model/init/InitEntity$NetworkCheckSettingBean;->getPing()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/Const;->NET_PING:Ljava/lang/String;

    .line 95
    :cond_3
    iget-object p1, p0, Lnet/aihelp/data/local/InitRepository;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/data/localize/LocalizeHelper;->goFetchLocalizeData(Landroid/content/Context;)V

    const-string p1, "AIHelp"

    const-string p2, "AIHelp is now ready to help you have conversations with your users!"

    .line 97
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public saveCrmInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crmInfo_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "%s|%s"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/aihelp/data/local/InitRepository;->doSave(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveDAULogTime(J)V
    .locals 0

    .line 28
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "sp_log_dau_time"

    invoke-virtual {p0, p2, p1}, Lnet/aihelp/data/local/InitRepository;->doSave(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public saveInitConfig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 102
    sput-object p1, Lnet/aihelp/common/Const;->APP_KEY:Ljava/lang/String;

    .line 103
    invoke-static {p2}, Lnet/aihelp/utils/DomainSupportHelper;->getCorrectDomain(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/API;->HOST_URL:Ljava/lang/String;

    .line 104
    sput-object p3, Lnet/aihelp/common/Const;->APP_ID:Ljava/lang/String;

    .line 106
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    invoke-static {p4}, Lnet/aihelp/utils/LocaleUtil;->getFormatLanguage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    .line 109
    :cond_0
    sget-object p1, Lnet/aihelp/common/Const;->ORIGINAL_LANGUAGE:Ljava/lang/String;

    sput-object p1, Lnet/aihelp/common/Const;->CORRECT_LANGUAGE:Ljava/lang/String;

    .line 113
    iget-object p1, p0, Lnet/aihelp/data/local/InitRepository;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lnet/aihelp/common/UserProfile;->resetUserProfile(Landroid/content/Context;)V

    return-void
.end method

.method public saveMqttPushInfo(Ljava/lang/String;I)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 151
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    const-string p1, "%s|%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/Const;->PUSH_INFO:Ljava/lang/String;

    return-void
.end method

.method public saveUserProfileConfig(Lnet/aihelp/config/UserConfig;)V
    .locals 3

    .line 118
    sget-boolean v0, Lnet/aihelp/common/Const;->TOGGLE_DISTINGUISH_USER_BY_DEVICE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 119
    iget-object v2, p0, Lnet/aihelp/data/local/InitRepository;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lnet/aihelp/utils/DeviceUuidFactory;->id(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s|%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/UserProfile;->USER_ID:Ljava/lang/String;

    .line 123
    :goto_0
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getUserName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/UserProfile;->USER_NAME:Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getServerId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/aihelp/common/UserProfile;->SERVER_ID:Ljava/lang/String;

    .line 125
    invoke-virtual {p1}, Lnet/aihelp/config/UserConfig;->getFormatCustomData()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/UserProfile;->CUSTOM_DATA:Ljava/lang/String;

    return-void
.end method

.method public setNetworkCheckHostAddress(Ljava/lang/String;)V
    .locals 0

    .line 143
    sput-object p1, Lnet/aihelp/common/Const;->NET_CHECK_HOST:Ljava/lang/String;

    return-void
.end method

.method public setUploadLogPath(Ljava/lang/String;)V
    .locals 0

    .line 139
    sput-object p1, Lnet/aihelp/common/Const;->LOG_UPLOAD_PATH:Ljava/lang/String;

    return-void
.end method

.method public updateConversationFields(Ljava/lang/String;)V
    .locals 0

    .line 135
    sput-object p1, Lnet/aihelp/common/Const;->CUSTOM_WELCOME_MSG:Ljava/lang/String;

    return-void
.end method

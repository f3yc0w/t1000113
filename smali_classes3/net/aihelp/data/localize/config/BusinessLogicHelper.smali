.class public final enum Lnet/aihelp/data/localize/config/BusinessLogicHelper;
.super Ljava/lang/Enum;
.source "BusinessLogicHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/aihelp/data/localize/config/BusinessLogicHelper;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/aihelp/data/localize/config/BusinessLogicHelper;

.field public static final enum INSTANCE:Lnet/aihelp/data/localize/config/BusinessLogicHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 14
    new-instance v0, Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/aihelp/data/localize/config/BusinessLogicHelper;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/aihelp/data/localize/config/BusinessLogicHelper;->INSTANCE:Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    const/4 v1, 0x1

    new-array v1, v1, [Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    aput-object v0, v1, v2

    .line 12
    sput-object v1, Lnet/aihelp/data/localize/config/BusinessLogicHelper;->$VALUES:[Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private prepareCommonConfig(Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;)V
    .locals 2

    .line 34
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->getBgOptions()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isBackgroundRenderedWithImage:Z

    .line 36
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->getFaqEvaluation()Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 37
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->getFaqEvaluation()Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isOnlineValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForBotEnable:Z

    .line 38
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->getFaqEvaluation()Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isFaqDetailValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForAnswerPageEnable:Z

    .line 39
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->getFaqEvaluation()Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isSuggestionValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isFaqUnhelpfulFeedbackEnable:Z

    .line 40
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->getFaqEvaluation()Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity$FaqEvaluationEntity;->isOperateDetailValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->isEvaluationForOperationEnable:Z

    .line 43
    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->getDirection()I

    move-result v0

    sput v0, Lnet/aihelp/common/CustomConfig$CommonSetting;->screenOrientation:I

    .line 44
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;->getInformation()Lnet/aihelp/data/model/init/PrivacyControlEntity;

    move-result-object p1

    sput-object p1, Lnet/aihelp/common/CustomConfig$CommonSetting;->privacyControlData:Lnet/aihelp/data/model/init/PrivacyControlEntity;

    return-void
.end method

.method private prepareCustomerServiceConfig(Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;)V
    .locals 1

    .line 78
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getIsNavBarTitleIconValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isCsTitleIconVisible:Z

    .line 79
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getIsHeadValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isPortraitVisible:Z

    .line 80
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getIsExternalName()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isNicknameVisible:Z

    .line 81
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getIsSendTime()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isMessageTimestampVisible:Z

    .line 82
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getHistoryTicket()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getHistoryTicket()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$HistoryTicketEntity;->getIsValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isHistoryChatEnable:Z

    .line 86
    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getSatisfied()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getSatisfied()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->isValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isTicketRatingEnable:Z

    .line 88
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getSatisfied()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->isFeedback()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$CustomerService;->isEvaluateBadServiceEnable:Z

    .line 89
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;->getSatisfied()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity$SatisfiedEntity;->getFeedbackMax()I

    move-result p1

    sput p1, Lnet/aihelp/common/CustomConfig$CustomerService;->csEvaluateMaxCount:I

    :cond_1
    return-void
.end method

.method private prepareHelpCenterConfig(Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;)V
    .locals 1

    .line 49
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getIsTitleIconValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqTitleIconVisible:Z

    .line 50
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getIsSearchValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqSearchVisible:Z

    .line 53
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getNoticeBar()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getNoticeBar()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->getIsNoticeValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqNotificationVisible:Z

    .line 55
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getNoticeBar()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->getIsNoticeIconValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqNotificationIconVisible:Z

    .line 56
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getNoticeBar()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$NoticeBarEntity;->getIntervals()I

    move-result v0

    sput v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->faqNotificationInterval:I

    .line 60
    :cond_0
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;->getIsFaqListValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqHotTopicVisible:Z

    .line 62
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;->getIsTitleValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqHotTopicTitleVisible:Z

    .line 63
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;->getIsTitleIconValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqHotTopicTitleIconVisible:Z

    .line 64
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqListEntity;->getIsFaqIconValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqHotTopicItemIconVisible:Z

    .line 68
    :cond_1
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqSectionList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqSectionList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->getIsTitleValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqSectionTitleVisible:Z

    .line 70
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqSectionList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->getIsTitleIconValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqSectionTitleIconVisible:Z

    .line 71
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqSectionList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;

    move-result-object v0

    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->getIsFaqIconValid()Z

    move-result v0

    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqSectionItemIconVisible:Z

    .line 72
    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;->getFaqSectionList()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;

    move-result-object p1

    invoke-virtual {p1}, Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity$FaqSectionListEntity;->getArrangement()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lnet/aihelp/common/CustomConfig$HelpCenter;->isFaqSectionDisplayAsList:Z

    :cond_3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/aihelp/data/localize/config/BusinessLogicHelper;
    .locals 1

    .line 12
    const-class v0, Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    return-object p0
.end method

.method public static values()[Lnet/aihelp/data/localize/config/BusinessLogicHelper;
    .locals 1

    .line 12
    sget-object v0, Lnet/aihelp/data/localize/config/BusinessLogicHelper;->$VALUES:[Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    invoke-virtual {v0}, [Lnet/aihelp/data/localize/config/BusinessLogicHelper;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/aihelp/data/localize/config/BusinessLogicHelper;

    return-object v0
.end method


# virtual methods
.method public prepareDataSource()V
    .locals 2

    const/16 v0, 0x3ef

    .line 19
    :try_start_0
    invoke-static {v0}, Lnet/aihelp/data/localize/util/LocalizeUtil;->getFileLocation(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/aihelp/utils/FileUtil;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 21
    const-class v1, Lnet/aihelp/data/model/config/BusinessLogicEntity;

    invoke-static {v0, v1}, Lnet/aihelp/core/net/json/JsonHelper;->toJavaObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/aihelp/data/model/config/BusinessLogicEntity;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity;->getGeneral()Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/aihelp/data/localize/config/BusinessLogicHelper;->prepareCommonConfig(Lnet/aihelp/data/model/config/BusinessLogicEntity$GeneralEntity;)V

    .line 24
    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity;->getHelp()Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;

    move-result-object v1

    invoke-direct {p0, v1}, Lnet/aihelp/data/localize/config/BusinessLogicHelper;->prepareHelpCenterConfig(Lnet/aihelp/data/model/config/BusinessLogicEntity$HelpEntity;)V

    .line 25
    invoke-virtual {v0}, Lnet/aihelp/data/model/config/BusinessLogicEntity;->getOnLine()Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/aihelp/data/localize/config/BusinessLogicHelper;->prepareCustomerServiceConfig(Lnet/aihelp/data/model/config/BusinessLogicEntity$OnLineEntity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 29
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

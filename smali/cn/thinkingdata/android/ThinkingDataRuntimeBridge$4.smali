.class final Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->onExpandableListViewOnChildClick(Landroid/view/View;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$childPosition:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$expandableListView:Landroid/view/View;

.field final synthetic val$groupPosition:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$expandableListView:Landroid/view/View;

    iput-object p3, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$view:Landroid/view/View;

    iput p4, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$childPosition:I

    iput p5, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$groupPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V
    .locals 8

    const-string v0, "#element_position"

    :try_start_0
    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_CLICK:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-virtual {p1, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$context:Landroid/content/Context;

    invoke-static {v1}, Lcn/thinkingdata/android/utils/TDUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const-class v2, Landroid/widget/ExpandableListView;

    invoke-static {p1, v2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->access$100(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$expandableListView:Landroid/view/View;

    invoke-static {p1, v2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->access$000(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$view:Landroid/view/View;

    invoke-static {p1, v2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->access$000(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_5

    return-void

    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iget-object v3, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$view:Landroid/view/View;

    invoke-static {v1, v3, v2}, Lcn/thinkingdata/android/utils/TDUtils;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v1, :cond_6

    const-string v3, "#screen_name"

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v1}, Lcn/thinkingdata/android/utils/TDUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "#title"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$expandableListView:Landroid/view/View;

    invoke-static {v1}, Lcn/thinkingdata/android/utils/TDUtils;->getViewId(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "#element_id"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    iget v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$childPosition:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gez v1, :cond_8

    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const-string v5, "%d"

    :try_start_2
    new-array v6, v4, [Ljava/lang/Object;

    iget v7, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$groupPosition:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_8
    sget-object v1, Ljava/util/Locale;->CHINA:Ljava/util/Locale;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    const-string v5, "%d:%d"

    const/4 v6, 0x2

    :try_start_3
    new-array v6, v6, [Ljava/lang/Object;

    iget v7, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$groupPosition:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v7, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$childPosition:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "#element_type"

    const-string v1, "ExpandableListView"

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$view:Landroid/view/View;

    instance-of v5, v1, Landroid/view/ViewGroup;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz v5, :cond_9

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$view:Landroid/view/View;

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v1, v5}, Lcn/thinkingdata/android/utils/TDUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_9
    instance-of v3, v1, Landroid/widget/TextView;

    if-eqz v3, :cond_a

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_a
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "#element_content"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_b
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$expandableListView:Landroid/view/View;

    invoke-static {v0, v2}, Lcn/thinkingdata/android/utils/TDUtils;->getFragmentNameFromView(Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$view:Landroid/view/View;

    sget v3, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_properties:I

    invoke-static {v0, v1, v3}, Lcn/thinkingdata/android/utils/TDUtils;->getTag(Ljava/lang/String;Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    iget-object v1, p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v1}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    :cond_c
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$expandableListView:Landroid/view/View;

    check-cast v0, Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getExpandableListAdapter()Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    if-eqz v0, :cond_e

    instance-of v1, v0, Lcn/thinkingdata/android/ThinkingExpandableListViewItemTrackProperties;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v1, :cond_e

    :try_start_6
    check-cast v0, Lcn/thinkingdata/android/ThinkingExpandableListViewItemTrackProperties;

    iget v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$childPosition:I

    if-gez v1, :cond_d

    iget v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$groupPosition:I

    invoke-interface {v0, v1}, Lcn/thinkingdata/android/ThinkingExpandableListViewItemTrackProperties;->getThinkingGroupItemTrackProperties(I)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_d
    iget v3, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$4;->val$groupPosition:I

    invoke-interface {v0, v3, v1}, Lcn/thinkingdata/android/ThinkingExpandableListViewItemTrackProperties;->getThinkingChildItemTrackProperties(II)Lorg/json/JSONObject;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_e

    invoke-static {v0}, Lcn/thinkingdata/android/utils/PropertyUtils;->checkProperty(Lorg/json/JSONObject;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v1}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_e
    :goto_3
    const-string/jumbo v0, "ta_app_click"

    invoke-virtual {p1, v0, v2}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ExpandableListView.OnChildClickListener.onGroupClick AOP ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThinkingAnalytics.ThinkingDataRuntimeBridge"

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

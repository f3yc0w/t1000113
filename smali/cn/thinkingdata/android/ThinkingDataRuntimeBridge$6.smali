.class final Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcn/thinkingdata/android/ThinkingAnalyticsSDK$InstanceProcessor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->onAdapterViewItemClick(Landroid/view/View;Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$adapterView:Landroid/view/View;

.field final synthetic val$position:I

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;I)V
    .locals 0

    iput-object p1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$view:Landroid/view/View;

    iput-object p2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$adapterView:Landroid/view/View;

    iput p3, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;)V
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;->APP_CLICK:Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;

    invoke-virtual {p1, v0}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isAutoTrackEventTypeIgnored(Lcn/thinkingdata/android/ThinkingAnalyticsSDK$AutoTrackEventType;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {v0}, Lcn/thinkingdata/android/utils/TDUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->isActivityAutoTrackAppClickIgnored(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$adapterView:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->access$100(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-void

    :cond_4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getIgnoredViewTypeList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$adapterView:Landroid/view/View;

    instance-of v3, v2, Landroid/widget/ListView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-string v4, "#element_type"

    if-eqz v3, :cond_5

    :try_start_1
    const-string v2, "ListView"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-class v2, Landroid/widget/ListView;

    invoke-static {p1, v2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->access$100(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_5
    instance-of v3, v2, Landroid/widget/GridView;

    if-eqz v3, :cond_6

    const-string v2, "GridView"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-class v2, Landroid/widget/GridView;

    invoke-static {p1, v2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->access$100(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_6
    instance-of v2, v2, Landroid/widget/Spinner;

    if-eqz v2, :cond_7

    const-string v2, "Spinner"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-class v2, Landroid/widget/Spinner;

    invoke-static {p1, v2}, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge;->access$100(Lcn/thinkingdata/android/ThinkingAnalyticsSDK;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    :cond_7
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$adapterView:Landroid/view/View;

    check-cast v2, Landroid/widget/AdapterView;

    invoke-virtual {v2}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    instance-of v3, v2, Lcn/thinkingdata/android/ThinkingAdapterViewItemTrackProperties;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v3, :cond_8

    :try_start_2
    check-cast v2, Lcn/thinkingdata/android/ThinkingAdapterViewItemTrackProperties;

    iget v3, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$position:I

    invoke-interface {v2, v3}, Lcn/thinkingdata/android/ThinkingAdapterViewItemTrackProperties;->getThinkingItemTrackProperties(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-static {v2}, Lcn/thinkingdata/android/utils/PropertyUtils;->checkProperty(Lorg/json/JSONObject;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v3}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_8
    :goto_0
    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$view:Landroid/view/View;

    invoke-static {v0, v2, v1}, Lcn/thinkingdata/android/utils/TDUtils;->addViewPathProperties(Landroid/app/Activity;Landroid/view/View;Lorg/json/JSONObject;)V

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$adapterView:Landroid/view/View;

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/thinkingdata/android/utils/TDUtils;->getViewId(Landroid/view/View;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "#element_id"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_9
    if-eqz v0, :cond_a

    const-string v2, "#screen_name"

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {v0}, Lcn/thinkingdata/android/utils/TDUtils;->getActivityTitle(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    const-string v2, "#title"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_a
    const-string v0, "#element_position"

    :try_start_5
    iget v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$position:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 v0, 0x0

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$view:Landroid/view/View;

    instance-of v3, v2, Landroid/view/ViewGroup;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    if-eqz v3, :cond_b

    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$view:Landroid/view/View;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v2, v3}, Lcn/thinkingdata/android/utils/TDUtils;->traverseView(Ljava/lang/StringBuilder;Landroid/view/ViewGroup;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_b
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_c

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_c
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "#element_content"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    iget-object v0, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$adapterView:Landroid/view/View;

    invoke-static {v0, v1}, Lcn/thinkingdata/android/utils/TDUtils;->getFragmentNameFromView(Landroid/view/View;Lorg/json/JSONObject;)V

    invoke-virtual {p1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->getToken()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/thinkingdata/android/ThinkingDataRuntimeBridge$6;->val$view:Landroid/view/View;

    sget v3, Lcn/thinkingdata/android/R$id;->thinking_analytics_tag_view_properties:I

    invoke-static {v0, v2, v3}, Lcn/thinkingdata/android/utils/TDUtils;->getTag(Ljava/lang/String;Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    iget-object v2, p1, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->mConfig:Lcn/thinkingdata/android/TDConfig;

    invoke-virtual {v2}, Lcn/thinkingdata/android/TDConfig;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/thinkingdata/android/utils/TDUtils;->mergeJSONObject(Lorg/json/JSONObject;Lorg/json/JSONObject;Ljava/util/TimeZone;)V

    :cond_e
    const-string/jumbo v0, "ta_app_click"

    invoke-virtual {p1, v0, v1}, Lcn/thinkingdata/android/ThinkingAnalyticsSDK;->autoTrack(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AdapterView.OnItemClickListener.onItemClick AOP ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ThinkingAnalytics.ThinkingDataRuntimeBridge"

    invoke-static {v0, p1}, Lcn/thinkingdata/android/utils/TDLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

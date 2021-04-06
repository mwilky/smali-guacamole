.class Lcom/oneplus/settings/OPButtonsAndGesturesSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPButtonsAndGesturesSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPButtonsAndGesturesSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOakProducts()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "op_fingerprint_long_press_camera_shot"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportGesturePullNotificationBar()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "op_fingerprint_gesture_swipe_down_up"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/OPButtonsAndGesturesSettings;->access$000()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "op_buttons_and_fullscreen_gestures"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const-string p1, "buttons_settings"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOakProducts()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEucalyptusProducts()Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const-string p1, "op_alertslider_settings_soc_tri_state"

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    new-instance p0, Landroid/provider/SearchIndexableResource;

    invoke-direct {p0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result p1

    if-nez p1, :cond_0

    sget p1, Lcom/android/settings/R$xml;->op_buttons_and_gesture_settings:I

    iput p1, p0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    :cond_0
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 p2, 0x0

    aput-object p0, p1, p2

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

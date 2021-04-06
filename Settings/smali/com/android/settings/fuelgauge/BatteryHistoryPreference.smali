.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroidx/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field hideSummary:Z

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget p1, Lcom/android/settings/R$layout;->battery_usage_graph:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSelectable(Z)V

    return-void
.end method

.method private synthetic lambda$setStats$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method


# virtual methods
.method public hideBottomSummary()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideSummary:Z

    return-void
.end method

.method public synthetic lambda$setStats$0$BatteryHistoryPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->lambda$setStats$0(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    if-nez v2, :cond_0

    return-void

    :cond_0
    sget v2, Lcom/android/settings/R$id;->charge:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v2, Lcom/android/settings/R$id;->bottom_summary:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideSummary:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    sget v2, Lcom/android/settings/R$id;->battery_usage:I

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UsageView;

    sget v2, Lcom/android/settings/R$id;->label_group:I

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    invoke-virtual {p0, p1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/widget/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    const-string p0, "BatteryHistoryPreference"

    const-string p1, "onBindViewHolder"

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setBottomSummary(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummary:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideSummary:Z

    return-void
.end method

.method public setStats(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$OfN0YWKsw9YRrCqoEdP8dybAPU0;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$OfN0YWKsw9YRrCqoEdP8dybAPU0;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    const/4 p0, 0x0

    invoke-static {v0, v1, p1, p0}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    return-void
.end method

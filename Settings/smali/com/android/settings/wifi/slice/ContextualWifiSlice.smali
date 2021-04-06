.class public Lcom/android/settings/wifi/slice/ContextualWifiSlice;
.super Lcom/android/settings/wifi/slice/WifiSlice;
.source "ContextualWifiSlice.java"


# static fields
.field static final COLLAPSED_ROW_COUNT:I = 0x0

.field static sActiveUiSession:J = -0x3e8L

.field static sApRowCollapsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/slice/WifiSlice;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getActiveSSID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const-string p0, "<unknown ssid>"

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getApRowCount()I
    .locals 1

    sget-boolean v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sApRowCollapsed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method private getHeaderIcon(ZLcom/android/settingslib/wifi/AccessPoint;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    const v0, 0x1010429

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$drawable;->ic_wifi_off:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/settingslib/Utils;->getDisabled(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getWifiIconResource(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->isNetworkConnected(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/Utils;->getColorAccentDefaultColor(Landroid/content/Context;)I

    move-result p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    invoke-static {p1}, Lcom/android/settings/Utils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method private getSubtitle(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->isCaptivePortal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const-string v0, "network_available_sign_in"

    const-string v1, "string"

    const-string v2, "android"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->disconnected:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_3

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_4

    sget-object v0, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$array;->wifi_status_with_ssid:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    aget-object p0, p0, v0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasInternetAccess()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p0

    if-eqz p0, :cond_0

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private hasWorkingNetwork()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->getActiveSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<unknown ssid>"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->hasInternetAccess()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isNetworkConnected(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-nez p1, :cond_1

    return p0

    :cond_1
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    :cond_2
    return p0
.end method


# virtual methods
.method public getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const-class p0, Lcom/android/settings/wifi/slice/ContextualWifiScanWorker;

    return-object p0
.end method

.method protected getHeaderRow(ZLcom/android/settingslib/wifi/AccessPoint;)Landroidx/slice/builders/ListBuilder$RowBuilder;
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/wifi/slice/WifiSlice;->getHeaderRow(ZLcom/android/settingslib/wifi/AccessPoint;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->getHeaderIcon(ZLcom/android/settingslib/wifi/AccessPoint;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroidx/core/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    sget-boolean p1, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sApRowCollapsed:Z

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->getSubtitle(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    :cond_0
    return-object v0
.end method

.method public getSlice()Landroidx/slice/Slice;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/slices/SlicesFeatureProvider;->getUiSessionToken()J

    move-result-wide v0

    sget-wide v2, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    sput-wide v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sActiveUiSession:J

    invoke-direct {p0}, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->hasWorkingNetwork()Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sApRowCollapsed:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/slice/WifiSlice;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sApRowCollapsed:Z

    :cond_1
    :goto_0
    invoke-super {p0}, Lcom/android/settings/wifi/slice/WifiSlice;->getSlice()Landroidx/slice/Slice;

    move-result-object p0

    return-object p0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 0

    sget-object p0, Lcom/android/settings/slices/CustomSliceRegistry;->CONTEXTUAL_WIFI_SLICE_URI:Landroid/net/Uri;

    return-object p0
.end method

.method protected isApRowCollapsed()Z
    .locals 0

    sget-boolean p0, Lcom/android/settings/wifi/slice/ContextualWifiSlice;->sApRowCollapsed:Z

    return p0
.end method

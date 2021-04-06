.class Lcom/android/server/media/BluetoothRouteProvider;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;,
        Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final HEARING_AID_ROUTE_ID_PREFIX:Ljava/lang/String; = "HEARING_AID_"

.field private static final TAG:Ljava/lang/String; = "BTRouteProvider"

.field private static sInstance:Lcom/android/server/media/BluetoothRouteProvider;


# instance fields
.field mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

.field final mActiveRoutes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field final mBluetoothRoutes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mEventReceiverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;",
            ">;"
        }
    .end annotation
.end field

.field mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private final mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

.field private final mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

.field private final mVolumeMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "BTRouteProvider"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iput-object p3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mAudioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->buildBluetoothRoutes()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/media/BluetoothRouteProvider;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->clearActiveRoutesWithType(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveHearingAidDevices(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->removeActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/media/BluetoothRouteProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/media/BluetoothRouteProvider;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/media/BluetoothRouteProvider;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->buildBluetoothRoutes()V

    return-void
.end method

.method private addActiveHearingAidDevices(Landroid/bluetooth/BluetoothDevice;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting active hearing aid devices. device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    invoke-direct {p0, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/media/BluetoothRouteProvider;->addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private addActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding active route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mEventReceiverMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method private buildBluetoothRoutes()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/media/BluetoothRouteProvider;->createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v2

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    goto :goto_0

    :cond_1
    return-void
.end method

.method private clearActiveDevices()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->removeActiveDevice(I)Z

    :cond_0
    return-void
.end method

.method private clearActiveRoutesWithType(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clearing active routes with type. type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v2, v1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v2

    if-ne v2, p1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    :cond_1
    goto :goto_0

    :cond_2
    return-void
.end method

.method private createBluetoothRoute(Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .locals 8

    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    iput-object p1, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104000e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/16 v3, 0x8

    new-instance v4, Landroid/util/SparseBooleanArray;

    invoke-direct {v4}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_1
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->connectedProfiles:Landroid/util/SparseBooleanArray;

    const/16 v6, 0x15

    invoke-virtual {v4, v6, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HEARING_AID_"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v6, p1}, Landroid/bluetooth/BluetoothHearingAid;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x17

    :cond_2
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    invoke-direct {v4, v1, v2}, Landroid/media/MediaRoute2Info$Builder;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v6, "android.media.route.feature.LIVE_AUDIO"

    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    const-string v6, "android.media.route.feature.LOCAL_PLAYBACK"

    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->addFeature(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1040193

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/media/MediaRoute2Info$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setVolumeHandling(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/media/BluetoothRouteProvider;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setVolumeMax(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRoute2Info$Builder;->setAddress(Ljava/lang/String;)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    return-object v0
.end method

.method static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)Lcom/android/server/media/BluetoothRouteProvider;
    .locals 3

    const-class v0, Lcom/android/server/media/BluetoothRouteProvider;

    monitor-enter v0

    :try_start_0
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/server/media/BluetoothRouteProvider;->sInstance:Lcom/android/server/media/BluetoothRouteProvider;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :cond_0
    :try_start_1
    new-instance v2, Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/server/media/BluetoothRouteProvider;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothAdapter;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;)V

    sput-object v2, Lcom/android/server/media/BluetoothRouteProvider;->sInstance:Lcom/android/server/media/BluetoothRouteProvider;

    :cond_1
    sget-object v1, Lcom/android/server/media/BluetoothRouteProvider;->sInstance:Lcom/android/server/media/BluetoothRouteProvider;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private notifyBluetoothRoutesUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRoutesUpdatedListener;->onBluetoothRoutesUpdated(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private removeActiveRoute(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/media/BluetoothRouteProvider;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing active route: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BTRouteProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/media/BluetoothRouteProvider;->setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V

    :cond_1
    return-void
.end method

.method private setRouteConnectionState(Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;I)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "BTRouteProvider"

    const-string/jumbo v1, "setRouteConnectionState: route shouldn\'t be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v0}, Landroid/media/MediaRoute2Info;->getConnectionState()I

    move-result v0

    if-ne v0, p2, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/media/MediaRoute2Info$Builder;

    iget-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-direct {v0, v1}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v0, p2}, Landroid/media/MediaRoute2Info$Builder;->setConnectionState(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->getRouteType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setType(I)Landroid/media/MediaRoute2Info$Builder;

    const/4 v1, 0x2

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->getRouteType()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    :cond_2
    invoke-virtual {v0}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    return-void
.end method


# virtual methods
.method findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v3}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getAllBluetoothRoutes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getSelectedRoute()Landroid/media/MediaRoute2Info;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v4, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v5}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getSelectedRoute()Landroid/media/MediaRoute2Info;
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v0, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    :goto_0
    return-object v0
.end method

.method getTransferableRoutes()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/media/BluetoothRouteProvider;->getAllBluetoothRoutes()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v3, v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public start()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mProfileListener:Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    new-instance v0, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/BluetoothRouteProvider$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V

    const-string v2, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    const-string v2, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    const-string v2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v2, v0}, Lcom/android/server/media/BluetoothRouteProvider;->addEventReceiver(Ljava/lang/String;Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;)V

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4, v1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public transferTo(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->clearActiveDevices()V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider;->findBluetoothRouteWithRouteId(Ljava/lang/String;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "transferTo: Unknown route. ID="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BTRouteProvider"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->btDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;I)Z

    :cond_2
    return-void
.end method

.method public updateVolumeForDevices(II)Z
    .locals 6

    const/high16 v0, 0x8000000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    and-int/lit16 v0, p1, 0x380

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    :goto_0
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider;->mVolumeMap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0, p2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider;->mActiveRoutes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    iget-object v4, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info;->getType()I

    move-result v4

    if-eq v4, v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Landroid/media/MediaRoute2Info$Builder;

    iget-object v5, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    invoke-direct {v4, v5}, Landroid/media/MediaRoute2Info$Builder;-><init>(Landroid/media/MediaRoute2Info;)V

    invoke-virtual {v4, p2}, Landroid/media/MediaRoute2Info$Builder;->setVolume(I)Landroid/media/MediaRoute2Info$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/media/MediaRoute2Info$Builder;->build()Landroid/media/MediaRoute2Info;

    move-result-object v4

    iput-object v4, v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;->route:Landroid/media/MediaRoute2Info;

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/media/BluetoothRouteProvider;->notifyBluetoothRoutesUpdated()V

    :cond_3
    const/4 v2, 0x1

    return v2

    :cond_4
    const/4 v0, 0x0

    return v0
.end method

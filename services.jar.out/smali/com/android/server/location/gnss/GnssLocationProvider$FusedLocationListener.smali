.class final Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;
.super Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FusedLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider$LocationChangeListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fused"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/oneplus/android/server/location/OpGnssLocationProviderInjector;->getHandledFusedLocation(Landroid/location/Location;)Landroid/location/Location;

    move-result-object v0

    const-string v1, "GnssLocationProvider"

    if-eqz v0, :cond_0

    const-string/jumbo v2, "inject fl bl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4600(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "inject fl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$FusedLocationListener;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4600(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/location/Location;)V

    :cond_1
    :goto_0
    return-void
.end method

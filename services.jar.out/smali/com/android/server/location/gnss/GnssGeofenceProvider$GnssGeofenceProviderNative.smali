.class Lcom/android/server/location/gnss/GnssGeofenceProvider$GnssGeofenceProviderNative;
.super Ljava/lang/Object;
.source "GnssGeofenceProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssGeofenceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "GnssGeofenceProviderNative"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addGeofence(IDDDIIII)Z
    .locals 1

    invoke-static/range {p1 .. p11}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->access$200(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method public isGeofenceSupported()Z
    .locals 1

    invoke-static {}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->access$100()Z

    move-result v0

    return v0
.end method

.method public pauseGeofence(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->access$500(I)Z

    move-result v0

    return v0
.end method

.method public removeGeofence(I)Z
    .locals 1

    invoke-static {p1}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->access$300(I)Z

    move-result v0

    return v0
.end method

.method public resumeGeofence(II)Z
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/location/gnss/GnssGeofenceProvider;->access$400(II)Z

    move-result v0

    return v0
.end method

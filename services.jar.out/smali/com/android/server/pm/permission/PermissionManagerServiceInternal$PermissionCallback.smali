.class public Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;
.super Ljava/lang/Object;
.source "PermissionManagerServiceInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionCallback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGidsChanged(II)V
    .locals 0

    return-void
.end method

.method public onInstallPermissionGranted()V
    .locals 0

    return-void
.end method

.method public onInstallPermissionRevoked()V
    .locals 0

    return-void
.end method

.method public onInstallPermissionUpdated()V
    .locals 0

    return-void
.end method

.method public onInstallPermissionUpdatedNotifyListener(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onInstallPermissionUpdated()V

    return-void
.end method

.method public onPermissionChanged()V
    .locals 0

    return-void
.end method

.method public onPermissionGranted(II)V
    .locals 0

    return-void
.end method

.method public onPermissionRemoved()V
    .locals 0

    return-void
.end method

.method public onPermissionRevoked(IILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onPermissionUpdated([IZ)V
    .locals 0

    return-void
.end method

.method public onPermissionUpdatedNotifyListener([IZI)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PermissionCallback;->onPermissionUpdated([IZ)V

    return-void
.end method

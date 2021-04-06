.class public abstract Lcom/google/android/gms/analytics/internal/a$a;
.super Landroid/os/Binder;
.source ""

# interfaces
.implements Lcom/google/android/gms/analytics/internal/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/analytics/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/analytics/internal/a$a$a;
    }
.end annotation


# direct methods
.method public static d(Landroid/os/IBinder;)Lcom/google/android/gms/analytics/internal/a;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.analytics.internal.IAnalyticsService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/gms/analytics/internal/a;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/gms/analytics/internal/a;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/analytics/internal/a$a$a;

    invoke-direct {v0, p0}, Lcom/google/android/gms/analytics/internal/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

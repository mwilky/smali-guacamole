.class public final synthetic Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$f-F2UvCQ9fPh351VSZEjDGyLjBw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$f-F2UvCQ9fPh351VSZEjDGyLjBw;->f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/permission/-$$Lambda$OneTimePermissionUserManager$PackageInactivityListener$f-F2UvCQ9fPh351VSZEjDGyLjBw;->f$0:Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;

    invoke-virtual {v0}, Lcom/android/server/pm/permission/OneTimePermissionUserManager$PackageInactivityListener;->lambda$onPackageInactiveLocked$4$OneTimePermissionUserManager$PackageInactivityListener()V

    return-void
.end method

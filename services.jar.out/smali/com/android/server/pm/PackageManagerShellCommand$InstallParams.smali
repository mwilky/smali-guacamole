.class Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;
.super Ljava/lang/Object;
.source "PackageManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallParams"
.end annotation


# instance fields
.field installerPackageName:Ljava/lang/String;

.field mWaitForStagedSessionReady:Z

.field sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field timeoutMs:J

.field userId:I


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->userId:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->mWaitForStagedSessionReady:Z

    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;->timeoutMs:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerShellCommand$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/PackageManagerShellCommand$InstallParams;-><init>()V

    return-void
.end method

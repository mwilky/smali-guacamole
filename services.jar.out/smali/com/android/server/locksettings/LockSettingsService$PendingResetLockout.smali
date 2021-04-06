.class Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PendingResetLockout"
.end annotation


# instance fields
.field final mHAT:[B

.field final mUserId:I

.field final synthetic this$0:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method constructor <init>(Lcom/android/server/locksettings/LockSettingsService;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->this$0:Lcom/android/server/locksettings/LockSettingsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->mUserId:I

    iput-object p3, p0, Lcom/android/server/locksettings/LockSettingsService$PendingResetLockout;->mHAT:[B

    return-void
.end method

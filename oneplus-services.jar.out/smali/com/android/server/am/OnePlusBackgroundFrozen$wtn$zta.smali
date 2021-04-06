.class Lcom/android/server/am/OnePlusBackgroundFrozen$wtn$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$wtn$zta;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$wtn$zta;->zta:Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;->zta(Lcom/android/server/am/OnePlusBackgroundFrozen$wtn;Landroid/os/IBinder;)Landroid/os/IBinder;

    const/4 p0, 0x2

    const-string v0, "IComunication deathRecipient!"

    invoke-static {p0, v0}, Lcom/android/server/am/OnePlusBackgroundFrozen;->X(ILjava/lang/String;)V

    return-void
.end method

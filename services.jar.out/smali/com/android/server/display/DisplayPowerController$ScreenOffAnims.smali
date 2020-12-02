.class Lcom/android/server/display/DisplayPowerController$ScreenOffAnims;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/DisplayPowerController;->initialize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;

.field final synthetic val$cr:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffAnims;->this$0:Lcom/android/server/display/DisplayPowerController;

    iput-object p3, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffAnims;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffAnims;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffAnims;->val$cr:Landroid/content/ContentResolver;

    const-string/jumbo v0, "tweaks_screen_off_animation"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/server/display/DisplayPowerController;->putScreenOffAnims(Lcom/android/server/display/DisplayPowerController;I)I

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffAnims;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->getPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffAnims;->this$0:Lcom/android/server/display/DisplayPowerController;
    
    invoke-virtual {p1}, Lcom/android/server/display/DisplayPowerController;->updateScreenOffAnimationDuration()V

    invoke-static {p1}, Lcom/android/server/display/DisplayPowerController;->getPowerState(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerState;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/display/DisplayPowerController$ScreenOffAnims;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {p2}, Lcom/android/server/display/DisplayPowerController;->getScreenOffAnims(Lcom/android/server/display/DisplayPowerController;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/display/DisplayPowerState;->setScreenStateAnimator(I)V

    :cond_0
    return-void
.end method

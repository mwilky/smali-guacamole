.class public Lcom/android/server/wm/StatusBarController;
.super Lcom/android/server/wm/BarController;
.source "StatusBarController.java"


# instance fields
.field private final mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;


# direct methods
.method constructor <init>(I)V
    .locals 10

    const-string v1, "StatusBar"

    const/high16 v3, 0x4000000

    const/high16 v4, 0x10000000

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x1

    const/16 v7, 0x7d0

    const/high16 v8, 0x4000000

    const/16 v9, 0x8

    move-object v0, p0

    move v2, p1

    invoke-direct/range {v0 .. v9}, Lcom/android/server/wm/BarController;-><init>(Ljava/lang/String;IIIIIIII)V

    new-instance v0, Lcom/android/server/wm/StatusBarController$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/StatusBarController$1;-><init>(Lcom/android/server/wm/StatusBarController;)V

    iput-object v0, p0, Lcom/android/server/wm/StatusBarController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    return-void
.end method


# virtual methods
.method getAppTransitionListener()Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/StatusBarController;->mAppTransitionListener:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    return-object v0
.end method

.method setTopAppHidesStatusBar(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/StatusBarController;->getStatusBarInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/statusbar/StatusBarManagerInternal;->setTopAppHidesStatusBar(Z)V

    :cond_0
    return-void
.end method

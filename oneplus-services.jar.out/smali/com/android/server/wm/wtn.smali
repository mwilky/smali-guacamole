.class public final synthetic Lcom/android/server/wm/wtn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic you:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic zta:Lcom/android/server/wm/ColorZoomWindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/wtn;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/wtn;->you:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/wtn;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/wtn;->you:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->kth(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

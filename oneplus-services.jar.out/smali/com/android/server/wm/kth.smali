.class public final synthetic Lcom/android/server/wm/kth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic sis:Lcom/android/server/wm/ActivityRecord;

.field public final synthetic you:Lcom/android/server/wm/ActivityStack;

.field public final synthetic zta:Lcom/android/server/wm/ColorZoomWindowManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ColorZoomWindowManagerService;Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/kth;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/kth;->you:Lcom/android/server/wm/ActivityStack;

    iput-object p3, p0, Lcom/android/server/wm/kth;->sis:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/kth;->zta:Lcom/android/server/wm/ColorZoomWindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/kth;->you:Lcom/android/server/wm/ActivityStack;

    iget-object p0, p0, Lcom/android/server/wm/kth;->sis:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/ColorZoomWindowManagerService;->igw(Lcom/android/server/wm/ActivityStack;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

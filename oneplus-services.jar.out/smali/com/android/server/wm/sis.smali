.class public final synthetic Lcom/android/server/wm/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic you:Landroid/view/MotionEvent;

.field public final synthetic zta:Lcom/android/server/wm/veq;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/veq;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/sis;->zta:Lcom/android/server/wm/veq;

    iput-object p2, p0, Lcom/android/server/wm/sis;->you:Landroid/view/MotionEvent;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/sis;->zta:Lcom/android/server/wm/veq;

    iget-object p0, p0, Lcom/android/server/wm/sis;->you:Landroid/view/MotionEvent;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/veq;->obl(Landroid/view/MotionEvent;)V

    return-void
.end method

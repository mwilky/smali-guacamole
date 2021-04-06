.class public Lcom/android/server/wm/lqr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/a$sis;


# static fields
.field private static final rtg:Ljava/lang/String; = "ColorMiniZoomPointerEventListener"


# instance fields
.field private sis:Landroid/view/GestureDetector;

.field private final tsu:Landroid/view/GestureDetector$OnGestureListener;

.field private final you:Lcom/android/server/wm/veq;

.field private final zta:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/veq;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/wm/lqr$zta;

    invoke-direct {v0, p0}, Lcom/android/server/wm/lqr$zta;-><init>(Lcom/android/server/wm/lqr;)V

    iput-object v0, p0, Lcom/android/server/wm/lqr;->tsu:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p1, p0, Lcom/android/server/wm/lqr;->zta:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/lqr;->you:Lcom/android/server/wm/veq;

    invoke-direct {p0}, Lcom/android/server/wm/lqr;->tsu()V

    return-void
.end method

.method static synthetic sis(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/veq;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/lqr;->you:Lcom/android/server/wm/veq;

    return-object p0
.end method

.method private tsu()V
    .locals 3

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/server/wm/lqr;->you:Lcom/android/server/wm/veq;

    invoke-virtual {v1}, Lcom/android/server/wm/veq;->ywr()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/lqr;->tsu:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/server/wm/lqr;->sis:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic you(Lcom/android/server/wm/lqr;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/lqr;->zta:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method


# virtual methods
.method public zta(Landroid/view/MotionEvent;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/lqr;->you:Lcom/android/server/wm/veq;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/veq;->ear(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/lqr;->you:Lcom/android/server/wm/veq;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/veq;->ire(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/lqr;->you:Lcom/android/server/wm/veq;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/veq;->cjf(Landroid/view/MotionEvent;)V

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/lqr;->sis:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return-void
.end method

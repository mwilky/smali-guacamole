.class public final synthetic Lcom/android/server/wm/ywr;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic zta:Lcom/android/server/wm/ywr;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/ywr;

    invoke-direct {v0}, Lcom/android/server/wm/ywr;-><init>()V

    sput-object v0, Lcom/android/server/wm/ywr;->zta:Lcom/android/server/wm/ywr;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    check-cast p2, Landroid/util/IntArray;

    invoke-static {p1, p2}, Lcom/android/server/wm/ColorZoomWindowManagerService;->you(Lcom/android/server/wm/ActivityRecord;Landroid/util/IntArray;)V

    return-void
.end method

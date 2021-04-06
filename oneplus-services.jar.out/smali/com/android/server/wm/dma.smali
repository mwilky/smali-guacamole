.class public final synthetic Lcom/android/server/wm/dma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/internal/util/function/QuadConsumer;


# static fields
.field public static final synthetic zta:Lcom/android/server/wm/dma;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/dma;

    invoke-direct {v0}, Lcom/android/server/wm/dma;-><init>()V

    sput-object v0, Lcom/android/server/wm/dma;->zta:Lcom/android/server/wm/dma;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/wm/ColorZoomWindowManagerService;

    check-cast p2, Lcom/android/server/wm/Task;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p0

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-static {p1, p2, p0, p3}, Lcom/android/server/wm/ColorZoomWindowManagerService;->zta(Lcom/android/server/wm/ColorZoomWindowManagerService;Lcom/android/server/wm/Task;II)V

    return-void
.end method

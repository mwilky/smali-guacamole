.class public final synthetic Lcom/android/server/wm/igw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic zta:Lcom/android/server/wm/igw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/igw;

    invoke-direct {v0}, Lcom/android/server/wm/igw;-><init>()V

    sput-object v0, Lcom/android/server/wm/igw;->zta:Lcom/android/server/wm/igw;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-static {p1}, Lcom/android/server/wm/ColorZoomWindowManagerService;->ssp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

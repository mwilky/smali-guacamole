.class Lcom/android/server/wm/bud$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/bud;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
.end annotation


# static fields
.field private static zta:Lcom/android/server/wm/bud;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/wm/bud;

    invoke-direct {v0}, Lcom/android/server/wm/bud;-><init>()V

    sput-object v0, Lcom/android/server/wm/bud$zta;->zta:Lcom/android/server/wm/bud;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic zta()Lcom/android/server/wm/bud;
    .locals 1

    sget-object v0, Lcom/android/server/wm/bud$zta;->zta:Lcom/android/server/wm/bud;

    return-object v0
.end method

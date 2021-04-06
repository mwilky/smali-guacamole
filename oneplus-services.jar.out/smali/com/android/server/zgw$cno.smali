.class Lcom/android/server/zgw$cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "cno"
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/zgw;


# direct methods
.method private constructor <init>(Lcom/android/server/zgw;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/zgw$cno;->zta:Lcom/android/server/zgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/zgw;Lcom/android/server/zgw$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/zgw$cno;-><init>(Lcom/android/server/zgw;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw$cno;->zta:Lcom/android/server/zgw;

    invoke-static {p0, p1}, Lcom/android/server/zgw;->kth(Lcom/android/server/zgw;Lorg/json/JSONArray;)V

    return-void
.end method

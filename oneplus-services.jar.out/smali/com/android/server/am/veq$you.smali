.class Lcom/android/server/am/veq$you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/veq;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic zta:Lcom/android/server/am/veq;


# direct methods
.method constructor <init>(Lcom/android/server/am/veq;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/veq$you;->zta:Lcom/android/server/am/veq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/veq$you;->zta:Lcom/android/server/am/veq;

    invoke-static {p0, p1}, Lcom/android/server/am/veq;->wtn(Lcom/android/server/am/veq;Lorg/json/JSONArray;)V

    return-void
.end method
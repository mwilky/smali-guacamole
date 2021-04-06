.class Lcom/oneplus/android/server/bio/zta$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/bio/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/bio/zta;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/bio/zta;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/bio/zta$sis;->zta:Lcom/oneplus/android/server/bio/zta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/bio/zta;Lcom/oneplus/android/server/bio/zta$zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/bio/zta$sis;-><init>(Lcom/oneplus/android/server/bio/zta;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/bio/zta$sis;->zta:Lcom/oneplus/android/server/bio/zta;

    invoke-static {v0, p1}, Lcom/oneplus/android/server/bio/zta;->ssp(Lcom/oneplus/android/server/bio/zta;Lorg/json/JSONArray;)V

    iget-object p0, p0, Lcom/oneplus/android/server/bio/zta$sis;->zta:Lcom/oneplus/android/server/bio/zta;

    invoke-static {p0}, Lcom/oneplus/android/server/bio/zta;->cno(Lcom/oneplus/android/server/bio/zta;)V

    return-void
.end method

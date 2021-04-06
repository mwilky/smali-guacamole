.class public final synthetic Lcom/oneplus/android/server/ssp/zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/oneplus/android/server/ssp/sis$you;


# direct methods
.method public synthetic constructor <init>(Lcom/oneplus/android/server/ssp/sis$you;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/zta;->zta:Lcom/oneplus/android/server/ssp/sis$you;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/zta;->zta:Lcom/oneplus/android/server/ssp/sis$you;

    invoke-virtual {p0}, Lcom/oneplus/android/server/ssp/sis$you;->sis()V

    return-void
.end method

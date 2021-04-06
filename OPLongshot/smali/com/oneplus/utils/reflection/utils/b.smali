.class public Lcom/oneplus/utils/reflection/utils/b;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static a(Ljava/lang/Exception;)V
    .locals 1

    instance-of v0, p0, Ljava/lang/ReflectiveOperationException;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/b/b/e/a;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lb/b/b/e/a;-><init>(Ljava/lang/String;)V

    throw v0
.end method

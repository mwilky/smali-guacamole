.class public Lb/b/d/a/c/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lb/b/d/a/c/a;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "task"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static b()Z
    .locals 1

    sget-boolean v0, Lb/b/d/a/c/a;->a:Z

    return v0
.end method

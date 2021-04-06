.class Landroidx/core/text/c$e;
.super Landroidx/core/text/c$d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/text/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field private final b:Z


# direct methods
.method constructor <init>(Landroidx/core/text/c$c;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/core/text/c$d;-><init>(Landroidx/core/text/c$c;)V

    iput-boolean p2, p0, Landroidx/core/text/c$e;->b:Z

    return-void
.end method


# virtual methods
.method protected b()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/core/text/c$e;->b:Z

    return v0
.end method

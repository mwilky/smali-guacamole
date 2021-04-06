.class public Lb/b/d/a/b/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile a:Ljava/lang/String; = ""

.field private static b:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lb/b/d/a/b/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lb/b/d/a/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static b()V
    .locals 1

    sget-object v0, Lb/b/d/a/b/a;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    return-void
.end method

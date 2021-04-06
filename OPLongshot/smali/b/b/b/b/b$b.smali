.class Lb/b/b/b/b$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/b/b/b/b;-><init>(Landroid/content/Context;Landroid/os/Handler;Lb/b/b/b/b$c;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/b/b/b/b$c;


# direct methods
.method constructor <init>(Lb/b/b/b/b;Lb/b/b/b/b$c;)V
    .locals 0

    iput-object p2, p0, Lb/b/b/b/b$b;->a:Lb/b/b/b/b$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    const-string p2, "updateConfig"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lb/b/b/b/b$b;->a:Lb/b/b/b/b$c;

    const/4 p2, 0x0

    aget-object p2, p3, p2

    check-cast p2, Lorg/json/JSONArray;

    invoke-interface {p1, p2}, Lb/b/b/b/b$c;->updateConfig(Lorg/json/JSONArray;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

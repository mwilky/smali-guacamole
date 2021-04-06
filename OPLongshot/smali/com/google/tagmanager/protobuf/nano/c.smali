.class public abstract Lcom/google/tagmanager/protobuf/nano/c;
.super Lcom/google/tagmanager/protobuf/nano/e;
.source ""


# instance fields
.field protected b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/tagmanager/protobuf/nano/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/e;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Lcom/google/tagmanager/protobuf/nano/Extension;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/tagmanager/protobuf/nano/Extension<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/c;->b:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/google/tagmanager/protobuf/nano/h;->b(Lcom/google/tagmanager/protobuf/nano/Extension;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

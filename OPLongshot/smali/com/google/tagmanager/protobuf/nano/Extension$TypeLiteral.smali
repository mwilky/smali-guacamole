.class public abstract Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/tagmanager/protobuf/nano/Extension;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TypeLiteral"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing type parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Z
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->isList()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->getTargetClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;
    .locals 0

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->getListType()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private getListType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private getTargetClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->isList()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    check-cast v0, Ljava/lang/Class;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    goto :goto_0
.end method

.method private isList()Z
    .locals 1

    iget-object v0, p0, Lcom/google/tagmanager/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    return v0
.end method

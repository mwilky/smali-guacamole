.class Lcom/google/tagmanager/m0;
.super Lcom/google/tagmanager/z;
.source ""


# static fields
.field private static final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->PLATFORM:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/m0;->c:Ljava/lang/String;

    const-string v0, "Android"

    invoke-static {v0}, Lcom/google/tagmanager/a1;->g(Ljava/lang/Object;)Lb/a/a/a/a/a/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/google/tagmanager/m0;->c:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/tagmanager/z;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.class Lcom/google/tagmanager/b0;
.super Lcom/google/tagmanager/k0;
.source ""


# static fields
.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->GREATER_THAN:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/b0;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/tagmanager/b0;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/k0;-><init>(Ljava/lang/String;)V

    return-void
.end method

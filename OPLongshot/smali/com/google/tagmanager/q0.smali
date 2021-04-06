.class Lcom/google/tagmanager/q0;
.super Lcom/google/tagmanager/w0;
.source ""


# static fields
.field private static final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/google/analytics/containertag/common/FunctionType;->REGEX:Lcom/google/analytics/containertag/common/FunctionType;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/FunctionType;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/tagmanager/q0;->e:Ljava/lang/String;

    sget-object v0, Lcom/google/analytics/containertag/common/Key;->IGNORE_CASE:Lcom/google/analytics/containertag/common/Key;

    invoke-virtual {v0}, Lcom/google/analytics/containertag/common/Key;->toString()Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lcom/google/tagmanager/q0;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/tagmanager/w0;-><init>(Ljava/lang/String;)V

    return-void
.end method

.class final enum Lcom/google/common/collect/AbstractIterator$State;
.super Ljava/lang/Enum;
.source "AbstractIterator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/AbstractIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/common/collect/AbstractIterator$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/collect/AbstractIterator$State;

.field public static final enum DONE:Lcom/google/common/collect/AbstractIterator$State;

.field public static final enum FAILED:Lcom/google/common/collect/AbstractIterator$State;

.field public static final enum NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

.field public static final enum READY:Lcom/google/common/collect/AbstractIterator$State;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/common/collect/AbstractIterator$State;

    const-string v1, "READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/AbstractIterator$State;->READY:Lcom/google/common/collect/AbstractIterator$State;

    new-instance v0, Lcom/google/common/collect/AbstractIterator$State;

    const-string v1, "NOT_READY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    new-instance v0, Lcom/google/common/collect/AbstractIterator$State;

    const-string v1, "DONE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    new-instance v0, Lcom/google/common/collect/AbstractIterator$State;

    const-string v1, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/google/common/collect/AbstractIterator$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/collect/AbstractIterator$State;->FAILED:Lcom/google/common/collect/AbstractIterator$State;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/google/common/collect/AbstractIterator$State;

    sget-object v6, Lcom/google/common/collect/AbstractIterator$State;->READY:Lcom/google/common/collect/AbstractIterator$State;

    aput-object v6, v1, v2

    sget-object v2, Lcom/google/common/collect/AbstractIterator$State;->NOT_READY:Lcom/google/common/collect/AbstractIterator$State;

    aput-object v2, v1, v3

    sget-object v2, Lcom/google/common/collect/AbstractIterator$State;->DONE:Lcom/google/common/collect/AbstractIterator$State;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/google/common/collect/AbstractIterator$State;->$VALUES:[Lcom/google/common/collect/AbstractIterator$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/collect/AbstractIterator$State;
    .locals 1

    const-class v0, Lcom/google/common/collect/AbstractIterator$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/common/collect/AbstractIterator$State;

    return-object p0
.end method

.method public static values()[Lcom/google/common/collect/AbstractIterator$State;
    .locals 1

    sget-object v0, Lcom/google/common/collect/AbstractIterator$State;->$VALUES:[Lcom/google/common/collect/AbstractIterator$State;

    invoke-virtual {v0}, [Lcom/google/common/collect/AbstractIterator$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/AbstractIterator$State;

    return-object v0
.end method

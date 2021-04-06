.class public final Lyou/zta/you/zta/zta/zta;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final rtg:I = -0x7ffffffc

.field public static final sis:I = -0x7ffffffe

.field public static final tsu:I = -0x7ffffffd

.field public static final you:I = -0x7fffffff

.field public static final zta:I = -0x80000000


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final you(I)Ljava/lang/String;
    .locals 2

    const/high16 v0, -0x80000000

    if-ne p0, v0, :cond_0

    const-string p0, "ERR_FILE_FAILURE_ACCESS"

    return-object p0

    :cond_0
    const v0, -0x7fffffff

    if-ne p0, v0, :cond_1

    const-string p0, "ERR_FILE_FAILURE_OPEN"

    return-object p0

    :cond_1
    const v0, -0x7ffffffe

    if-ne p0, v0, :cond_2

    const-string p0, "ERR_FILE_FAILURE_READ"

    return-object p0

    :cond_2
    const v0, -0x7ffffffd

    if-ne p0, v0, :cond_3

    const-string p0, "ERR_FILE_FAILURE_WRITE"

    return-object p0

    :cond_3
    const v0, -0x7ffffffc

    if-ne p0, v0, :cond_4

    const-string p0, "ERR_FILE_NOT_EXIST"

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final zta(I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x80000000

    and-int v2, p0, v1

    if-ne v2, v1, :cond_0

    const-string v2, "ERR_FILE_FAILURE_ACCESS"

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, -0x7fffffff

    and-int v3, p0, v2

    if-ne v3, v2, :cond_1

    const-string v3, "ERR_FILE_FAILURE_OPEN"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_1
    const v2, -0x7ffffffe

    and-int v3, p0, v2

    if-ne v3, v2, :cond_2

    const-string v3, "ERR_FILE_FAILURE_READ"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_2
    const v2, -0x7ffffffd

    and-int v3, p0, v2

    if-ne v3, v2, :cond_3

    const-string v3, "ERR_FILE_FAILURE_WRITE"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_3
    const v2, -0x7ffffffc

    and-int v3, p0, v2

    if-ne v3, v2, :cond_4

    const-string v3, "ERR_FILE_NOT_EXIST"

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr v1, v2

    :cond_4
    if-eq p0, v1, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    const-string p0, " | "

    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

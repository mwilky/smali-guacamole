.class Lcom/android/server/engineer/tsu;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/tsu$you;
    }
.end annotation


# static fields
.field private static sis:Lcom/android/server/engineer/tsu$you; = null

.field private static you:Lyou/zta/zta/zta/zta/zta; = null

.field private static final zta:Ljava/lang/String; = "OneplusEngineerNative"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/engineer/tsu$you;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/engineer/tsu$you;-><init>(Lcom/android/server/engineer/tsu$zta;)V

    sput-object v0, Lcom/android/server/engineer/tsu;->sis:Lcom/android/server/engineer/tsu$you;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(IJJIZI)I
    .locals 11

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lyou/zta/zta/zta/zta/zta;->rftestWcdmaSetTxOn_v2(IJJIZI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestWcdmaSetTxOn_v2 exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static b(IIJJIII)I
    .locals 12

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lyou/zta/zta/zta/zta/zta;->rftestmmWaveGetTxAdc(IIJJIII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestmmWaveGetTxAdc exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static bio(I[BI)Z
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-static {p1}, Lcom/android/server/engineer/tsu;->d([B)Ljava/util/ArrayList;

    move-result-object p1

    invoke-interface {v0, p0, p1, p2}, Lyou/zta/zta/zta/zta/zta;->D0(ILjava/util/ArrayList;I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeSaveEngineerData exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static bud(IJIZI)I
    .locals 9

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lyou/zta/zta/zta/zta/zta;->rftestTdscdmaSetTxOn(IJIZI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestTdscdmaSetTxOn exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static bvj(IJIZ)I
    .locals 8

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lyou/zta/zta/zta/zta/zta;->rftestCdmaSetTxOn(IJIZ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestCdmaSetTxOn exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static c(IIJJIIIZ)I
    .locals 13

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-interface/range {v2 .. v12}, Lyou/zta/zta/zta/zta/zta;->rftestmmWaveSetTxOn(IIJJIIIZ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestmmWaveSetTxOn exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static cgv()[B
    .locals 4

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v1}, Lyou/zta/zta/zta/zta/zta;->rftestQtmDetection()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestQtmDetection exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method static cjf(IIJJI)I
    .locals 10

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lyou/zta/zta/zta/zta/zta;->rftestLteGetTxAdc(IIJJI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestLteGetTxAdc exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static cno(Ljava/lang/String;)[B
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0, p0}, Lyou/zta/zta/zta/zta/zta;->zgw(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->e(Ljava/util/List;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeReadOemUsageRecords exception caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerNative"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d([B)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static dma(II)Z
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0, p0, p1}, Lyou/zta/zta/zta/zta/zta;->setProductLineTestResult(II)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeSetProductLineTestResult exception caught "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static e(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static ear(IIJJIZI)I
    .locals 12

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lyou/zta/zta/zta/zta/zta;->rftestLteSetTxOn(IIJJIZI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestLteSetTxOn exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0, p0}, Lyou/zta/zta/zta/zta/zta;->a0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "translateCommand exception caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerNative"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static fto(IIJJIZI)I
    .locals 12

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    invoke-interface/range {v2 .. v11}, Lyou/zta/zta/zta/zta/zta;->rftestNr5gSetTxOn(IIJJIZI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestNr5gSetTxOn exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static gck(Z)Z
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0, p0}, Lyou/zta/zta/zta/zta/zta;->r0(Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeSetPartionWriteProtectState exception caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerNative"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static gwm(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rftestDeinit state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v2, p0}, Lyou/zta/zta/zta/zta/zta;->rftestDeinit(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestDeinit exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static hmo(IIJJI)I
    .locals 10

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move v4, p1

    move-wide v5, p2

    move-wide v7, p4

    move/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lyou/zta/zta/zta/zta/zta;->rftestNr5gGetTxAdc(IIJJI)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestNr5gGetTxAdc exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static ibl(IJIZI)I
    .locals 9

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lyou/zta/zta/zta/zta/zta;->rftestCdmaSetTxOn_v2(IJIZI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestCdmaSetTxOn_v2 exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static igw(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0, p0, p1}, Lyou/zta/zta/zta/zta/zta;->saveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeSaveOemUsageRecords exception caught "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static ire(IIJJIZIIII)I
    .locals 15

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-interface/range {v2 .. v14}, Lyou/zta/zta/zta/zta/zta;->rftestLteSetTxOn_v2(IIJJIZIIII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestLteSetTxOn_v2 exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static irq(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rftestTechStart rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v2, p0}, Lyou/zta/zta/zta/zta/zta;->rftestTechStart(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestTechStart exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static ivd(IJJIZ)I
    .locals 10

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lyou/zta/zta/zta/zta/zta;->rftestWcdmaSetTxOn(IJJIZ)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestWcdmaSetTxOn exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static kth()Z
    .locals 3

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0}, Lyou/zta/zta/zta/zta/zta;->resetProductLineTestResult()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeResetProductLineTestResult exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static les(IJIZII)I
    .locals 10

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-interface/range {v2 .. v9}, Lyou/zta/zta/zta/zta/zta;->rftestTdscdmaSetTxOn_v2(IJIZII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestTdscdmaSetTxOn_v2 exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static lqr(IIJJIZIIII)I
    .locals 15

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v1, -0x1

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move/from16 v4, p1

    move-wide/from16 v5, p2

    move-wide/from16 v7, p4

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    invoke-interface/range {v2 .. v14}, Lyou/zta/zta/zta/zta/zta;->rftestNr5gSetTxOn_v2(IIJJIZIIII)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestNr5gSetTxOn_v2 exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerNative"

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static obl(IJIZI)I
    .locals 9

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lyou/zta/zta/zta/zta/zta;->rftestGsmSetTxOn_v2(IJIZI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestGsmSetTxOn_v2 exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static oif(IJI)I
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v1, p0, p1, p2, p3}, Lyou/zta/zta/zta/zta/zta;->rftestCdmaGetTxAdc(IJI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestCdmaGetTxAdc exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static oxb(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rftestInit state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v2, p0}, Lyou/zta/zta/zta/zta/zta;->rftestInit(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestInit exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static qbh()[B
    .locals 1

    const v0, 0x186a1

    invoke-static {v0}, Lcom/android/server/engineer/tsu;->ssp(I)[B

    move-result-object v0

    return-object v0
.end method

.method static qeg(IJJI)I
    .locals 9

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lyou/zta/zta/zta/zta/zta;->rftestWcdmaGetTxAdc(IJJI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestWcdmaGetTxAdc exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static rtg()[B
    .locals 3

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0}, Lyou/zta/zta/zta/zta/zta;->getProductLineTestResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/tsu;->e(Ljava/util/List;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetProductLineTestResult exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static sis(II)[B
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0, p0, p1}, Lyou/zta/zta/zta/zta/zta;->getBadBatteryConfig(II)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->e(Ljava/util/List;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "nativeGetBadBatteryConfig exception caught "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static ssp(I)[B
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0, p0}, Lyou/zta/zta/zta/zta/zta;->readEngineerData(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/tsu;->e(Ljava/util/List;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nativeReadEngineerData exception caught "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerNative"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static tsu()Z
    .locals 3

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v0}, Lyou/zta/zta/zta/zta/zta;->t()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nativeGetPartionWriteProtectState exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static ugm(I)[B
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rftestDeinit rat_qr = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x28

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v2, p0}, Lyou/zta/zta/zta/zta/zta;->rftestGetBandmask(I)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x8

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestGetBandmask exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method static vdb(IJI)I
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v1, p0, p1, p2, p3}, Lyou/zta/zta/zta/zta/zta;->rftestGsmGetTxAdc(IJI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestGsmGetTxAdc exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static vdw(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rftestTechStop rat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v2, p0}, Lyou/zta/zta/zta/zta/zta;->rftestTechStop(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestTechStop exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static veq(I)[B
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rftestNvRead nv_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x82

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v2, p0}, Lyou/zta/zta/zta/zta/zta;->rftestNvRead(I)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x41

    if-ge v2, v3, :cond_0

    mul-int/lit8 v3, v2, 0x2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Short;

    invoke-virtual {v4}, Ljava/lang/Short;->shortValue()S

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rftestNvRead exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method static vju(IJI)I
    .locals 2

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-interface {v1, p0, p1, p2, p3}, Lyou/zta/zta/zta/zta/zta;->rftestTdscdmaGetTxAdc(IJI)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestTdscdmaGetTxAdc exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static wtn(II[B)I
    .locals 1

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    invoke-static {p2}, Lcom/android/server/engineer/tsu;->d([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-interface {v0, p0, p1, p2}, Lyou/zta/zta/zta/zta/zta;->ear(IILjava/util/ArrayList;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeSetBatteryBatteryConfig exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static you()V
    .locals 4

    :try_start_0
    invoke-static {}, Lyou/zta/zta/zta/zta/zta;->ywr()Lyou/zta/zta/zta/zta/zta;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/server/engineer/tsu;->sis:Lcom/android/server/engineer/tsu$you;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lyou/zta/zta/zta/zta/zta;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exception caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusEngineerNative"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    :cond_0
    :goto_0
    return-void
.end method

.method static ywr(Ljava/lang/String;IZI[B)V
    .locals 7

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v0, :cond_0

    invoke-static {p4}, Lcom/android/server/engineer/tsu;->d([B)Ljava/util/ArrayList;

    move-result-object v6

    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v1 .. v6}, Lyou/zta/zta/zta/zta/zta;->F0(Ljava/lang/String;IZILjava/util/ArrayList;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "nativeWriteData exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method static zgw(IJIZ)I
    .locals 8

    invoke-static {}, Lcom/android/server/engineer/tsu;->you()V

    const/4 v0, -0x1

    :try_start_0
    sget-object v1, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    move v3, p0

    move-wide v4, p1

    move v6, p3

    move v7, p4

    invoke-interface/range {v2 .. v7}, Lyou/zta/zta/zta/zta/zta;->rftestGsmSetTxOn(IJIZ)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "rftestGsmSetTxOn exception caught "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OneplusEngineerNative"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method static synthetic zta(Lyou/zta/zta/zta/zta/zta;)Lyou/zta/zta/zta/zta/zta;
    .locals 0

    sput-object p0, Lcom/android/server/engineer/tsu;->you:Lyou/zta/zta/zta/zta/zta;

    return-object p0
.end method

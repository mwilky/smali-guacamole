.class public Lcom/android/server/protolog/common/LogDataType;
.super Ljava/lang/Object;
.source "LogDataType.java"


# static fields
.field public static final BOOLEAN:I = 0x3

.field public static final DOUBLE:I = 0x2

.field public static final LONG:I = 0x1

.field public static final STRING:I = 0x0

.field private static final TYPE_MASK:I = 0x3

.field private static final TYPE_WIDTH:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmaskToLogDataType(II)I
    .locals 2

    const/16 v0, 0x10

    if-gt p1, v0, :cond_0

    mul-int/lit8 v0, p1, 0x2

    shr-int v0, p0, v0

    and-int/lit8 v0, v0, 0x3

    return v0

    :cond_0
    new-instance v0, Lcom/android/server/protolog/common/BitmaskConversionException;

    const-string v1, "Max 16 parameters allowed"

    invoke-direct {v0, v1}, Lcom/android/server/protolog/common/BitmaskConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static logDataTypesToBitMask(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit8 v3, v1, 0x2

    shl-int v3, v2, v3

    or-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    new-instance v0, Lcom/android/server/protolog/common/BitmaskConversionException;

    const-string v1, "Too many log call parameters - max 16 parameters supported"

    invoke-direct {v0, v1}, Lcom/android/server/protolog/common/BitmaskConversionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parseFormatString(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x25

    if-ne v2, v3, :cond_5

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_4

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v3, :cond_3

    const/16 v3, 0x62

    if-eq v2, v3, :cond_2

    const/16 v3, 0x6f

    if-eq v2, v3, :cond_1

    const/16 v3, 0x73

    if-eq v2, v3, :cond_0

    const/16 v3, 0x78

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    new-instance v2, Lcom/android/server/protolog/common/InvalidFormatStringException;

    const-string v3, "Invalid format string field %${messageString[i + 1]}"

    invoke-direct {v2, v3}, Lcom/android/server/protolog/common/InvalidFormatStringException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    :pswitch_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    nop

    :goto_1
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/android/server/protolog/common/InvalidFormatStringException;

    const-string v3, "Invalid format string in config"

    invoke-direct {v2, v3}, Lcom/android/server/protolog/common/InvalidFormatStringException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

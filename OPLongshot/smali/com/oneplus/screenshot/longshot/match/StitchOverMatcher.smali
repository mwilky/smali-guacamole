.class public Lcom/oneplus/screenshot/longshot/match/StitchOverMatcher;
.super Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "StitchOverMatcher"


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;-><init>(Landroid/content/Context;I)V

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_OVER_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendLast:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_OVER_LAST:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetLast:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_STITCH_OVER_CURR:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mOffsetCurr:I

    sget p1, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_OVER_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_OVER_CURR_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->LINES_STITCH_OVER_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/BaseMatcher;->mSize:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->EXTEND_STITCH_OVER_CURR_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/match/StitchNextMatcher;->mExtendCurr:I

    return-void
.end method


# virtual methods
.method protected canDump()Z
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->OVER:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    return v0
.end method

.method protected getStep()I
    .locals 2

    sget v0, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_OVER_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/longshot/util/Configs;->STEP_STITCH_OVER_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    const-string v0, "StitchOver"

    return-object v0
.end method

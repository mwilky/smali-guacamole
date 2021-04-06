.class public Lcom/oneplus/screenshot/longshot/state/ShotOverState;
.super Lcom/oneplus/screenshot/longshot/state/ShotNextState;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "ShotOverState"


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/state/ShotNextState;-><init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Lcom/oneplus/screenshot/longshot/util/MovePoint;)V

    sget p1, Lcom/oneplus/screenshot/longshot/util/Configs;->levelStitchLast:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_OVER_LEVEL_1:Lcom/oneplus/screenshot/longshot/util/Configs;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->OFFSET_SHOT_OVER_LEVEL_2:Lcom/oneplus/screenshot/longshot/util/Configs;

    :goto_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mOffset:I

    sget-object p1, Lcom/oneplus/screenshot/longshot/util/Configs;->CAPTURE_OVER_DELAY:Lcom/oneplus/screenshot/longshot/util/Configs;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/util/Configs;->getValue()I

    move-result p1

    iput p1, p0, Lcom/oneplus/screenshot/longshot/state/AbsShotState;->mCaptureDelay:I

    return-void
.end method


# virtual methods
.method protected getNextState()Lcom/oneplus/screenshot/longshot/state/LongshotState;
    .locals 1

    sget-object v0, Lcom/oneplus/screenshot/longshot/state/LongshotState;->STITCH_OVER:Lcom/oneplus/screenshot/longshot/state/LongshotState;

    return-object v0
.end method

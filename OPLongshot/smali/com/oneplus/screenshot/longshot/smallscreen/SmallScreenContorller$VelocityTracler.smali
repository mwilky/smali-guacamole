.class Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VelocityTracler"
.end annotation


# instance fields
.field endTime:J

.field mEndPoint:Landroid/graphics/Point;

.field mStartPoint:Landroid/graphics/Point;

.field startTime:J

.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;FF)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->this$0:Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->startTime:J

    iput-wide v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->endTime:J

    new-instance p1, Landroid/graphics/Point;

    float-to-int p2, p2

    float-to-int p3, p3

    invoke-direct {p1, p2, p3}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mStartPoint:Landroid/graphics/Point;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->startTime:J

    return-void
.end method


# virtual methods
.method public isDrop()Z
    .locals 10

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mEndPoint:Landroid/graphics/Point;

    iget v1, v0, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mStartPoint:Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v0, v2, Landroid/graphics/Point;->y:I

    iget-wide v2, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->endTime:J

    iget-wide v4, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->startTime:J

    sub-long v6, v2, v4

    const-wide/16 v8, 0x0

    cmp-long v0, v6, v8

    if-lez v0, :cond_0

    mul-int/lit8 v0, v1, 0xa

    int-to-long v6, v0

    sub-long/2addr v2, v4

    div-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v1, 0x52

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateMovePoint(FF)V
    .locals 1

    new-instance v0, Landroid/graphics/Point;

    float-to-int p1, p1

    float-to-int p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->mEndPoint:Landroid/graphics/Point;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oneplus/screenshot/longshot/smallscreen/SmallScreenContorller$VelocityTracler;->endTime:J

    return-void
.end method

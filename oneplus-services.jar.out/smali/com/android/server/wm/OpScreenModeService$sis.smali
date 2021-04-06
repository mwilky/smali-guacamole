.class Lcom/android/server/wm/OpScreenModeService$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic rtg:Lcom/android/server/wm/OpScreenModeService;

.field sis:I

.field tsu:[I

.field you:I

.field zta:Landroid/view/Display$Mode;


# direct methods
.method constructor <init>(Lcom/android/server/wm/OpScreenModeService;Landroid/view/Display$Mode;)V
    .locals 5

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->rtg:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->you:I

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->sis:I

    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    iput-object p2, p0, Lcom/android/server/wm/OpScreenModeService$sis;->zta:Landroid/view/Display$Mode;

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p2

    iget v1, p1, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p1, Lcom/android/server/wm/OpScreenModeService;->mHighResolution:I

    iget v1, p1, Lcom/android/server/wm/OpScreenModeService;->mLowResolution:I

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p1, Lcom/android/server/wm/OpScreenModeService;->mLowResolution:I

    iget v1, p1, Lcom/android/server/wm/OpScreenModeService;->mHighRate:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Lcom/android/server/wm/OpScreenModeService;->mHighRate:F

    iget v1, p1, Lcom/android/server/wm/OpScreenModeService;->mLowRate:F

    invoke-static {v1, p2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Lcom/android/server/wm/OpScreenModeService;->mLowRate:F

    invoke-virtual {p1, v0}, Lcom/android/server/wm/OpScreenModeService;->resolutionToId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->sis:I

    const/16 v1, 0x1c2

    const/16 v2, 0x258

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5020024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5020027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto :goto_3

    :cond_2
    const/4 v3, 0x2

    const v4, 0x5020026

    if-ne v0, v3, :cond_7

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v0

    if-eq v0, v2, :cond_6

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v0

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$300(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "guacamole"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$300(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hotdog"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/wm/OpScreenModeService;->DPI_FHD:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)I

    move-result v1

    if-ne v0, v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5020025

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto :goto_3

    :cond_5
    :goto_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeService;->DPI_FHD:[I

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto :goto_3

    :cond_6
    :goto_2
    iget-object v0, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    goto :goto_3

    :cond_7
    const/4 v1, 0x4

    if-ne v0, v1, :cond_8

    iget-object v0, p1, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->tsu:[I

    :cond_8
    :goto_3
    invoke-virtual {p1, p2}, Lcom/android/server/wm/OpScreenModeService;->refreshRateToId(F)I

    move-result p1

    iput p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->you:I

    return-void
.end method

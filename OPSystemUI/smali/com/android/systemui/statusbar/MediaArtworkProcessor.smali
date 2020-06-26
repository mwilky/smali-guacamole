.class public final Lcom/android/systemui/statusbar/MediaArtworkProcessor;
.super Ljava/lang/Object;
.source "MediaArtworkProcessor.kt"


# instance fields
.field private mDownSample:I

.field private mArtworkCache:Landroid/graphics/Bitmap;

.field private final mTmpSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;
    
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I

    return-void
.end method


# virtual methods
.method public final clearCache()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final processArtwork(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .line 33
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "inBitmap"

    iget-object v3, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

    .line 34
    .local v3, "point":Landroid/graphics/Point;
    iget-object v4, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mArtworkCache:Landroid/graphics/Bitmap;

    .line 35
    .local v4, "bitmap2":Landroid/graphics/Bitmap;
    if-eqz v4, :cond_d

    .line 36
    return-object v4

    .line 38
    :cond_d
    const-string v5, "context"

    move-object/from16 v6, p1

    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    const-string v5, "artwork"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    const/4 v5, 0x0

    .line 41
    .local v5, "input":Landroid/renderscript/Allocation;
    const/4 v7, 0x0

    .line 42
    .local v7, "output":Landroid/renderscript/Allocation;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

	move-result-object v8

	iget-object v9, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mTmpSize:Landroid/graphics/Point;

	invoke-virtual {v8, v9}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-static/range {p1 .. p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v8

    .line 43
    .local v8, "create":Landroid/renderscript/RenderScript;
    invoke-static {v8}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v9

    .line 44
    .local v9, "blur":Landroid/renderscript/ScriptIntrinsicBlur;
    const/4 v10, 0x0

    .line 46
    .local v10, "createScaledBitmap":Landroid/graphics/Bitmap;
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 48
    .local v11, "rect":Landroid/graphics/Rect;
    :try_start_36
    sget v13, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    const/high16 v15, 0x40a00000    # 5.0f

    cmpg-float v13, v13, v15

    const/4 v15, 0x2

    if-gez v13, :cond_42

    .line 49
    iput v15, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I

    goto :goto_45

    .line 51
    :cond_42
    const/4 v13, 0x6

    iput v13, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I

    .line 53
    :goto_45
    iget v13, v3, Landroid/graphics/Point;->x:I

    iget v15, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I

    div-int/2addr v13, v15

    iget v15, v3, Landroid/graphics/Point;->y:I

    iget v12, v1, Lcom/android/systemui/statusbar/MediaArtworkProcessor;->mDownSample:I

    div-int/2addr v15, v12

    invoke-static {v13, v15}, Ljava/lang/Math;->max(II)I

    move-result v12

    invoke-static {v11, v12}, Landroid/util/MathUtils;->fitRect(Landroid/graphics/Rect;I)V

    .line 54
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->height()I

    move-result v13

    const/4 v15, 0x1

    invoke-static {v2, v12, v13, v15}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object v10, v12

    .line 55
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    .line 57
    .local v12, "config":Landroid/graphics/Bitmap$Config;
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 58
    .local v13, "config2":Landroid/graphics/Bitmap$Config;
    if-eq v12, v13, :cond_77

    .line 59
    invoke-virtual {v10, v13, v14}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 60
    .local v14, "copy":Landroid/graphics/Bitmap;
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    move-object v10, v14

    .line 64
    .end local v14    # "copy":Landroid/graphics/Bitmap;
    :cond_77
    sget v14, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    const/high16 v17, 0x3f800000    # 1.0f

    cmpl-float v14, v14, v17

    if-ltz v14, :cond_ac

    .line 65
    sget-object v14, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v15, 0x2

    invoke-static {v8, v10, v14, v15}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v14

    move-object v5, v14

    .line 66
    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    sget-object v15, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v14, v15}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 68
    .local v0, "outBitmap":Landroid/graphics/Bitmap;
    invoke-static {v8, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v14

    move-object v7, v14

    .line 69
    sget v14, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    invoke-virtual {v9, v14}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 70
    invoke-virtual {v9, v5}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 71
    invoke-virtual {v9, v7}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 72
    invoke-virtual {v7, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    goto :goto_b0

    .line 74
    .end local v0    # "outBitmap":Landroid/graphics/Bitmap;
    :cond_ac
    invoke-virtual {v10, v13, v15}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 76
    .restart local v0    # "outBitmap":Landroid/graphics/Bitmap;
    :goto_b0
    invoke-static/range {p2 .. p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundSwatch(Landroid/graphics/Bitmap;)Landroidx/palette/graphics/Palette$Swatch;

    move-result-object v14

    .line 77
    .local v14, "findBackgroundSwatch":Landroidx/palette/graphics/Palette$Swatch;
    const-string v15, "swatch"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    const-string v15, "outBitmap"

    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_be
    .catch Ljava/lang/IllegalArgumentException; {:try_start_36 .. :try_end_be} :catch_d6
    .catchall {:try_start_36 .. :try_end_be} :catchall_d4

    .line 79
    nop

    .line 84
    sget v15, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    const/high16 v16, 0x3f800000    # 1.0f

    cmpl-float v15, v15, v16

    if-ltz v15, :cond_cd

    .line 85
    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    .line 86
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 88
    :cond_cd
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    invoke-virtual {v9}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 79
    return-object v0

    .line 84
    .end local v0    # "outBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "config":Landroid/graphics/Bitmap$Config;
    .end local v13    # "config2":Landroid/graphics/Bitmap$Config;
    .end local v14    # "findBackgroundSwatch":Landroidx/palette/graphics/Palette$Swatch;
    :catchall_d4
    move-exception v0

    goto :goto_f4

    .line 80
    :catch_d6
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    :try_start_d7
    const-string v12, "MediaArtworkProcessor"

    const-string v13, "error while processing artwork"

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_de
    .catchall {:try_start_d7 .. :try_end_de} :catchall_d4

    .line 82
    const/4 v12, 0x0

    .line 84
    sget v13, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v13, v13, v14

    if-ltz v13, :cond_ed

    .line 85
    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    .line 86
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 88
    :cond_ed
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    invoke-virtual {v9}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 82
    return-object v12

    .line 84
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_f4
    sget v12, Lcom/android/mwilky/Renovate;->mAlbumArtBlurAmount:F

    const/high16 v13, 0x3f800000    # 1.0f

    cmpl-float v12, v12, v13

    if-ltz v12, :cond_102

    .line 85
    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    .line 86
    invoke-virtual {v7}, Landroid/renderscript/Allocation;->destroy()V

    .line 88
    :cond_102
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 89
    invoke-virtual {v9}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    .line 90
    throw v0
.end method

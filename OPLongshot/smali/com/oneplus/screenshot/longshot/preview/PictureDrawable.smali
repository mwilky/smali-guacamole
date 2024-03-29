.class public Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
.super Landroid/graphics/drawable/Drawable;
.source ""


# static fields
.field private static final MSG_UPDATE_PREVIEW:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "Longshot.PictureDrawable"


# instance fields
.field private mBitmapList:Ljava/util/List;

.field private mBitmapPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mMeasureHeight:I

.field private mWidth:I

.field private pictureCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xa

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->pictureCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;-><init>(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$2;

    invoke-direct {v0, p0}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$2;-><init>(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mInvalidate:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mMeasureHeight:I

    return p0
.end method

.method static synthetic access$102(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mMeasureHeight:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mInvalidate:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHandler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x0

    int-to-float v7, v2

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-le v4, v1, :cond_0

    move v1, v4

    :cond_0
    add-int/2addr v2, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput v1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mWidth:I

    iput v2, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHeight:I

    return-void
.end method

.method public getBitmapList()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    return-object v0
.end method

.method public getBitmapSize()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mBitmapList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHeight:I

    return v0
.end method

.method public getMeasureHeigh()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mMeasureHeight:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mWidth:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/IntRange;
            from = 0x0L
            to = 0xffL
        .end annotation
    .end param

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public updateBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xbb8

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

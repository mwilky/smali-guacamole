.class public abstract Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;
    }
.end annotation


# static fields
.field private static final DIR_NAME:Ljava/lang/String; = "Dump"

.field private static final TAG:Ljava/lang/String; = "BitmapDumper"

.field public static final TAG_CURR:Ljava/lang/String; = "Curr"

.field public static final TAG_LAST:Ljava/lang/String; = "Last"

.field public static final TAG_NEXT:Ljava/lang/String; = "Next"

.field public static final TAG_PREV:Ljava/lang/String; = "Prev"

.field public static divColor:I = -0xffff01

.field public static divHeight:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIndex:I

.field protected mIsNext:Z

.field protected mTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    iput-boolean p3, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    return-void
.end method

.method private getCombinedTag()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mIsNext:Z

    if-eqz v1, :cond_0

    const-string v1, "Next"

    goto :goto_0

    :cond_0
    const-string v1, "Prev"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static load(Landroid/content/Context;)V
    .locals 4

    invoke-static {p0}, Lcom/oneplus/screenshot/util/Utils;->isDebuggable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->values()[Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    invoke-static {v3, v1}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->access$002(Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->DIVIDE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    sput p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->divHeight:I

    :cond_1
    return-void
.end method


# virtual methods
.method public dump(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v2, "Dump"

    invoke-direct {v1, v2, p2}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    :cond_1
    return-void
.end method

.method public dump(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;Z)V
    .locals 16

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->FILE:Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper$Options;->getValue()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v1, :cond_0

    if-nez p2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageWidth(Ljava/util/List;)I

    move-result v1

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->getImageHeight(Ljava/util/List;)I

    move-result v2

    new-array v3, v2, [Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v10, 0x0

    move v4, v10

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/graphics/Bitmap;

    move v12, v4

    move v13, v10

    :goto_1
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    if-ge v13, v4, :cond_3

    add-int/lit8 v14, v12, 0x1

    new-instance v15, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v4, v15

    move-object v5, v11

    move v7, v13

    move v8, v1

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;-><init>(Landroid/graphics/Bitmap;IIII)V

    aput-object v15, v3, v12

    add-int/lit8 v13, v13, 0x1

    move v12, v14

    goto :goto_1

    :cond_3
    move v4, v12

    goto :goto_0

    :cond_4
    move-object/from16 v4, p0

    invoke-virtual {v4, v3, v10, v2}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V

    goto :goto_2

    :cond_5
    move-object/from16 v4, p0

    :goto_2
    return-void
.end method

.method public dump([Lcom/oneplus/screenshot/longshot/bitmap/Pixels;II)V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dump image"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p3, :cond_1

    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v1

    array-length v1, v1

    mul-int v2, v1, p3

    new-array v2, v2, [I

    move v3, v0

    :goto_0
    if-ge v3, p3, :cond_0

    add-int v4, v3, p2

    aget-object v4, p1, v4

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v5

    mul-int v6, v1, v3

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/bitmap/Pixels;->get()[I

    move-result-object v4

    array-length v4, v4

    invoke-static {v5, v0, v2, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/screenshot/longshot/util/Configs;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    invoke-static {v2, v1, p3, p1}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p2, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mContext:Landroid/content/Context;

    new-instance p3, Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->getCombinedTag()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Dump"

    invoke-direct {p3, v1, v0}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2, p3, p1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    :cond_1
    return-void
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method protected setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->mTag:Ljava/lang/String;

    return-void
.end method

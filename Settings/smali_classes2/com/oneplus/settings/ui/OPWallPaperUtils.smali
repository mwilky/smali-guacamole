.class public Lcom/oneplus/settings/ui/OPWallPaperUtils;
.super Ljava/lang/Object;
.source "OPWallPaperUtils.java"


# static fields
.field public static final ATLEAST_OREO_MR1:Z

.field public static final LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

.field public static final ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

.field public static final ONEPLUS_H2_BLUR_WALLPAPER:Landroid/content/ComponentName;

.field private static final ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

.field private static final ONEPLUS_LIVE_WALLPAPER_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "net.oneplus.launcher/.wallpaper.BlurWallpaper"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    const-string v0, "com.oneplus.wallpaper/.BlurWallpaper"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    const-string v0, "net.oneplus.h2launcher/.wallpaper.BlurWallpaper"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_H2_BLUR_WALLPAPER:Landroid/content/ComponentName;

    const-string v0, "com.oneplus.wallpaper/.LiveWallpaper"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ComponentName;

    sput-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/image/wallpaper"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_LIVE_WALLPAPER_URI:Landroid/net/Uri;

    const-string v0, "net.oneplus.launcher/.wallpaper.DummyWallpaper"

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1b

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ATLEAST_OREO_MR1:Z

    return-void
.end method

.method public static calculateSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 4

    iget v0, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget p0, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v1, 0x1

    if-gt v0, p2, :cond_0

    if-le p0, p1, :cond_2

    :cond_0
    div-int/lit8 v0, v0, 0x2

    div-int/lit8 p0, p0, 0x2

    :goto_0
    div-int v2, v0, v1

    if-le v2, p2, :cond_1

    div-int v3, p0, v1

    if-gt v3, p1, :cond_3

    :cond_1
    const/16 v3, 0x1800

    if-gt v2, v3, :cond_3

    div-int v2, p0, v1

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    mul-int/lit8 v1, v1, 0x2

    goto :goto_0
.end method

.method public static checkPeekWallpaperPermission(Landroid/content/Context;)Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ATLEAST_OREO_MR1:Z

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static getBitmapResizeWidthHeight(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 3

    const-string v0, "OPWallpaperUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v2, 0x8

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapResizeWidthHeight e = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBitmapResizeWidthHeight error = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public static getOnePlusBlurWallpaperFile(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "wallpaper"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getOnePlusLiveWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "OPWallpaperUtils"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_LIVE_WALLPAPER_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {p0, v2}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->getBitmapResizeWidthHeight(Landroid/content/Context;Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOnePlusLiveWallpaperBitmap bitmap = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOnePlusLiveWallpaperBitmap# error loading wallpaper image, error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-object v1
.end method

.method public static hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->hasGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static varargs hasGrantedPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 6

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v5, p1, v3

    invoke-virtual {p0, v5}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    and-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v4
.end method

.method public static isImageWallpaper(Landroid/content/Context;)Z
    .locals 2

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->checkPeekWallpaperPermission(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "OPWallpaperUtils"

    const-string v0, "[isImageWallpaper] permission is not granted, return false"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->peekFastDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isNormalLiveWallpaper(Landroid/app/WallpaperInfo;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/ui/OPWallPaperUtils;->LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_H2_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    sget-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNormalLiveWallpaper(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->isNormalLiveWallpaper(Landroid/app/WallpaperInfo;)Z

    move-result p0

    return p0
.end method

.method public static isOnePlusBlurWallpaper(Landroid/content/Context;)Z
    .locals 2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    sget-object v1, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    sget-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->LEGACY_ONEPLUS_BLUR_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isOnePlusLiveWallpaper(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object p0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEightSeriesProducts()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isAviciiProducts()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    sget-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/oneplus/settings/ui/OPWallPaperUtils;->ONEPLUS_LIVE_WALLPAPER:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    return v1
.end method

.method public static loadHomeWallpaper(Landroid/content/Context;Landroid/app/WallpaperInfo;)Landroid/graphics/Bitmap;
    .locals 5

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->isOnePlusLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "OPWallpaperUtils"

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->getOnePlusLiveWallpaperBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OPSettings-isOnePlusLiveWallpapert-bitmap:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->isImageWallpaper(Landroid/content/Context;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_1

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v3

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OPSettings-isImageWallpaper-bitmap:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    invoke-static {p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->isNormalLiveWallpaper(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OPSettings-isNormalLiveWallpaper-bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/WallpaperInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->loadThumbnailFromWallpaperIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto/16 :goto_3

    :cond_3
    invoke-static {p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->isOnePlusBlurWallpaper(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->getOnePlusBlurWallpaperFile(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->picker_preview_item_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/settings/R$dimen;->picker_preview_item_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v4, 0x1

    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    invoke-static {v1, v0, p0}, Lcom/oneplus/settings/ui/OPWallPaperUtils;->calculateSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result p0

    iput p0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 p0, 0x0

    iput-boolean p0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "OPSettings-isOnePlusBlurWallpaper-bitmap:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "failed loading oneplus blur wallpaper file"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    const-string p0, "wallpaper for latest blur wallpaper is empty"

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    move-object p0, v3

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    instance-of p1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p1, :cond_6

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_2

    :cond_6
    move-object p0, v3

    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OPSettings-else-bitmap:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    if-eqz p0, :cond_7

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "OPSettings-loadHomeWallpaper-widht:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " height:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-object p0
.end method

.method public static loadThumbnailFromWallpaperIcon(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "OPWallpaperUtils"

    if-nez p0, :cond_0

    const-string p0, "[loadThumbnailFromWallpaperIcon] invalid context"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "[loadThumbnailFromWallpaperIcon] invalid icon drawable"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$dimen;->picker_preview_item_width:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget v1, Lcom/android/settings/R$dimen;->picker_preview_item_height:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/high16 v0, -0x1000000

    invoke-static {p1, v0}, Lcom/oneplus/settings/ui/OPColorUtils;->getMainColor(Landroid/graphics/drawable/Drawable;I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    return-object p0
.end method

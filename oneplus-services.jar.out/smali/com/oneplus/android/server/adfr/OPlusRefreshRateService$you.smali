.class Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "you"
.end annotation


# instance fields
.field final synthetic zta:Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;


# direct methods
.method public constructor <init>(Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;->zta:Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange setting : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OPlusRefreshRateService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7d72bd2e

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "oneplus_dc_dimming_value"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService$you;->zta:Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;

    invoke-static {p0}, Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;->access$000(Lcom/oneplus/android/server/adfr/OPlusRefreshRateService;)V

    :cond_4
    :goto_2
    return-void
.end method

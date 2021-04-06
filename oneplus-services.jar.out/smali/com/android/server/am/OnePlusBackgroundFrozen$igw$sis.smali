.class Lcom/android/server/am/OnePlusBackgroundFrozen$igw$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBackgroundFrozen$igw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "sis"
.end annotation


# instance fields
.field sis:Ljava/util/Calendar;

.field final synthetic tsu:Lcom/android/server/am/OnePlusBackgroundFrozen$igw;

.field you:Ljava/text/SimpleDateFormat;

.field zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBackgroundFrozen$igw;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$igw$sis;->tsu:Lcom/android/server/am/OnePlusBackgroundFrozen$igw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$igw$sis;->zta:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object p1

    new-instance p2, Ljava/text/SimpleDateFormat;

    const-string v0, "_yy_MM_dd"

    invoke-direct {p2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$igw$sis;->you:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2, p1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$igw$sis;->sis:Ljava/util/Calendar;

    const/16 p2, 0xb

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p1, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$igw$sis;->sis:Ljava/util/Calendar;

    const/16 p2, 0xc

    invoke-virtual {p1, p2, v0}, Ljava/util/Calendar;->set(II)V

    iget-object p0, p0, Lcom/android/server/am/OnePlusBackgroundFrozen$igw$sis;->sis:Ljava/util/Calendar;

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Ljava/util/Calendar;->set(II)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

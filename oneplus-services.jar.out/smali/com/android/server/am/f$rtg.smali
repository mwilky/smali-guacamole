.class final Lcom/android/server/am/f$rtg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "rtg"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/server/am/f$kth;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/f$zta;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/f$rtg;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/f$kth;

    check-cast p2, Lcom/android/server/am/f$kth;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/f$rtg;->zta(Lcom/android/server/am/f$kth;Lcom/android/server/am/f$kth;)I

    move-result p0

    return p0
.end method

.method public zta(Lcom/android/server/am/f$kth;Lcom/android/server/am/f$kth;)I
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/f$kth;->oif(Lcom/android/server/am/f$kth;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/am/f$kth;->oif(Lcom/android/server/am/f$kth;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result p0

    return p0
.end method

.class public Lcom/oneplus/android/server/ssp/ssp$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/ssp/ssp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "you"
.end annotation


# instance fields
.field private rtg:J

.field private sis:Ljava/lang/String;

.field private tsu:J

.field private you:Ljava/lang/String;

.field private zta:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic bio(Lcom/oneplus/android/server/ssp/ssp$you;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->rtg:J

    return-wide v0
.end method

.method static synthetic cno(Lcom/oneplus/android/server/ssp/ssp$you;)J
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->tsu:J

    return-wide v0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/ssp/ssp$you;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/android/server/ssp/ssp$you;->rtg:J

    return-wide p1
.end method

.method static synthetic kth(Lcom/oneplus/android/server/ssp/ssp$you;J)J
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/android/server/ssp/ssp$you;->tsu:J

    return-wide p1
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/ssp/ssp$you;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->sis:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/ssp/ssp$you;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->you:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/ssp/ssp$you;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/ssp$you;->sis:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/ssp/ssp$you;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/ssp$you;->you:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic you(Lcom/oneplus/android/server/ssp/ssp$you;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/ssp/ssp$you;->zta:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/ssp/ssp$you;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->zta:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public wtn()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->zta:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->you:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->sis:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->tsu:J

    iput-wide v0, p0, Lcom/oneplus/android/server/ssp/ssp$you;->rtg:J

    return-void
.end method

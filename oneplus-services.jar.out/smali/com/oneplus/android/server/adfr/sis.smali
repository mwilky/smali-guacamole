.class public Lcom/oneplus/android/server/adfr/sis;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final cno:J = 0x10100L

.field private static final rtg:I = 0x4

.field static final sis:Ljava/lang/String; = "OPlusContentSample"

.field private static final ssp:J = 0x10100L

.field static final tsu:Z = false


# instance fields
.field private final you:Landroid/content/Context;

.field private zta:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/android/server/adfr/sis;->you:Landroid/content/Context;

    return-void
.end method

.method private bio(JJ)Landroid/hardware/display/DisplayedContentSample;
    .locals 6

    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v1, 0x0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSample(IJJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    return-object p0
.end method

.method private kth(Landroid/content/Context;)Z
    .locals 0

    const-class p0, Landroid/os/PowerManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    invoke-virtual {p0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result p0

    return p0
.end method

.method private ssp()Landroid/hardware/display/DisplayedContentSamplingAttributes;
    .locals 1

    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayedContentSamplingAttributes(I)Landroid/hardware/display/DisplayedContentSamplingAttributes;

    move-result-object p0

    return-object p0
.end method

.method private tsu(ZI)Z
    .locals 2

    const-class p0, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManagerInternal;

    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/hardware/display/DisplayManagerInternal;->setDisplayedContentSamplingEnabled(IZII)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cno()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/adfr/sis;->zta:Z

    return p0
.end method

.method public igw()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/adfr/sis;->zta:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/sis;->zta()V

    invoke-virtual {p0}, Lcom/oneplus/android/server/adfr/sis;->sis()V

    return-void
.end method

.method public rtg()[J
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/adfr/sis;->zta:Z

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x10100

    invoke-direct {p0, v0, v1, v0, v1}, Lcom/oneplus/android/server/adfr/sis;->bio(JJ)Landroid/hardware/display/DisplayedContentSample;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/hardware/display/DisplayedContentSample$ColorComponent;->CHANNEL2:Landroid/hardware/display/DisplayedContentSample$ColorComponent;

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayedContentSample;->getSampleComponent(Landroid/hardware/display/DisplayedContentSample$ColorComponent;)[J

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public sis()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/adfr/sis;->you:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/adfr/sis;->kth(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/adfr/sis;->zta:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/adfr/sis;->tsu(ZI)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/android/server/adfr/sis;->zta:Z

    return-void

    :cond_1
    :goto_0
    const-string p0, "OPlusContentSample"

    const-string v0, " enableColorSampling failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public you(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mColorSamplingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/adfr/sis;->zta:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public zta()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/adfr/sis;->zta:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/oneplus/android/server/adfr/sis;->tsu(ZI)Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/adfr/sis;->zta:Z

    return-void
.end method

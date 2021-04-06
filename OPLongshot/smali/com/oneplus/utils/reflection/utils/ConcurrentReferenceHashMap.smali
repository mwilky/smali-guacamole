.class public Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.super Ljava/util/AbstractMap;
.source ""

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$WeakEntryReference;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$SoftEntryReference;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntryIterator;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$a;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;,
        Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x10

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_LOAD_FACTOR:F = 0.75f

.field private static final DEFAULT_REFERENCE_TYPE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

.field private static final MAXIMUM_CONCURRENCY_LEVEL:I = 0x10000

.field private static final MAXIMUM_SEGMENT_SIZE:I = 0x40000000


# instance fields
.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final loadFactor:F

.field private final referenceType:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

.field private final segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.Segment;"
        }
    .end annotation
.end field

.field private final shift:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;->SOFT:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    sput-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->DEFAULT_REFERENCE_TYPE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->DEFAULT_REFERENCE_TYPE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    const/16 v1, 0x10

    const/high16 v2, 0x3f400000    # 0.75f

    invoke-direct {p0, v1, v2, v1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;-><init>(IFILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->DEFAULT_REFERENCE_TYPE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    const/high16 v1, 0x3f400000    # 0.75f

    const/16 v2, 0x10

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;-><init>(IFILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;)V

    return-void
.end method

.method public constructor <init>(IF)V
    .locals 2

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->DEFAULT_REFERENCE_TYPE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    const/16 v1, 0x10

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;-><init>(IFILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;)V

    return-void
.end method

.method public constructor <init>(IFI)V
    .locals 1

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->DEFAULT_REFERENCE_TYPE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;-><init>(IFILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;)V

    return-void
.end method

.method public constructor <init>(IFILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;)V
    .locals 4

    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const-string v3, "Initial capacity must not be negative"

    invoke-static {v2, v3}, Lcom/oneplus/utils/reflection/utils/a;->a(ZLjava/lang/String;)V

    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    const-string v3, "Load factor must be positive"

    invoke-static {v2, v3}, Lcom/oneplus/utils/reflection/utils/a;->a(ZLjava/lang/String;)V

    if-lez p3, :cond_2

    move v2, v1

    goto :goto_2

    :cond_2
    move v2, v0

    :goto_2
    const-string v3, "Concurrency level must be positive"

    invoke-static {v2, v3}, Lcom/oneplus/utils/reflection/utils/a;->a(ZLjava/lang/String;)V

    const-string v2, "Reference type must not be null"

    invoke-static {p4, v2}, Lcom/oneplus/utils/reflection/utils/a;->b(Ljava/lang/Object;Ljava/lang/String;)V

    iput p2, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->loadFactor:F

    const/high16 p2, 0x10000

    invoke-static {p3, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->calculateShift(II)I

    move-result p2

    iput p2, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->shift:I

    shl-int p2, v1, p2

    iput-object p4, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->referenceType:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    add-int/2addr p1, p2

    int-to-long p3, p1

    const-wide/16 v1, 0x1

    sub-long/2addr p3, v1

    int-to-long v1, p2

    div-long/2addr p3, v1

    long-to-int p1, p3

    const-class p3, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    iput-object p2, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    :goto_3
    iget-object p2, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    array-length p3, p2

    if-ge v0, p3, :cond_3

    new-instance p3, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    invoke-direct {p3, p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;I)V

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->DEFAULT_REFERENCE_TYPE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;-><init>(IFILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;)V

    return-void
.end method

.method public constructor <init>(ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;)V
    .locals 2

    const/high16 v0, 0x3f400000    # 0.75f

    const/16 v1, 0x10

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;-><init>(IFILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    return-object p0
.end method

.method static synthetic access$700(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->referenceType:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$ReferenceType;

    return-object p0
.end method

.method protected static calculateShift(II)I
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    if-ge v0, p1, :cond_0

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method private doTask(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.Task<TT;>;)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getSegmentForHash(I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->f(ILjava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private getSegmentForHash(I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.Segment;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    iget v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->shift:I

    rsub-int/lit8 v1, v1, 0x20

    ushr-int/2addr p1, v1

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    and-int/2addr p1, v1

    aget-object p1, v0, p1

    return-object p1
.end method

.method private put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;Z)TV;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_BEFORE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESIZE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p3, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;ZLjava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->doTask(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public clear()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->WHEN_NECESSARY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getReference(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/utils/reflection/utils/c;->e(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return p1
.end method

.method protected createReferenceManager()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.b;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;

    invoke-direct {v0, p0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;)V

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$EntrySet;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$1;)V

    iput-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->entrySet:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->WHEN_NECESSARY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getReference(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method protected getHash(Ljava/lang/Object;)I
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    :goto_0
    shl-int/lit8 v0, p1, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0xa

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x6

    xor-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x2

    shl-int/lit8 v1, p1, 0xe

    add-int/2addr v0, v1

    add-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x10

    xor-int/2addr p1, v0

    return p1
.end method

.method protected final getLoadFactor()F
    .locals 1

    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->loadFactor:F

    return v0
.end method

.method protected final getReference(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;",
            ")",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getHash(Ljava/lang/Object;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getSegmentForHash(I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->j(Ljava/lang/Object;ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    return-object p1
.end method

.method protected final getSegment(I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.Segment;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    aget-object p1, v0, p1

    return-object p1
.end method

.method protected final getSegmentsSize()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    array-length v0, v0

    return v0
.end method

.method public purgeUnreferencedEntries()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    invoke-virtual {v4, v2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->k(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$2;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$2;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)V

    invoke-direct {p0, p1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->doTask(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$3;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$3;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->doTask(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$5;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_BEFORE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$5;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->doTask(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    new-instance v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$4;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_BEFORE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$4;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->doTask(Ljava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public size()I
    .locals 5

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->segments:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->h()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

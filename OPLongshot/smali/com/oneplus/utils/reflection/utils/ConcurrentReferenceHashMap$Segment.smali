.class public final Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;
.super Ljava/util/concurrent/locks/ReentrantLock;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "Segment"
.end annotation


# instance fields
.field private final a:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.b;"
        }
    .end annotation
.end field

.field private final b:I

.field private volatile c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private volatile d:I

.field private e:I

.field final synthetic f:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;


# direct methods
.method public constructor <init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;I)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->f:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    invoke-virtual {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->createReferenceManager()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->a:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;

    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p2, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->calculateShift(II)I

    move-result p1

    const/4 p2, 0x1

    shl-int p1, p2, p1

    iput p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->b:I

    invoke-direct {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->e(I)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->l([Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)V

    return-void
.end method

.method static synthetic a(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->a:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;

    return-object p0
.end method

.method static synthetic b(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    return-object p0
.end method

.method static synthetic c(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    return v0
.end method

.method private e(I)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation

    const-class v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    return-object p1
.end method

.method private g(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Ljava/lang/Object;I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation

    :goto_0
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getHash()I

    move-result v0

    if-ne v0, p3, :cond_1

    invoke-interface {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-eq v0, p2, :cond_0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p1

    :cond_1
    invoke-interface {p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getNext()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method private i(I[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;)I"
        }
    .end annotation

    array-length p2, p2

    add-int/lit8 p2, p2, -0x1

    and-int/2addr p1, p2

    return p1
.end method

.method private l([Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    array-length p1, p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->f:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;

    invoke-virtual {v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap;->getLoadFactor()F

    move-result v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->e:I

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->b:I

    invoke-direct {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->e(I)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->l([Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method

.method public f(ILjava/lang/Object;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/lang/Object;",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap<",
            "TK;TV;>.Task<TT;>;)TT;"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESIZE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result v0

    sget-object v1, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_BEFORE:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->k(Z)V

    :cond_0
    sget-object v1, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->SKIP_IF_EMPTY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    if-nez v1, :cond_1

    invoke-virtual {p3, v2, v2, v2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$a;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->i(I[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)I

    move-result v8

    iget-object v1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    aget-object v7, v1, v8

    invoke-direct {p0, v7, p2, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->g(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Ljava/lang/Object;I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object v2

    :cond_2
    new-instance v9, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment$1;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p2

    move v6, p1

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment$1;-><init>(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;Ljava/lang/Object;ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;I)V

    invoke-virtual {p3, v1, v2, v9}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->execute(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$a;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object p2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->k(Z)V

    :cond_3
    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    sget-object p2, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;->RESTRUCTURE_AFTER:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;

    invoke-virtual {p3, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Task;->hasOption(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$TaskOption;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p0, v0}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->k(Z)V

    :cond_4
    throw p1
.end method

.method public final h()I
    .locals 1

    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    return v0
.end method

.method public j(Ljava/lang/Object;ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;",
            ")",
            "Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;->WHEN_NECESSARY:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Restructure;

    if-ne p3, v0, :cond_0

    const/4 p3, 0x0

    invoke-virtual {p0, p3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->k(Z)V

    :cond_0
    iget p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    iget-object p3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    invoke-direct {p0, p2, p3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->i(I[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)I

    move-result v0

    aget-object p3, p3, v0

    invoke-direct {p0, p3, p1, p2}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->g(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;Ljava/lang/Object;I)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    return-object p1
.end method

.method protected final k(Z)V
    .locals 11

    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    iget v3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->e:I

    if-lt v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->a:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;

    invoke-virtual {v3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;->b()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_b

    if-eqz p1, :cond_b

    :cond_1
    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    :try_start_0
    iget v0, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    if-eqz v3, :cond_2

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    :goto_1
    if-eqz v3, :cond_2

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->a:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;

    invoke-virtual {v3}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;->b()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v3

    goto :goto_1

    :cond_2
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v3

    sub-int/2addr v0, v3

    if-lez v0, :cond_3

    iget v3, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->e:I

    if-lt v0, v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iget-object v5, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    array-length v5, v5

    if-eqz p1, :cond_4

    if-eqz v3, :cond_4

    const/high16 p1, 0x40000000    # 2.0f

    if-ge v5, p1, :cond_4

    shl-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    move v1, v2

    :goto_3
    if-eqz v1, :cond_5

    invoke-direct {p0, v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->e(I)[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object p1

    goto :goto_4

    :cond_5
    iget-object p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    :goto_4
    move v3, v2

    :goto_5
    iget-object v5, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    array-length v5, v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->c:[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    aget-object v5, v5, v3

    if-nez v1, :cond_6

    const/4 v6, 0x0

    aput-object v6, p1, v3

    :cond_6
    :goto_6
    if-eqz v5, :cond_8

    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getHash()I

    move-result v6

    invoke-direct {p0, v6, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->i(I[Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)I

    move-result v6

    iget-object v7, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->a:Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;

    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->get()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;

    move-result-object v8

    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getHash()I

    move-result v9

    aget-object v10, p1, v6

    invoke-virtual {v7, v8, v9, v10}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$b;->a(Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Entry;ILcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v7

    aput-object v7, p1, v6

    :cond_7
    invoke-interface {v5}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;->getNext()Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;

    move-result-object v5

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    if-eqz v1, :cond_a

    invoke-direct {p0, p1}, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->l([Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Reference;)V

    :cond_a
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/utils/reflection/utils/ConcurrentReferenceHashMap$Segment;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_b
    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

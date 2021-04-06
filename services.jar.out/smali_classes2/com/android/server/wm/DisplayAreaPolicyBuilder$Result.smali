.class Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;
.super Lcom/android/server/wm/DisplayAreaPolicy;
.source "DisplayAreaPolicyBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicyBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Result"
.end annotation


# static fields
.field private static final LEAF_TYPE_IME_CONTAINERS:I = 0x2

.field private static final LEAF_TYPE_TASK_CONTAINERS:I = 0x1

.field private static final LEAF_TYPE_TOKENS:I


# instance fields
.field private final mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

.field private final mAreas:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mFeatures:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;"
        }
    .end annotation
.end field

.field private final mMaxWindowLayer:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/DisplayContent;",
            "Lcom/android/server/wm/DisplayArea$Root;",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ">;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wm/DisplayAreaPolicy;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy;->getMaxWindowLayer()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    new-array v0, v0, [Lcom/android/server/wm/DisplayArea$Tokens;

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    iput-object p6, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreas:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreas:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTaskDisplayAreasToLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mTaskDisplayAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p2, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    iget-object v3, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mTaskDisplayAreas:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayArea;

    iput-object v3, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    iput p2, v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    iget-object v3, p1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I
    .locals 2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/16 v1, 0x7db

    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x7dc

    invoke-interface {p0, v1}, Lcom/android/server/policy/WindowManagerPolicy;->getWindowLayerFromTypeLw(I)I

    move-result v1

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public addWindow(Lcom/android/server/wm/WindowToken;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayArea$Tokens;->addChild(Lcom/android/server/wm/WindowToken;)V

    return-void
.end method

.method public attachDisplayAreas()V
    .locals 11

    iget v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    new-array v0, v0, [Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    new-instance v1, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    iget v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    if-ge v7, v8, :cond_3

    iget-object v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mFeatures:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;

    invoke-static {v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;->access$100(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)[Z

    move-result-object v9

    aget-boolean v9, v9, v7

    if-eqz v9, :cond_2

    if-eqz v6, :cond_0

    iget-object v9, v6, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v10, v0, v7

    if-eq v9, v10, :cond_1

    :cond_0
    new-instance v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v10, v0, v7

    invoke-direct {v9, v8, v7, v10}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    move-object v6, v9

    aget-object v9, v0, v7

    iget-object v9, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    aput-object v6, v0, v7

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_3
    iget v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    if-ge v7, v8, :cond_8

    iget-object v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    invoke-static {v8, v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->typeOfLayer(Lcom/android/server/policy/WindowManagerPolicy;I)I

    move-result v8

    if-eqz v5, :cond_5

    iget-object v9, v5, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mParent:Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v10, v0, v7

    if-ne v9, v10, :cond_5

    if-eq v8, v6, :cond_7

    :cond_5
    new-instance v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;

    aget-object v10, v0, v7

    invoke-direct {v9, v2, v7, v10}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;-><init>(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;ILcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;)V

    move-object v5, v9

    aget-object v9, v0, v7

    iget-object v9, v9, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v6, v8

    const/4 v9, 0x1

    if-ne v6, v9, :cond_6

    aget-object v9, v0, v7

    invoke-direct {p0, v9, v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->addTaskDisplayAreasToLayer(Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;I)V

    goto :goto_4

    :cond_6
    const/4 v9, 0x2

    if-ne v6, v9, :cond_7

    iget-object v9, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mImeContainer:Lcom/android/server/wm/DisplayArea;

    iput-object v9, v5, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mExisting:Lcom/android/server/wm/DisplayArea;

    :cond_7
    :goto_4
    iput v7, v5, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->mMaxLayer:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->computeMaxLayer()I

    iget-object v2, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mRoot:Lcom/android/server/wm/DisplayArea$Root;

    iget-object v7, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    iget-object v8, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreas:Ljava/util/Map;

    invoke-virtual {v1, v2, v7, v3, v8}, Lcom/android/server/wm/DisplayAreaPolicyBuilder$PendingArea;->instantiateChildren(Lcom/android/server/wm/DisplayArea;[Lcom/android/server/wm/DisplayArea$Tokens;ILjava/util/Map;)V

    return-void
.end method

.method findAreaForToken(Lcom/android/server/wm/WindowToken;)Lcom/android/server/wm/DisplayArea$Tokens;
    .locals 2

    invoke-virtual {p1}, Lcom/android/server/wm/WindowToken;->getWindowLayerFromType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/policy/WindowManagerPolicy;->opAdjustLayerFromType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-boolean v1, p1, Lcom/android/server/wm/WindowToken;->mRoundedCornerOverlay:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mMaxWindowLayer:I

    add-int/lit8 v0, v1, -0x1

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreaForLayer:[Lcom/android/server/wm/DisplayArea$Tokens;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public getDisplayAreas(Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/DisplayAreaPolicyBuilder$Feature;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;->mAreas:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

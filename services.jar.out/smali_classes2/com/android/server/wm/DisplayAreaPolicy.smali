.class public abstract Lcom/android/server/wm/DisplayAreaPolicy;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayAreaPolicy$Provider;,
        Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;
    }
.end annotation


# instance fields
.field protected final mContent:Lcom/android/server/wm/DisplayContent;

.field protected final mImeContainer:Lcom/android/server/wm/DisplayArea;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRoot:Lcom/android/server/wm/DisplayArea$Root;

.field protected final mTaskDisplayAreas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/TaskDisplayArea;",
            ">;"
        }
    .end annotation
.end field

.field protected final mWmService:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method protected constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;)V
    .locals 0
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
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mContent:Lcom/android/server/wm/DisplayContent;

    iput-object p3, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mRoot:Lcom/android/server/wm/DisplayArea$Root;

    iput-object p4, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mImeContainer:Lcom/android/server/wm/DisplayArea;

    iput-object p5, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mTaskDisplayAreas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract addWindow(Lcom/android/server/wm/WindowToken;)V
.end method

.method public abstract attachDisplayAreas()V
.end method

.method public getTaskDisplayAreaAt(I)Lcom/android/server/wm/TaskDisplayArea;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mTaskDisplayAreas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method public getTaskDisplayAreaCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/DisplayAreaPolicy;->mTaskDisplayAreas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.class final Lcom/android/server/wm/DisplayAreaPolicy$DefaultProvider;
.super Ljava/lang/Object;
.source "DisplayAreaPolicy.java"

# interfaces
.implements Lcom/android/server/wm/DisplayAreaPolicy$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayAreaPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DefaultProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;)Lcom/android/server/wm/DisplayAreaPolicy;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowManagerService;",
            "Lcom/android/server/wm/DisplayContent;",
            "Lcom/android/server/wm/DisplayArea$Root;",
            "Lcom/android/server/wm/DisplayArea<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Lcom/android/server/wm/DisplayAreaPolicy;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/wm/TaskDisplayArea;

    const-string v1, "DefaultTaskDisplayArea"

    const/4 v2, 0x1

    invoke-direct {v0, p2, p1, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;-><init>(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/WindowManagerService;Ljava/lang/String;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/server/wm/DisplayAreaPolicyBuilder;

    invoke-direct {v2}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;-><init>()V

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/DisplayAreaPolicyBuilder;->build(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/DisplayArea$Root;Lcom/android/server/wm/DisplayArea;Ljava/util/List;)Lcom/android/server/wm/DisplayAreaPolicyBuilder$Result;

    move-result-object v2

    return-object v2
.end method

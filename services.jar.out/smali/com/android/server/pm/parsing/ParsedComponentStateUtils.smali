.class public Lcom/android/server/pm/parsing/ParsedComponentStateUtils;
.super Ljava/lang/Object;
.source "ParsedComponentStateUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNonLocalizedLabelAndIcon(Landroid/content/pm/parsing/component/ParsedComponent;Lcom/android/server/pm/PackageSetting;I)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/parsing/component/ParsedComponent;",
            "Lcom/android/server/pm/PackageSetting;",
            "I)",
            "Landroid/util/Pair<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getIcon()I

    move-result v1

    if-nez p1, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/pm/parsing/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageUserState;->getOverrideLabelIconForComponent(Landroid/content/ComponentName;)Landroid/util/Pair;

    move-result-object v2

    :goto_0
    nop

    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v3, :cond_1

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v0, v3

    check-cast v0, Ljava/lang/CharSequence;

    :cond_1
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

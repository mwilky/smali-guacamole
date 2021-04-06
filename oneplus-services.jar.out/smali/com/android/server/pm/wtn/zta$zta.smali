.class Lcom/android/server/pm/wtn/zta$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/wtn/zta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "zta"
.end annotation


# instance fields
.field rtg:Z

.field sis:Ljava/lang/String;

.field ssp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tsu:Z

.field you:Ljava/lang/String;

.field zta:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/wtn/zta$zta;->zta:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/wtn/zta$zta;->you:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/wtn/zta$zta;->sis:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/pm/wtn/zta$zta;->tsu:Z

    iput-boolean p1, p0, Lcom/android/server/pm/wtn/zta$zta;->rtg:Z

    iput-object p4, p0, Lcom/android/server/pm/wtn/zta$zta;->ssp:Ljava/util/ArrayList;

    if-eqz p4, :cond_1

    const-string p1, "middle_perm_group"

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lcom/android/server/pm/wtn/zta$zta;->rtg:Z

    :cond_0
    const-string p1, "low_perm_group"

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean p2, p0, Lcom/android/server/pm/wtn/zta$zta;->tsu:Z

    :cond_1
    return-void
.end method


# virtual methods
.method you(Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/pm/wtn/zta$zta;->tsu:Z

    return p0

    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/pm/wtn/zta$zta;->rtg:Z

    return p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/wtn/zta$zta;->ssp:Ljava/util/ArrayList;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/wtn/zta$zta;->zta:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/pm/wtn/zta$zta;->you:Ljava/lang/String;

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/wtn/zta$zta;->sis:Ljava/lang/String;

    invoke-static {p0, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.class public Lcom/android/server/pm/cno;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/pm/you;


# instance fields
.field private zta:Lcom/android/server/pm/ssp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/pm/ssp;->you()Lcom/android/server/pm/ssp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/cno;->zta:Lcom/android/server/pm/ssp;

    return-void
.end method


# virtual methods
.method public you(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/cno;->zta:Lcom/android/server/pm/ssp;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ssp;->sis(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public zta(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/pm/cno;->zta:Lcom/android/server/pm/ssp;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ssp;->zta(I)V

    return-void
.end method

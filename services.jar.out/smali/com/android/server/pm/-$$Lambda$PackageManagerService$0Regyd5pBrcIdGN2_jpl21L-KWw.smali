.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$0Regyd5pBrcIdGN2_jpl21L-KWw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$0Regyd5pBrcIdGN2_jpl21L-KWw;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$0Regyd5pBrcIdGN2_jpl21L-KWw;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$0Regyd5pBrcIdGN2_jpl21L-KWw;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$0Regyd5pBrcIdGN2_jpl21L-KWw;->f$1:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->lambda$updateDefaultHomeNotLocked$34$PackageManagerService(ILjava/lang/Boolean;)V

    return-void
.end method

.class public final synthetic Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/RootWindowContainer;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RootWindowContainer;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iput-object p2, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;->f$0:Lcom/android/server/wm/RootWindowContainer;

    iget-object v1, p0, Lcom/android/server/wm/-$$Lambda$RootWindowContainer$KzturB6hvWk0wP4LPBBNdJGd_iw;->f$1:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/RootWindowContainer;->lambda$closeSystemDialogActivities$11$RootWindowContainer(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

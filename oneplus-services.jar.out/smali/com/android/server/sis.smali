.class public final synthetic Lcom/android/server/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zta:Lcom/android/server/oxb;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/oxb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sis;->zta:Lcom/android/server/oxb;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/sis;->zta:Lcom/android/server/oxb;

    invoke-virtual {p0}, Lcom/android/server/oxb;->ear()V

    return-void
.end method

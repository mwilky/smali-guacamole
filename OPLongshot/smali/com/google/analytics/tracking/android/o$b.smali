.class Lcom/google/analytics/tracking/android/o$b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/analytics/tracking/android/o;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/o;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/o;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/o$b;->a:Lcom/google/analytics/tracking/android/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/google/analytics/tracking/android/o$b;->a:Lcom/google/analytics/tracking/android/o;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/o;->n(Lcom/google/analytics/tracking/android/o;)Lcom/google/analytics/tracking/android/z;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/analytics/tracking/android/z;->a()V

    return-void
.end method

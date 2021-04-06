.class Lcom/google/analytics/tracking/android/n$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/analytics/tracking/android/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/analytics/tracking/android/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/analytics/tracking/android/n;


# direct methods
.method constructor <init>(Lcom/google/analytics/tracking/android/n;)V
    .locals 0

    iput-object p1, p0, Lcom/google/analytics/tracking/android/n$a;->a:Lcom/google/analytics/tracking/android/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/analytics/tracking/android/n$a;->a:Lcom/google/analytics/tracking/android/n;

    invoke-static {v0}, Lcom/google/analytics/tracking/android/n;->c(Lcom/google/analytics/tracking/android/n;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/google/analytics/tracking/android/n;->o(ZZ)V

    return-void
.end method

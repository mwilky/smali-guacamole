.class public interface abstract Lcom/android/server/display/ScreenStateAnimator;
.super Ljava/lang/Object;
.source "ScreenStateAnimator.java"


# static fields
.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_SCALE_DOWN:I = 0x3

.field public static final MODE_WARM_UP:I


# virtual methods
.method public abstract dismiss()V
.end method

.method public dismissResources()V
    .locals 0

    return-void
.end method

.method public abstract draw(F)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract prepare(Landroid/content/Context;I)Z
.end method

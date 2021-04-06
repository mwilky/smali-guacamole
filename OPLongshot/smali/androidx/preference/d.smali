.class public Landroidx/preference/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/d$c;,
        Landroidx/preference/d$a;,
        Landroidx/preference/d$b;
    }
.end annotation


# virtual methods
.method public abstract a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/CharSequence;",
            ")TT;"
        }
    .end annotation
.end method

.method abstract b()Landroid/content/SharedPreferences$Editor;
.end method

.method abstract c()J
.end method

.method public abstract d()Landroidx/preference/d$a;
.end method

.method public abstract e()Landroidx/preference/d$b;
.end method

.method public abstract f()Landroidx/preference/d$c;
.end method

.method public abstract g()Landroidx/preference/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract h()Landroidx/preference/e;
.end method

.method public abstract i()Landroid/content/SharedPreferences;
.end method

.method abstract j()Z
.end method

.method public abstract k(Landroidx/preference/Preference;)V
.end method

.class public final Landroidx/preference/e;
.super Landroidx/preference/PreferenceGroup;
.source ""


# instance fields
.field private d:Z


# virtual methods
.method protected e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/preference/e;->d:Z

    return v0
.end method

.method protected onClick()V
    .locals 1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/PreferenceGroup;->d()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->getPreferenceManager()Landroidx/preference/d;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/preference/d;->d()Landroidx/preference/d$a;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/d$a;->a(Landroidx/preference/e;)V

    :cond_1
    :goto_0
    return-void
.end method

.class Landroidx/preference/PreferenceGroupAdapter$b;
.super Landroidx/recyclerview/widget/DiffUtil$a;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/preference/PreferenceGroupAdapter;->updatePreferences()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Landroidx/preference/d$c;


# direct methods
.method constructor <init>(Landroidx/preference/PreferenceGroupAdapter;Ljava/util/List;Ljava/util/List;Landroidx/preference/d$c;)V
    .locals 0

    iput-object p2, p0, Landroidx/preference/PreferenceGroupAdapter$b;->a:Ljava/util/List;

    iput-object p3, p0, Landroidx/preference/PreferenceGroupAdapter$b;->b:Ljava/util/List;

    iput-object p4, p0, Landroidx/preference/PreferenceGroupAdapter$b;->c:Landroidx/preference/d$c;

    invoke-direct {p0}, Landroidx/recyclerview/widget/DiffUtil$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$b;->c:Landroidx/preference/d$c;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$b;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    invoke-virtual {v0, p1, p2}, Landroidx/preference/d$c;->a(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public b(II)Z
    .locals 2

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$b;->c:Landroidx/preference/d$c;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/preference/Preference;

    iget-object v1, p0, Landroidx/preference/PreferenceGroupAdapter$b;->b:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/preference/Preference;

    invoke-virtual {v0, p1, p2}, Landroidx/preference/d$c;->b(Landroidx/preference/Preference;Landroidx/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Landroidx/preference/PreferenceGroupAdapter$b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
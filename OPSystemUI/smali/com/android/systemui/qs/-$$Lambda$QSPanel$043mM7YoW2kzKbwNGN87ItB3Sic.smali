.class public final synthetic Lcom/android/systemui/qs/-$$Lambda$QSPanel$043mM7YoW2kzKbwNGN87ItB3Sic;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/qs/QSPanel;

.field private final synthetic f$1:Lcom/android/systemui/plugins/qs/QSTile;

.field private final synthetic f$2:Lcom/android/systemui/plugins/qs/QSTileView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$043mM7YoW2kzKbwNGN87ItB3Sic;->f$0:Lcom/android/systemui/qs/QSPanel;

    iput-object p2, p0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$043mM7YoW2kzKbwNGN87ItB3Sic;->f$1:Lcom/android/systemui/plugins/qs/QSTile;

    iput-object p3, p0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$043mM7YoW2kzKbwNGN87ItB3Sic;->f$2:Lcom/android/systemui/plugins/qs/QSTileView;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$043mM7YoW2kzKbwNGN87ItB3Sic;->f$0:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$043mM7YoW2kzKbwNGN87ItB3Sic;->f$1:Lcom/android/systemui/plugins/qs/QSTile;

    iget-object p0, p0, Lcom/android/systemui/qs/-$$Lambda$QSPanel$043mM7YoW2kzKbwNGN87ItB3Sic;->f$2:Lcom/android/systemui/plugins/qs/QSTileView;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/systemui/qs/QSPanel;->lambda$configureTile$0$QSPanel(Lcom/android/systemui/plugins/qs/QSTile;Lcom/android/systemui/plugins/qs/QSTileView;Landroid/view/View;)V

    return-void
.end method

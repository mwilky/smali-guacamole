.class final Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ConversationNotifications.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1;->onNotificationRankingUpdated(Landroid/service/notification/NotificationListenerService$RankingMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lcom/android/internal/widget/ConversationLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/View;)Lcom/android/internal/widget/ConversationLayout;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    instance-of p0, p1, Lcom/android/internal/widget/ConversationLayout;

    if-nez p0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/android/internal/widget/ConversationLayout;

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager$1$onNotificationRankingUpdated$layouts$2;->invoke(Landroid/view/View;)Lcom/android/internal/widget/ConversationLayout;

    move-result-object p0

    return-object p0
.end method

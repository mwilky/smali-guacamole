.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$pzT62oocPlJK8m3BrYpDJvlljn0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$removeShortcutTargetForUnboundServiceLocked$19(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

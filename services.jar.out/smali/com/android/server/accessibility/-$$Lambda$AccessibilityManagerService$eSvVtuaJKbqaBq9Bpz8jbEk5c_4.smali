.class public final synthetic Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/function/TriConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4;

    invoke-direct {v0}, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4;-><init>()V

    sput-object v0, Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4;->INSTANCE:Lcom/android/server/accessibility/-$$Lambda$AccessibilityManagerService$eSvVtuaJKbqaBq9Bpz8jbEk5c_4;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/server/accessibility/AccessibilityManagerService;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    check-cast p3, Landroid/graphics/Region;

    invoke-static {p1, p2, p3}, Lcom/android/server/accessibility/AccessibilityManagerService;->lambda$eSvVtuaJKbqaBq9Bpz8jbEk5c_4(Lcom/android/server/accessibility/AccessibilityManagerService;ILandroid/graphics/Region;)V

    return-void
.end method

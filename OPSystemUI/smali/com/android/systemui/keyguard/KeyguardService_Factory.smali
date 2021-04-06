.class public final Lcom/android/systemui/keyguard/KeyguardService_Factory;
.super Ljava/lang/Object;
.source "KeyguardService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/keyguard/KeyguardService;",
        ">;"
    }
.end annotation


# instance fields
.field private final keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardViewMediatorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService_Factory;->keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardService_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardService_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService_Factory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/KeyguardService_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardService;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediator;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;",
            ">;)",
            "Lcom/android/systemui/keyguard/KeyguardService;"
        }
    .end annotation

    new-instance v0, Lcom/android/systemui/keyguard/KeyguardService;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/keyguard/KeyguardService;-><init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/keyguard/KeyguardLifecyclesDispatcher;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/keyguard/KeyguardService;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService_Factory;->keyguardViewMediatorProvider:Ljavax/inject/Provider;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService_Factory;->keyguardLifecyclesDispatcherProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/KeyguardService_Factory;->provideInstance(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/keyguard/KeyguardService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardService_Factory;->get()Lcom/android/systemui/keyguard/KeyguardService;

    move-result-object p0

    return-object p0
.end method

.class public final Lcom/android/systemui/util/FloatingContentCoordinator_Factory;
.super Ljava/lang/Object;
.source "FloatingContentCoordinator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/FloatingContentCoordinator;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/systemui/util/FloatingContentCoordinator_Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/util/FloatingContentCoordinator_Factory;

    invoke-direct {v0}, Lcom/android/systemui/util/FloatingContentCoordinator_Factory;-><init>()V

    sput-object v0, Lcom/android/systemui/util/FloatingContentCoordinator_Factory;->INSTANCE:Lcom/android/systemui/util/FloatingContentCoordinator_Factory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/android/systemui/util/FloatingContentCoordinator_Factory;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/FloatingContentCoordinator_Factory;->INSTANCE:Lcom/android/systemui/util/FloatingContentCoordinator_Factory;

    return-object v0
.end method

.method public static provideInstance()Lcom/android/systemui/util/FloatingContentCoordinator;
    .locals 1

    new-instance v0, Lcom/android/systemui/util/FloatingContentCoordinator;

    invoke-direct {v0}, Lcom/android/systemui/util/FloatingContentCoordinator;-><init>()V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/FloatingContentCoordinator;
    .locals 0

    invoke-static {}, Lcom/android/systemui/util/FloatingContentCoordinator_Factory;->provideInstance()Lcom/android/systemui/util/FloatingContentCoordinator;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/util/FloatingContentCoordinator_Factory;->get()Lcom/android/systemui/util/FloatingContentCoordinator;

    move-result-object p0

    return-object p0
.end method

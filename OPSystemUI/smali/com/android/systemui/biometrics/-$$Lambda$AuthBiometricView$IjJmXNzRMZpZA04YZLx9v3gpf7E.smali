.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IjJmXNzRMZpZA04YZLx9v3gpf7E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthBiometricView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IjJmXNzRMZpZA04YZLx9v3gpf7E;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$AuthBiometricView$IjJmXNzRMZpZA04YZLx9v3gpf7E;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->lambda$onError$8$AuthBiometricView()V

    return-void
.end method

.class Lcom/android/server/accessibility/gestures/GestureManifold;
.super Ljava/lang/Object;
.source "GestureManifold.java"

# interfaces
.implements Lcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/gestures/GestureManifold$Listener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "GestureManifold"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mGestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/gestures/GestureMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

.field private final mMultiFingerGestures:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/accessibility/gestures/GestureMatcher;",
            ">;"
        }
    .end annotation
.end field

.field mMultiFingerGesturesEnabled:Z

.field private mServiceHandlesDoubleTap:Z

.field private mState:Lcom/android/server/accessibility/gestures/TouchState;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/gestures/GestureManifold$Listener;Lcom/android/server/accessibility/gestures/TouchState;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    iput-object p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    iput-object p3, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    iput-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/MultiTap;

    const/4 v3, 0x2

    const/16 v4, 0x11

    invoke-direct {v2, p1, v3, v4, p0}, Lcom/android/server/accessibility/gestures/MultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/MultiTapAndHold;

    const/16 v5, 0x12

    invoke-direct {v2, p1, v3, v5, p0}, Lcom/android/server/accessibility/gestures/MultiTapAndHold;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;

    invoke-direct {v2, p1, v3, v4, p0}, Lcom/android/server/accessibility/gestures/SecondFingerMultiTap;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x1

    const/4 v5, 0x4

    invoke-direct {v2, p1, v4, v5, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v2, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v5, 0x3

    invoke-direct {v2, p1, v0, v5, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    invoke-direct {v1, p1, v3, v4, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v1, Lcom/android/server/accessibility/gestures/Swipe;

    invoke-direct {v1, p1, v5, v3, p0}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x0

    const/4 v5, 0x5

    move-object v1, v7

    move-object v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x2

    const/16 v5, 0x9

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x3

    const/16 v5, 0xa

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/16 v5, 0xb

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x3

    const/16 v5, 0xc

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x0

    const/4 v5, 0x6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/16 v5, 0x8

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x0

    const/16 v5, 0xf

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x1

    const/16 v5, 0x10

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x7

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x0

    const/16 v5, 0xd

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/Swipe;

    const/4 v4, 0x1

    const/16 v5, 0xe

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/Swipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x13

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    const/16 v5, 0x14

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x28

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x15

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/16 v5, 0x16

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    const/16 v5, 0x17

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x29

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x18

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/16 v5, 0x25

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    const/16 v5, 0x26

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/16 v5, 0x2a

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTapAndHold;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;

    iget-object v2, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mContext:Landroid/content/Context;

    const/4 v4, 0x3

    const/16 v5, 0x27

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerMultiTap;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x2

    const/16 v5, 0x1a

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x0

    const/16 v5, 0x1b

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x1

    const/16 v5, 0x1c

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x2

    const/16 v5, 0x19

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x3

    const/4 v4, 0x3

    const/16 v5, 0x1e

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x0

    const/16 v5, 0x1f

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x1

    const/16 v5, 0x20

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x2

    const/16 v5, 0x1d

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/16 v5, 0x22

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x0

    const/16 v5, 0x23

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x1

    const/16 v5, 0x24

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    new-instance v7, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;

    const/4 v4, 0x2

    const/16 v5, 0x21

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/accessibility/gestures/MultiFingerSwipe;-><init>(Landroid/content/Context;IIILcom/android/server/accessibility/gestures/GestureMatcher$StateChangeListener;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private onGestureCompleted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_2

    const/16 v0, 0x12

    if-eq p1, v0, :cond_0

    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(II)V

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(II)V

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    goto :goto_2

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz v0, :cond_3

    new-instance v0, Landroid/accessibilityservice/AccessibilityGestureEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDisplayId()I

    move-result v1

    invoke-direct {v0, p1, v1}, Landroid/accessibilityservice/AccessibilityGestureEvent;-><init>(II)V

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v1, v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCompleted(Landroid/accessibilityservice/AccessibilityGestureEvent;)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0, p2, p3, p4}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    nop

    :goto_2
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/GestureMatcher;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public isMultiFingerGesturesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    return v0
.end method

.method public isServiceHandlesDoubleTapEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    return v0
.end method

.method onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v0}, Lcom/android/server/accessibility/gestures/TouchState;->isClear()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {v2, p1, p2, p3}, Lcom/android/server/accessibility/gestures/GestureMatcher;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)I

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/server/accessibility/gestures/GestureManifold;->clear()V

    const/4 v0, 0x1

    return v0

    :cond_2
    goto :goto_1

    :cond_3
    return v1
.end method

.method public onStateChanged(IILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v0, 0x11

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureStarted()Z

    goto :goto_2

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureStarted()Z

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    invoke-direct {p0, p1, p3, p4, p5}, Lcom/android/server/accessibility/gestures/GestureManifold;->onGestureCompleted(ILandroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_2

    :cond_3
    const/4 v1, 0x3

    if-ne p2, v1, :cond_6

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mState:Lcom/android/server/accessibility/gestures/TouchState;

    invoke-virtual {v1}, Lcom/android/server/accessibility/gestures/TouchState;->isGestureDetecting()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/accessibility/gestures/GestureMatcher;

    invoke-virtual {v2}, Lcom/android/server/accessibility/gestures/GestureMatcher;->getState()I

    move-result v3

    if-ne v3, v0, :cond_4

    return-void

    :cond_4
    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mListener:Lcom/android/server/accessibility/gestures/GestureManifold$Listener;

    invoke-interface {v0, p3, p4, p5}, Lcom/android/server/accessibility/gestures/GestureManifold$Listener;->onGestureCancelled(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)Z

    :cond_6
    :goto_2
    return-void
.end method

.method public setMultiFingerGesturesEnabled(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGesturesEnabled:Z

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mGestures:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mMultiFingerGestures:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setServiceHandlesDoubleTap(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/gestures/GestureManifold;->mServiceHandlesDoubleTap:Z

    return-void
.end method

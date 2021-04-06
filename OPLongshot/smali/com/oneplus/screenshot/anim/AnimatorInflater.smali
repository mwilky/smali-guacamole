.class public Lcom/oneplus/screenshot/anim/AnimatorInflater;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final SEQUENTIALLY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AnimatorInflater"

.field private static final TARGET_ANIM_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TOGETHER:I = 0x0

.field private static final VALUE_TYPE_COLOR:I = 0x4

.field private static final VALUE_TYPE_CUSTOM:I = 0x5

.field private static final VALUE_TYPE_FLOAT:I = 0x0

.field private static final VALUE_TYPE_INT:I = 0x1

.field private static final VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "alpha"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleX"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "scaleY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V
    .locals 10

    if-nez p2, :cond_0

    const-string p0, "AnimatorInflater"

    const-string p1, "addTarget anim is null, turn"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/screenshot/R$styleable;->Target:[I

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->getLoader()Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_6

    new-instance v1, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v1}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    new-instance v2, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v2}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    new-instance v3, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;

    invoke-direct {v3}, Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;-><init>()V

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_5

    invoke-virtual {p1, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v7

    if-eqz v7, :cond_4

    const-string v8, "visibility"

    const/4 v9, 0x1

    if-eq v7, v9, :cond_3

    const/4 v9, 0x3

    if-eq v7, v9, :cond_4

    const/4 v9, 0x4

    if-eq v7, v9, :cond_4

    const/4 v9, 0x5

    if-eq v7, v9, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    const/16 v9, 0x8

    invoke-virtual {p1, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v7, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    invoke-static {p0, v8}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v8

    sget-object v9, Lcom/oneplus/screenshot/anim/AnimatorInflater;->TARGET_ANIM_MAP:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_5
    invoke-virtual {p2, v0, v1}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropAnimator(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    invoke-virtual {p2, v0, v2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropStart(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    invoke-virtual {p2, v0, v3}, Lcom/oneplus/screenshot/anim/TargetAnimator;->addPropEnd(Landroid/view/View;Lcom/oneplus/screenshot/anim/TargetAnimator$TargetProp;)V

    :cond_6
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 6

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private static createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;
    .locals 14

    move-object v6, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    const/4 v10, 0x0

    move-object v0, v10

    move-object v11, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v9, :cond_9

    :cond_1
    const/4 v2, 0x1

    if-eq v1, v2, :cond_9

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    move-object/from16 v2, p2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "objectAnimator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {p0, v7}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_1
    move-object/from16 v2, p2

    goto :goto_2

    :cond_3
    const-string v2, "animator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0, v7, v10}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v2, "set"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v12, Landroid/animation/AnimatorSet;

    invoke-direct {v12}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v0, Lcom/oneplus/screenshot/R$styleable;->androidx_animation_AnimatorSet:[I

    invoke-virtual {p0, v7, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v13

    invoke-virtual {v13, v3, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object v4, v12

    invoke-static/range {v0 .. v5}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;Landroid/util/AttributeSet;Landroid/animation/AnimatorSet;I)Landroid/animation/Animator;

    invoke-virtual {v13}, Landroid/content/res/TypedArray;->recycle()V

    move-object v0, v12

    goto :goto_2

    :cond_5
    const-string v2, "targetAnimator"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v2, p2

    invoke-static {p0, v7, v2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object v0

    :goto_2
    if-eqz v8, :cond_0

    if-nez v11, :cond_6

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    move-object/from16 v2, p2

    const-string v3, "target"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move-object v1, v0

    check-cast v1, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-static {p0, v7, v1}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->addTarget(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator;)V

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown animator name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    if-eqz v8, :cond_c

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/Animator;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Animator;

    add-int/lit8 v5, v3, 0x1

    aput-object v4, v1, v3

    move v3, v5

    goto :goto_3

    :cond_a
    if-nez p5, :cond_b

    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_4

    :cond_b
    invoke-virtual {v8, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    :cond_c
    :goto_4
    return-object v0
.end method

.method private static createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-class p1, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-virtual {p0, p1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Class;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oneplus/screenshot/anim/TargetAnimator;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassCastException;->printStackTrace()V

    :goto_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance p0, Lcom/oneplus/screenshot/anim/TargetAnimator;

    invoke-direct {p0}, Lcom/oneplus/screenshot/anim/TargetAnimator;-><init>()V

    :goto_1
    if-eqz p0, :cond_1

    invoke-virtual {p0, p2}, Lcom/oneplus/screenshot/anim/TargetAnimator;->setLoader(Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)V

    goto :goto_2

    :cond_1
    const-string p1, "AnimatorInflater"

    const-string p2, "createTargetAnimator anim is null, don\'t setLoader"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-object p0
.end method

.method public static loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method public static loadAnimator(Landroid/content/Context;ILcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;
    .locals 3

    const-string v0, "Can\'t load animation resource ID #0x"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    invoke-static {p0, v1, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createAnimatorFromXml(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Landroid/animation/Animator;

    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2

    :catch_1
    move-exception p0

    new-instance p2, Landroid/content/res/Resources$NotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw p0
.end method

.method private static loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 17

    move-object/from16 v0, p0

    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->androidx_animation_Animator:[I

    move-object/from16 v2, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    int-to-long v3, v3

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    int-to-long v7, v7

    const/4 v9, 0x7

    invoke-virtual {v1, v9, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    if-nez p2, :cond_0

    new-instance v10, Landroid/animation/ValueAnimator;

    invoke-direct {v10}, Landroid/animation/ValueAnimator;-><init>()V

    goto :goto_0

    :cond_0
    move-object/from16 v10, p2

    :goto_0
    const/4 v11, 0x6

    if-nez v9, :cond_1

    move v9, v2

    goto :goto_1

    :cond_1
    move v9, v6

    :goto_1
    const/4 v12, 0x5

    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    if-eqz v13, :cond_2

    move v14, v2

    goto :goto_2

    :cond_2
    move v14, v6

    :goto_2
    if-eqz v14, :cond_3

    iget v13, v13, Landroid/util/TypedValue;->type:I

    goto :goto_3

    :cond_3
    move v13, v6

    :goto_3
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v15

    if-eqz v15, :cond_4

    move/from16 v16, v2

    goto :goto_4

    :cond_4
    move/from16 v16, v6

    :goto_4
    if-eqz v16, :cond_5

    iget v15, v15, Landroid/util/TypedValue;->type:I

    goto :goto_5

    :cond_5
    move v15, v6

    :goto_5
    const/16 v2, 0x1f

    const/16 v6, 0x1c

    if-eqz v14, :cond_6

    if-lt v13, v6, :cond_6

    if-le v13, v2, :cond_7

    :cond_6
    if-eqz v16, :cond_8

    if-lt v15, v6, :cond_8

    if-gt v15, v2, :cond_8

    :cond_7
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v10, v9}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    const/4 v9, 0x0

    :cond_8
    const/4 v2, 0x0

    if-eqz v9, :cond_e

    if-eqz v14, :cond_c

    if-ne v13, v12, :cond_9

    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v6

    goto :goto_6

    :cond_9
    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    :goto_6
    if-eqz v16, :cond_b

    if-ne v15, v12, :cond_a

    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_7

    :cond_a
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_7
    new-array v5, v5, [F

    const/4 v9, 0x0

    aput v6, v5, v9

    const/4 v13, 0x1

    aput v2, v5, v13

    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_b
    const/4 v9, 0x0

    const/4 v13, 0x1

    new-array v2, v13, [F

    aput v6, v2, v9

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_c
    const/4 v9, 0x0

    const/4 v13, 0x1

    if-ne v15, v12, :cond_d

    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    goto :goto_8

    :cond_d
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    :goto_8
    new-array v5, v13, [F

    aput v2, v5, v9

    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    goto/16 :goto_d

    :cond_e
    const/4 v9, 0x0

    if-eqz v14, :cond_14

    if-ne v13, v12, :cond_f

    invoke-virtual {v1, v12, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v13

    float-to-int v13, v13

    goto :goto_9

    :cond_f
    if-lt v13, v6, :cond_10

    const/16 v14, 0x1f

    if-gt v13, v14, :cond_10

    invoke-virtual {v1, v12, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v13

    goto :goto_9

    :cond_10
    invoke-virtual {v1, v12, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v13

    :goto_9
    if-eqz v16, :cond_13

    if-ne v15, v12, :cond_11

    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    goto :goto_a

    :cond_11
    if-lt v15, v6, :cond_12

    const/16 v2, 0x1f

    if-gt v15, v2, :cond_12

    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_a

    :cond_12
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    :goto_a
    new-array v5, v5, [I

    aput v13, v5, v9

    const/4 v6, 0x1

    aput v2, v5, v6

    invoke-virtual {v10, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_d

    :cond_13
    const/4 v6, 0x1

    new-array v2, v6, [I

    aput v13, v2, v9

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto :goto_d

    :cond_14
    if-eqz v16, :cond_17

    if-ne v15, v12, :cond_15

    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    :goto_b
    const/4 v5, 0x1

    goto :goto_c

    :cond_15
    if-lt v15, v6, :cond_16

    const/16 v2, 0x1f

    if-gt v15, v2, :cond_16

    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    goto :goto_b

    :cond_16
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    goto :goto_b

    :goto_c
    new-array v6, v5, [I

    aput v2, v6, v9

    invoke-virtual {v10, v6}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    :cond_17
    :goto_d
    invoke-virtual {v10, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v10, v7, v8}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    :cond_18
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {v10, v2}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    :cond_19
    invoke-virtual {v1, v9, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    if-lez v2, :cond_1a

    invoke-static {v0, v2}, Lcom/oneplus/screenshot/anim/InterpolatorUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v10
.end method

.method private static loadObjectAnimator(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/animation/ObjectAnimator;
    .locals 2

    new-instance v0, Landroid/animation/ObjectAnimator;

    invoke-direct {v0}, Landroid/animation/ObjectAnimator;-><init>()V

    invoke-static {p0, p1, v0}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/oneplus/screenshot/R$styleable;->PropertyAnimator:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->setPropertyName(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static loadTargetAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;
    .locals 2

    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p1, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->createTargetAnimator(Landroid/content/Context;Ljava/lang/String;Lcom/oneplus/screenshot/anim/TargetAnimator$ViewLoader;)Lcom/oneplus/screenshot/anim/TargetAnimator;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/oneplus/screenshot/anim/AnimatorInflater;->loadAnimator(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-object p2
.end method

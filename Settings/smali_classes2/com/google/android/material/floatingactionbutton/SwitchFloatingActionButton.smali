.class public Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;
.super Landroid/widget/RelativeLayout;
.source "SwitchFloatingActionButton.java"


# static fields
.field private static final FOCUSED_ENABLED_STATE_SET:[I


# instance fields
.field mCardViewOutlineProvider:Landroid/view/ViewOutlineProvider;

.field private mIsSwitchState:Z

.field private mNormalImageView:Landroid/widget/ImageView;

.field private mSwitchImageView:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const/4 v1, 0x0

    const v2, 0x3ecccccd    # 0.4f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->FOCUSED_ENABLED_STATE_SET:[I

    return-void

    :array_0
    .array-data 4
        0x101009c
        0x101009e
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/google/android/material/R$attr;->switchFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton$1;-><init>(Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;)V

    iput-object v0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mCardViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mIsSwitchState:Z

    sget-object v0, Lcom/google/android/material/R$styleable;->switchFloatingActionButton:[I

    sget v1, Lcom/google/android/material/R$style;->Widget_Design_SwitchFloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/google/android/material/R$dimen;->op_float_action_button_shadow_z8:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    sget v0, Lcom/google/android/material/R$styleable;->switchFloatingActionButton_tintColor:I

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/android/material/R$drawable;->switch_floating_action_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setElevation(F)V

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mCardViewOutlineProvider:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, p3}, Landroid/widget/RelativeLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const-string p3, "layout_inflater"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    sget p3, Lcom/google/android/material/R$layout;->float_switch_button:I

    invoke-virtual {p1, p3, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget p1, Lcom/google/android/material/R$id;->normal_imageview:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    sget p1, Lcom/google/android/material/R$styleable;->switchFloatingActionButton_image:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget p1, Lcom/google/android/material/R$id;->switch_imageview:I

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private setPressedTranslationZ(F)V
    .locals 7

    new-instance v0, Landroid/animation/StateListAnimator;

    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    sget-object v1, Landroid/widget/RelativeLayout;->PRESSED_ENABLED_STATE_SET:[I

    const/4 v2, 0x1

    new-array v3, v2, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const-string v6, "translationZ"

    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    invoke-virtual {v0, v1, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object v1, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->FOCUSED_ENABLED_STATE_SET:[I

    new-array v3, v2, [F

    aput v5, v3, v4

    invoke-static {p0, v6, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    invoke-virtual {v0, v1, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    sget-object v1, Landroid/widget/RelativeLayout;->EMPTY_STATE_SET:[I

    new-array v2, v2, [F

    aput p1, v2, v4

    invoke-static {p0, v6, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;

    invoke-virtual {v0, v1, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    return-void
.end method

.method private setupAnimator(Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 2

    const-wide/16 v0, 0x4b

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-object p1
.end method


# virtual methods
.method public setImageResource(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setNormalImageView(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setNormalImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setOpTintColor(I)V
    .locals 3

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$drawable;->switch_floating_action_button:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    new-instance p1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v1, v0, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPivotType(I)V
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setPivotY(F)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setPivotX(F)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSwitchImageView(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mIsSwitchState:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setSwitchImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean p1, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mIsSwitchState:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object p1, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/SwitchFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    return-void
.end method

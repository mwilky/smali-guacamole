.class final Lcom/android/server/display/ElectronBeam;
.super Ljava/lang/Object;
.source "ElectronBeam.java"

# interfaces
.implements Lcom/android/server/display/ScreenStateAnimator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEJANK_FRAMES:I = 0x3

.field private static final ELECTRON_BEAM_LAYER:I = 0x40000001

.field private static final HSTRETCH_DURATION:F = 0.5f

.field public static final MODE_COOL_DOWN:I = 0x1

.field public static final MODE_FADE:I = 0x2

.field public static final MODE_SCALE_DOWN:I = 0x3

.field public static final MODE_WARM_UP:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ElectronBeam"

.field private static final VSTRETCH_DURATION:F = 0.5f


# instance fields
.field private mDisplayHeight:I

.field private mDisplayId:I

.field private mDisplayLayerStack:I

.field private final mDisplayManager:Landroid/hardware/display/DisplayManagerInternal;

.field private mDisplayWidth:I

.field private mEglConfig:Landroid/opengl/EGLConfig;

.field private mEglContext:Landroid/opengl/EGLContext;

.field private mEglDisplay:Landroid/opengl/EGLDisplay;

.field private mEglSurface:Landroid/opengl/EGLSurface;

.field private mMode:I

.field private mPrepared:Z

.field private mSurface:Landroid/view/Surface;

.field private mSurfaceAlpha:F

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

.field private mSurfaceSession:Landroid/view/SurfaceSession;

.field private mSurfaceVisible:Z

.field private final mTexCoordBuffer:Ljava/nio/FloatBuffer;

.field private final mTexMatrix:[F

.field private final mTexNames:[I

.field private mTexNamesGenerated:Z

.field private final mVertexBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexMatrix:[F

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    iput p1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayId:I

    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    iput-object p1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayManager:Landroid/hardware/display/DisplayManagerInternal;

    return-void
.end method

.method private attachEglContext()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    invoke-static {v2, v0, v0, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "eglMakeCurrent"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private captureScreenshotTextureAndSetViewport()Z
    .locals 9

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->attachEglContext()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES10;->glGenTextures(I[II)V

    const-string v0, "glGenTextures"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    nop

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    return v1

    :cond_1
    :try_start_1
    iput-boolean v2, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    :cond_2
    new-instance v0, Landroid/graphics/SurfaceTexture;

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    aget v3, v3, v1

    invoke-direct {v0, v3}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    new-instance v3, Landroid/view/Surface;

    invoke-direct {v3, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Landroid/view/SurfaceControl;->getInternalDisplayToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/view/SurfaceControl;->screenshot(Landroid/os/IBinder;Landroid/view/Surface;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    nop

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mTexMatrix:[F

    invoke-virtual {v0, v3}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, v2, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x5

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x6

    invoke-virtual {v0, v4, v5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x7

    invoke-virtual {v0, v4, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-static {v1, v1, v0, v3}, Landroid/opengl/GLES10;->glViewport(IIII)V

    const/16 v0, 0x1701

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v4, v0

    const/4 v5, 0x0

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v6, v0

    const/4 v7, 0x0

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static/range {v3 .. v8}, Landroid/opengl/GLES10;->glOrthof(FFFFFF)V

    const/16 v0, 0x1700

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    const/16 v0, 0x1702

    invoke-static {v0}, Landroid/opengl/GLES10;->glMatrixMode(I)V

    invoke-static {}, Landroid/opengl/GLES10;->glLoadIdentity()V

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mTexMatrix:[F

    invoke-static {v0, v1}, Landroid/opengl/GLES10;->glLoadMatrixf([FI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    nop

    return v2

    :catchall_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3}, Landroid/view/Surface;->release()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    throw v0
.end method

.method private static checkGlErrors(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static checkGlErrors(Ljava/lang/String;Z)Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Landroid/opengl/GLES10;->glGetError()I

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed: error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "ElectronBeam"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private createEglContext()Z
    .locals 11

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/opengl/EGL14;->eglGetDisplay(I)Landroid/opengl/EGLDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_DISPLAY:Landroid/opengl/EGLDisplay;

    if-ne v0, v3, :cond_0

    const-string v0, "eglGetDisplay"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v3, v0, v2, v0, v1}, Landroid/opengl/EGL14;->eglInitialize(Landroid/opengl/EGLDisplay;[II[II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const-string v0, "eglInitialize"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    if-nez v0, :cond_3

    const/16 v0, 0x9

    new-array v4, v0, [I

    fill-array-data v4, :array_0

    new-array v9, v1, [I

    new-array v0, v1, [Landroid/opengl/EGLConfig;

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    const/4 v5, 0x0

    const/4 v7, 0x0

    array-length v8, v0

    const/4 v10, 0x0

    move-object v6, v0

    invoke-static/range {v3 .. v10}, Landroid/opengl/EGL14;->eglChooseConfig(Landroid/opengl/EGLDisplay;[II[Landroid/opengl/EGLConfig;II[II)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v0, "eglChooseConfig"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    return v2

    :cond_2
    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    :cond_3
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    new-array v0, v1, [I

    const/16 v3, 0x3038

    aput v3, v0, v2

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    sget-object v5, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v3, v4, v5, v0, v2}, Landroid/opengl/EGL14;->eglCreateContext(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Landroid/opengl/EGLContext;[II)Landroid/opengl/EGLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglContext:Landroid/opengl/EGLContext;

    if-nez v0, :cond_4

    const-string v0, "eglCreateContext"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    return v2

    :cond_4
    return v1

    nop

    :array_0
    .array-data 4
        0x3024
        0x8
        0x3023
        0x8
        0x3022
        0x8
        0x3021
        0x8
        0x3038
    .end array-data
.end method

.method private createEglSurface()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-array v0, v1, [I

    const/16 v2, 0x3038

    const/4 v3, 0x0

    aput v2, v0, v3

    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mEglConfig:Landroid/opengl/EGLConfig;

    iget-object v5, p0, Lcom/android/server/display/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-static {v2, v4, v5, v0, v3}, Landroid/opengl/EGL14;->eglCreateWindowSurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLConfig;Ljava/lang/Object;[II)Landroid/opengl/EGLSurface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-nez v0, :cond_0

    const-string v0, "eglCreateWindowSurface"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    return v3

    :cond_0
    return v1
.end method

.method private static createNativeFloatBuffer(I)Ljava/nio/FloatBuffer;
    .locals 1

    mul-int/lit8 p0, p0, 0x4

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p0

    return-object p0
.end method

.method private createSurface()Z
    .locals 6

    const-string v0, "ElectronBeam"

    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    if-nez v1, :cond_0

    new-instance v1, Landroid/view/SurfaceSession;

    invoke-direct {v1}, Landroid/view/SurfaceSession;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v1, :cond_2

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    :try_start_0
    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const v2, 0x20004

    goto :goto_0

    :cond_1
    const/16 v2, 0x404

    :goto_0
    new-instance v3, Landroid/view/SurfaceControl$Builder;

    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceSession:Landroid/view/SurfaceSession;

    invoke-direct {v3, v4}, Landroid/view/SurfaceControl$Builder;-><init>(Landroid/view/SurfaceSession;)V

    invoke-virtual {v3, v2}, Landroid/view/SurfaceControl$Builder;->setFlags(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Landroid/view/SurfaceControl$Builder;->setFormat(I)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v2

    iget v4, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    iget v5, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v2, v4, v5}, Landroid/view/SurfaceControl$Builder;->setBufferSize(II)Landroid/view/SurfaceControl$Builder;

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v1, v0, v2}, Landroid/view/SurfaceControl$Transaction;->setLayerStack(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurface:Landroid/view/Surface;

    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v2}, Landroid/view/Surface;->copyFrom(Landroid/view/SurfaceControl;)V

    new-instance v0, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mDisplayManager:Landroid/hardware/display/DisplayManagerInternal;

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayId:I

    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;-><init>(Landroid/hardware/display/DisplayManagerInternal;ILandroid/view/SurfaceControl;)V

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0, v1}, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->onDisplayTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "Unable to create surface."

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->close()V

    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x1

    return v0
.end method

.method private destroyEglSurface()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    invoke-static {v1, v0}, Landroid/opengl/EGL14;->eglDestroySurface(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eglDestroySurface"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->logEglError(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    :cond_1
    return-void
.end method

.method private destroyScreenshotTexture()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mTexNamesGenerated:Z

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->attachEglContext()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    invoke-static {v1, v2, v0}, Landroid/opengl/GLES10;->glDeleteTextures(I[II)V

    const-string v0, "glDeleteTextures"

    invoke-static {v0}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    throw v0

    :cond_0
    :goto_0
    return-void
.end method

.method private destroySurface()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    invoke-virtual {v0}, Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceLayout:Lcom/android/server/display/ElectronBeam$NaturalSurfaceLayout;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mSurface:Landroid/view/Surface;

    invoke-virtual {v1}, Landroid/view/Surface;->release()V

    iput-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceVisible:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceAlpha:F

    :cond_0
    return-void
.end method

.method private detachEglContext()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    if-eqz v0, :cond_0

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v2, Landroid/opengl/EGL14;->EGL_NO_SURFACE:Landroid/opengl/EGLSurface;

    sget-object v3, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/EGL14;->eglMakeCurrent(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;Landroid/opengl/EGLSurface;Landroid/opengl/EGLContext;)Z

    :cond_0
    return-void
.end method

.method private drawHStretch(F)V
    .locals 6

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_0

    const/4 p1, 0x2

    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/4 v4, 0x0

    invoke-static {p1, v2, v4, v3}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const p1, 0x8074

    invoke-static {p1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    iget-object v2, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v3, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v3, v3

    iget v5, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v5, v5

    invoke-static {v2, v3, v5, v0}, Lcom/android/server/display/ElectronBeam;->setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v0, v2

    sub-float v0, v1, v0

    invoke-static {v0, v0, v0, v1}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    const/4 v0, 0x6

    const/4 v1, 0x4

    invoke-static {v0, v4, v1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    invoke-static {p1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    :cond_0
    return-void
.end method

.method private drawScaled(F)V
    .locals 11

    const/high16 v0, 0x41000000    # 8.0f

    invoke-static {p1, v0}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result p1

    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES10;->glEnable(I)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    iget-object v1, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v2, 0x1406

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v3, v2, v4, v1}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v1, 0x8074

    invoke-static {v1}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    const/16 v5, 0xde1

    invoke-static {v5}, Landroid/opengl/GLES10;->glDisable(I)V

    const v5, 0x8d65

    invoke-static {v5}, Landroid/opengl/GLES10;->glEnable(I)V

    iget-object v6, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    aget v6, v6, v4

    invoke-static {v5, v6}, Landroid/opengl/GLES10;->glBindTexture(II)V

    nop

    iget v6, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-nez v6, :cond_0

    const/16 v6, 0x2100

    goto :goto_0

    :cond_0
    const/16 v6, 0x1e01

    :goto_0
    const/16 v7, 0x2300

    const/16 v8, 0x2200

    invoke-static {v7, v8, v6}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    const/16 v6, 0x2800

    const/16 v7, 0x2601

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v6, 0x2801

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v6, 0x2802

    const v7, 0x812f

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v6, 0x2803

    invoke-static {v5, v6, v7}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    invoke-static {v5}, Landroid/opengl/GLES10;->glEnable(I)V

    iget-object v6, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v3, v2, v4, v6}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const v2, 0x8078

    invoke-static {v2}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    iget-object v3, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v6, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    div-int/lit8 v7, v6, 0x2

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float/2addr v8, p1

    mul-float/2addr v7, v8

    iget v9, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    div-int/lit8 v10, v9, 0x2

    int-to-float v10, v10

    mul-float/2addr v10, v8

    int-to-float v6, v6

    mul-float/2addr v6, p1

    int-to-float v9, v9

    mul-float/2addr v9, p1

    invoke-static {v3, v7, v10, v6, v9}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    const/4 p1, 0x4

    const/4 v3, 0x6

    invoke-static {v3, v4, p1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    invoke-static {v5}, Landroid/opengl/GLES10;->glDisable(I)V

    invoke-static {v2}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    const/4 v2, 0x1

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    const/4 v2, 0x0

    invoke-static {v2, v2, v2, v8}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    invoke-static {v3, v4, p1}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    invoke-static {v1}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    invoke-static {v0}, Landroid/opengl/GLES10;->glDisable(I)V

    return-void
.end method

.method private drawVStretch(F)V
    .locals 12

    const/high16 v0, 0x40f00000    # 7.5f

    invoke-static {p1, v0}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v0

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {p1, v1}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result v1

    const/high16 v2, 0x41080000    # 8.5f

    invoke-static {p1, v2}, Lcom/android/server/display/ElectronBeam;->scurve(FF)F

    move-result p1

    const/4 v2, 0x1

    invoke-static {v2, v2}, Landroid/opengl/GLES10;->glBlendFunc(II)V

    const/16 v3, 0xbe2

    invoke-static {v3}, Landroid/opengl/GLES10;->glEnable(I)V

    iget-object v4, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    const/16 v5, 0x1406

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static {v6, v5, v7, v4}, Landroid/opengl/GLES10;->glVertexPointer(IIILjava/nio/Buffer;)V

    const v4, 0x8074

    invoke-static {v4}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    const/16 v8, 0xde1

    invoke-static {v8}, Landroid/opengl/GLES10;->glDisable(I)V

    const v8, 0x8d65

    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    iget-object v9, p0, Lcom/android/server/display/ElectronBeam;->mTexNames:[I

    aget v9, v9, v7

    invoke-static {v8, v9}, Landroid/opengl/GLES10;->glBindTexture(II)V

    nop

    iget v9, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-nez v9, :cond_0

    const/16 v9, 0x2100

    goto :goto_0

    :cond_0
    const/16 v9, 0x1e01

    :goto_0
    const/16 v10, 0x2300

    const/16 v11, 0x2200

    invoke-static {v10, v11, v9}, Landroid/opengl/GLES10;->glTexEnvx(III)V

    const/16 v9, 0x2800

    const/16 v10, 0x2601

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v9, 0x2801

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v9, 0x2802

    const v10, 0x812f

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    const/16 v9, 0x2803

    invoke-static {v8, v9, v10}, Landroid/opengl/GLES10;->glTexParameterx(III)V

    invoke-static {v8}, Landroid/opengl/GLES10;->glEnable(I)V

    iget-object v9, p0, Lcom/android/server/display/ElectronBeam;->mTexCoordBuffer:Ljava/nio/FloatBuffer;

    invoke-static {v6, v5, v7, v9}, Landroid/opengl/GLES10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    const v5, 0x8078

    invoke-static {v5}, Landroid/opengl/GLES10;->glEnableClientState(I)V

    iget-object v6, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v9, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v9, v9

    iget v10, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v10, v10

    invoke-static {v6, v9, v10, v0}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    invoke-static {v2, v7, v7, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    const/4 v0, 0x4

    const/4 v6, 0x6

    invoke-static {v6, v7, v0}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    iget-object v9, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v10, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v11, v11

    invoke-static {v9, v10, v11, v1}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    invoke-static {v7, v2, v7, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    invoke-static {v6, v7, v0}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    iget-object v9, p0, Lcom/android/server/display/ElectronBeam;->mVertexBuffer:Ljava/nio/FloatBuffer;

    iget v10, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    int-to-float v10, v10

    iget v11, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    int-to-float v11, v11

    invoke-static {v9, v10, v11, p1}, Lcom/android/server/display/ElectronBeam;->setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V

    invoke-static {v7, v7, v2, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    invoke-static {v6, v7, v0}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    invoke-static {v8}, Landroid/opengl/GLES10;->glDisable(I)V

    invoke-static {v5}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    invoke-static {v2, v2, v2, v2}, Landroid/opengl/GLES10;->glColorMask(ZZZZ)V

    iget p1, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-ne p1, v2, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {v1, v1, v1, p1}, Landroid/opengl/GLES10;->glColor4f(FFFF)V

    invoke-static {v6, v7, v0}, Landroid/opengl/GLES10;->glDrawArrays(III)V

    :cond_1
    invoke-static {v4}, Landroid/opengl/GLES10;->glDisableClientState(I)V

    invoke-static {v3}, Landroid/opengl/GLES10;->glDisable(I)V

    return-void
.end method

.method private static logEglError(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed: error "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/opengl/EGL14;->eglGetError()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    const-string v1, "ElectronBeam"

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private static scurve(FF)F
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p0, v0

    invoke-static {p0, p1}, Lcom/android/server/display/ElectronBeam;->sigmoid(FF)F

    move-result p0

    sub-float/2addr p0, v0

    invoke-static {v0, p1}, Lcom/android/server/display/ElectronBeam;->sigmoid(FF)F

    move-result p1

    sub-float/2addr p1, v0

    div-float/2addr p0, p1

    mul-float/2addr p0, v0

    add-float/2addr p0, v0

    return p0
.end method

.method private static setHStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 2

    const/high16 v0, 0x40000000    # 2.0f

    mul-float/2addr v0, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p3, v1, p3

    mul-float/2addr v0, p3

    sub-float/2addr p1, v0

    const/high16 p3, 0x3f000000    # 0.5f

    mul-float/2addr p1, p3

    sub-float/2addr p2, v1

    mul-float/2addr p2, p3

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    return-void
.end method

.method private static setQuad(Ljava/nio/FloatBuffer;FFFF)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-float/2addr p4, p2

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    add-float/2addr p1, p3

    const/4 p3, 0x4

    invoke-virtual {p0, p3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p3, 0x5

    invoke-virtual {p0, p3, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p3, 0x6

    invoke-virtual {p0, p3, p1}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    const/4 p1, 0x7

    invoke-virtual {p0, p1, p2}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method private static setVStretchQuad(Ljava/nio/FloatBuffer;FFF)V
    .locals 2

    mul-float v0, p1, p3

    add-float/2addr v0, p1

    mul-float/2addr p3, p2

    sub-float p3, p2, p3

    sub-float/2addr p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    sub-float/2addr p2, p3

    mul-float/2addr p2, v1

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/display/ElectronBeam;->setQuad(Ljava/nio/FloatBuffer;FFFF)V

    return-void
.end method

.method private showSurface(F)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceVisible:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/view/SurfaceControl;->openTransaction()V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    const v2, 0x40000001    # 2.0000002f

    invoke-virtual {v0, v2}, Landroid/view/SurfaceControl;->setLayer(I)V

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    nop

    iput-boolean v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceVisible:Z

    iput p1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceAlpha:F

    :cond_1
    return v1

    :catchall_0
    move-exception p1

    invoke-static {}, Landroid/view/SurfaceControl;->closeTransaction()V

    throw p1
.end method

.method private static sigmoid(FF)F
    .locals 0

    neg-float p0, p0

    mul-float/2addr p0, p1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    double-to-float p0, p0

    const/high16 p1, 0x3f800000    # 1.0f

    add-float/2addr p0, p1

    div-float/2addr p1, p0

    return p1
.end method

.method private tryPrepare()Z
    .locals 4

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->createSurface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v0, v2, :cond_0

    return v3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->createEglContext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->createEglSurface()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->captureScreenshotTextureAndSetViewport()Z

    move-result v0

    if-eqz v0, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    nop

    :goto_0
    return v1

    :cond_2
    return v1
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->destroyScreenshotTexture()V

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->destroyEglSurface()V

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->destroySurface()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    return-void
.end method

.method public draw(F)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    if-ne v0, v2, :cond_1

    sub-float/2addr v3, p1

    invoke-direct {p0, v3}, Lcom/android/server/display/ElectronBeam;->showSurface(F)Z

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->attachEglContext()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    :try_start_0
    invoke-static {v0, v0, v0, v2}, Landroid/opengl/GLES10;->glClearColor(FFFF)V

    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES10;->glClear(I)V

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/display/ElectronBeam;->drawScaled(F)V

    goto :goto_1

    :cond_4
    :goto_0
    cmpg-float v0, p1, v2

    if-gez v0, :cond_5

    div-float/2addr p1, v2

    sub-float p1, v3, p1

    invoke-direct {p0, p1}, Lcom/android/server/display/ElectronBeam;->drawHStretch(F)V

    goto :goto_1

    :cond_5
    sub-float/2addr p1, v2

    div-float/2addr p1, v2

    sub-float p1, v3, p1

    invoke-direct {p0, p1}, Lcom/android/server/display/ElectronBeam;->drawVStretch(F)V

    :cond_6
    :goto_1
    const-string p1, "drawFrame"

    invoke-static {p1}, Lcom/android/server/display/ElectronBeam;->checkGlErrors(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_7

    nop

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    return v1

    :cond_7
    :try_start_1
    iget-object p1, p0, Lcom/android/server/display/ElectronBeam;->mEglDisplay:Landroid/opengl/EGLDisplay;

    iget-object v0, p0, Lcom/android/server/display/ElectronBeam;->mEglSurface:Landroid/opengl/EGLSurface;

    invoke-static {p1, v0}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    nop

    invoke-direct {p0, v3}, Lcom/android/server/display/ElectronBeam;->showSurface(F)Z

    move-result p1

    return p1

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->detachEglContext()V

    throw p1
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Electron Beam State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPrepared="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayLayerStack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mSurfaceAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/ElectronBeam;->mSurfaceAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public prepare(Landroid/content/Context;I)Z
    .locals 2

    iput p2, p0, Lcom/android/server/display/ElectronBeam;->mMode:I

    iget-object p1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayManager:Landroid/hardware/display/DisplayManagerInternal;

    iget v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayId:I

    invoke-virtual {p1, v0}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object p1

    iget v0, p1, Landroid/view/DisplayInfo;->layerStack:I

    iput v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayLayerStack:I

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/ElectronBeam;->mDisplayWidth:I

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/ElectronBeam;->mDisplayHeight:I

    invoke-direct {p0}, Lcom/android/server/display/ElectronBeam;->tryPrepare()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/ElectronBeam;->dismiss()V

    return v0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/display/ElectronBeam;->mPrepared:Z

    const/4 v1, 0x3

    if-eq p2, p1, :cond_1

    if-ne p2, v1, :cond_2

    :cond_1
    nop

    :goto_0
    if-ge v0, v1, :cond_2

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p2}, Lcom/android/server/display/ElectronBeam;->draw(F)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

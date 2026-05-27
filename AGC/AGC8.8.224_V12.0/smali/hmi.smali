.class public final Lhmi;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field final b:I

.field final c:I

.field public final d:Ljvs;

.field public final e:Lily;

.field final f:I

.field final g:I

.field public final h:Ldhi;

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:Ljava/lang/Float;

.field public n:I

.field public o:Z

.field private final p:I

.field private q:I

.field private r:I

.field private s:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/taxi/MacroFocusFramesProcessor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhmi;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljvs;Lily;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhmi;->d:Ljvs;

    iput-object p2, p0, Lhmi;->e:Lily;

    iput-object p3, p0, Lhmi;->h:Ldhi;

    sget-object p1, Ldho;->Q:Ldhk;

    invoke-interface {p3, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    const/16 p2, 0x1e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lhmi;->b:I

    sget-object p1, Ldho;->R:Ldhk;

    invoke-interface {p3, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lhmi;->c:I

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lhmi;->m:Ljava/lang/Float;

    sget-object p1, Ldho;->P:Ldhk;

    invoke-interface {p3, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    const/16 p2, 0xf

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lhmi;->p:I

    sget-object p1, Ldho;->cd:Ldhj;

    invoke-interface {p3, p1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    sget-object p1, Ldho;->T:Ldhk;

    invoke-interface {p3, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lhmi;->f:I

    sget-object p1, Ldho;->U:Ldhk;

    invoke-interface {p3, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lhmi;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-boolean v0, p0, Lhmi;->l:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lhmi;->l:Z

    iput v0, p0, Lhmi;->i:I

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lhmi;->q:I

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lhmi;->r:I

    return-void
.end method

.method public final d(Lkou;I)Z
    .locals 4

    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, p1

    iget p1, p0, Lhmi;->p:I

    int-to-float p1, p1

    const/16 v2, 0xf

    const/4 v3, 0x1

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_1

    iget p1, p0, Lhmi;->q:I

    add-int/2addr p1, v3

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lhmi;->q:I

    invoke-virtual {p0}, Lhmi;->c()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lhmi;->r:I

    add-int/2addr p1, v3

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lhmi;->r:I

    invoke-virtual {p0}, Lhmi;->b()V

    :goto_0
    iget p1, p0, Lhmi;->q:I

    if-lt p1, p2, :cond_2

    iput-boolean v3, p0, Lhmi;->s:Z

    return v3

    :cond_2
    iget p1, p0, Lhmi;->r:I

    if-lt p1, v2, :cond_3

    iput-boolean v0, p0, Lhmi;->s:Z

    return v0

    :cond_3
    iget-boolean p1, p0, Lhmi;->s:Z

    return p1
.end method

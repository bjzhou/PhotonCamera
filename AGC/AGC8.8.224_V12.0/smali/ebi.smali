.class public final Lebi;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ldhi;

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:Z

.field public final g:F

.field public final h:Z

.field public final i:Lj$/util/Optional;

.field public final j:Ldin;


# direct methods
.method public constructor <init>(Ldne;Ldhi;Ldin;[B[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lebi;->a:Ldhi;

    iput-object p3, p0, Lebi;->j:Ldin;

    sget-object p3, Ldhq;->d:Ldhk;

    invoke-interface {p2, p3}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p3

    invoke-virtual {p3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-interface {p2}, Ldhi;->c()V

    const/4 p4, 0x1

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p1}, Ldne;->h()Z

    move-result p4

    invoke-virtual {p1}, Ldne;->h()Z

    move-result p5

    invoke-virtual {p1}, Ldne;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    sget-object v0, Ldhw;->x:Ldhj;

    invoke-interface {p2, v0}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/2addr p4, p3

    add-int/2addr p5, p3

    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lebi;->b:I

    invoke-virtual {p1}, Ldne;->h()Z

    move-result p5

    if-eqz p5, :cond_0

    sub-int p5, p4, p3

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    iput p5, p0, Lebi;->d:I

    invoke-virtual {p1}, Ldne;->h()Z

    move-result p1

    if-eqz p1, :cond_1

    sub-int v1, p4, p3

    goto :goto_1

    :cond_1
    :goto_1
    iput v1, p0, Lebi;->e:I

    goto :goto_3

    :cond_2
    add-int/2addr p4, p3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p4

    iput p4, p0, Lebi;->b:I

    invoke-virtual {p1}, Ldne;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    sub-int/2addr p4, p3

    goto :goto_2

    :cond_3
    const/4 p4, 0x0

    :goto_2
    iput p4, p0, Lebi;->d:I

    iput v1, p0, Lebi;->e:I

    :goto_3
    iget p1, p0, Lebi;->b:I

    int-to-float p1, p1

    sget-object p3, Ldhq;->ab:Ldhj;

    invoke-interface {p2, p3}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object p3

    invoke-virtual {p3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    mul-float p1, p1, p3

    float-to-int p1, p1

    iput p1, p0, Lebi;->c:I

    sget-object p1, Ldhq;->z:Ldhj;

    invoke-interface {p2, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lebi;->f:Z

    invoke-interface {p2}, Ldhi;->e()V

    invoke-interface {p2}, Ldhi;->d()V

    sget-object p1, Ldhh;->a:Ldhj;

    invoke-interface {p2, p1}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lebi;->g:F

    sget-object p1, Ldhu;->i:Ldhj;

    invoke-interface {p2, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lebi;->h:Z

    invoke-interface {p2}, Ldhi;->f()V

    sget-object p1, Ldhu;->b:Ldhk;

    invoke-interface {p2, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lebi;->i:Lj$/util/Optional;

    invoke-interface {p2}, Ldhi;->c()V

    return-void
.end method

.method static a(Lebh;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lebh;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const-string p0, ""

    return-object p0

    :pswitch_0
    const-string p0, "h"

    return-object p0

    :pswitch_1
    const-string p0, "r"

    return-object p0

    :pswitch_2
    const-string p0, "y"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final b()Z
    .locals 2

    iget-object v0, p0, Lebi;->j:Ldin;

    sget-object v1, Ldin;->c:Ldin;

    invoke-virtual {v0, v1}, Ldin;->b(Ldin;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lebi;->a:Ldhi;

    sget-object v1, Ldhq;->H:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lebi;->a:Ldhi;

    sget-object v1, Ldhq;->I:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lebi;->a:Ldhi;

    sget-object v1, Ldhq;->H:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lebi;->a:Ldhi;

    sget-object v1, Ldhq;->I:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0

    :cond_2
    :goto_0
    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Lebi;->a:Ldhi;

    sget-object v1, Ldhq;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->d()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/dev/adsprpc-smd"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d(Lj$/time/Duration;)Z
    .locals 4

    iget-boolean v0, p0, Lebi;->h:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    iget-object p1, p0, Lebi;->a:Ldhi;

    sget-object v2, Ldhu;->a:Ldhk;

    invoke-interface {p1, v2}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e(Lcks;)Z
    .locals 3

    iget-object v0, p0, Lebi;->a:Ldhi;

    sget-object v1, Ldhq;->V:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iget-boolean v1, p0, Lebi;->h:Z

    sget-object v2, Lcks;->a:Lcks;

    invoke-virtual {p1, v2}, Lcks;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    return v0
.end method

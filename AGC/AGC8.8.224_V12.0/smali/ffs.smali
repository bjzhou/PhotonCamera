.class public final Lffs;
.super Ljava/lang/Object;

# interfaces
.implements Lfav;
.implements Lfat;
.implements Lfaz;


# instance fields
.field public volatile a:I

.field private final b:Lfez;

.field private final c:Ljwb;

.field private final d:Ldhi;


# direct methods
.method public constructor <init>(Lfez;Ljwb;Ldhi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lffs;->b:Lfez;

    const/4 p1, 0x1

    iput p1, p0, Lffs;->a:I

    iput-object p2, p0, Lffs;->c:Ljwb;

    iput-object p3, p0, Lffs;->d:Ldhi;

    new-instance p1, Leus;

    const/16 p3, 0xe

    invoke-direct {p1, p0, p3}, Leus;-><init>(Lffs;I)V

    sget-object p3, Lnnv;->a:Lnnv;

    invoke-interface {p2, p1, p3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-virtual {p0}, Lffs;->d()Z

    move-result v0

    iget-object v1, p0, Lffs;->b:Lfez;

    invoke-interface {v1, v0}, Lfez;->f(Z)V

    if-eqz v0, :cond_1

    iget v0, p0, Lffs;->a:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    iget v1, p0, Lffs;->a:I

    packed-switch v1, :pswitch_data_1

    const-string v1, "null"

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lffs;->b:Lfez;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lfez;->h(I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lffs;->b:Lfez;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lfez;->h(I)V

    return-void

    :pswitch_2
    const-string v1, "MICROVIDEO_MODE_ON"

    goto :goto_0

    :pswitch_3
    const-string v1, "MICROVIDEO_MODE_AUTO"

    goto :goto_0

    :pswitch_4
    const-string v1, "MICROVIDEO_MODE_OFF"

    :goto_0
    const-string v2, "Unknown enabled microvideo mode: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    throw v0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public final bM()V
    .locals 2

    iget-object v0, p0, Lffs;->b:Lfez;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lfez;->f(Z)V

    iget-object v0, p0, Lffs;->b:Lfez;

    invoke-interface {v0, p0}, Lfez;->j(Lffs;)V

    return-void
.end method

.method public final bN()V
    .locals 1

    iget-object v0, p0, Lffs;->b:Lfez;

    invoke-interface {v0, p0}, Lfez;->i(Lffs;)V

    invoke-virtual {p0}, Lffs;->a()V

    return-void
.end method

.method public final d()Z
    .locals 4

    iget-object v0, p0, Lffs;->c:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    iget v1, p0, Lffs;->a:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    sget-object v1, Lika;->b:Lika;

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_2
    iget-object v0, p0, Lffs;->d:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, p0, Lffs;->d:Ldhi;

    invoke-interface {v0}, Ldhi;->f()V

    return v3
.end method

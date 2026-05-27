.class public final Lfry;
.super Ljava/lang/Object;

# interfaces
.implements Lfsm;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;

.field private final synthetic e:I

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lkaq;Ldhi;Lfqp;Lfpl;Lfpg;Lgue;I[B)V
    .locals 0

    iput p7, p0, Lfry;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p7, "SwitcherHdrPlus"

    invoke-interface {p1, p7}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lfry;->f:Ljava/lang/Object;

    iput-object p2, p0, Lfry;->g:Ljava/lang/Object;

    iput-object p3, p0, Lfry;->a:Ljava/lang/Object;

    iput-object p4, p0, Lfry;->b:Ljava/lang/Object;

    iput-object p5, p0, Lfry;->c:Ljava/lang/Object;

    iput-object p6, p0, Lfry;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lknq;Lfsm;I)V
    .locals 3

    iput p3, p0, Lfry;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lfry;->g:Ljava/lang/Object;

    const/4 p2, 0x0

    new-array p3, p2, [Lknh;

    const-string v0, "/gca/moments/hdr_launch_count"

    invoke-virtual {p1, v0, p3}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p3

    iput-object p3, p0, Lfry;->f:Ljava/lang/Object;

    const/4 p3, 0x1

    new-array v0, p3, [Lknh;

    const-string v1, "result"

    invoke-static {v1}, Lknh;->b(Ljava/lang/String;)Lknh;

    move-result-object v2

    aput-object v2, v0, p2

    const-string v2, "/gca/moments/hdr_finish_count"

    invoke-virtual {p1, v2, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object v0

    iput-object v0, p0, Lfry;->d:Ljava/lang/Object;

    new-array v0, p2, [Lknh;

    const-string v2, "/gca/moments/hdr_images_closed_count"

    invoke-virtual {p1, v2, v0}, Lknq;->b(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object v0

    iput-object v0, p0, Lfry;->b:Ljava/lang/Object;

    new-array p3, p3, [Lknh;

    invoke-static {v1}, Lknh;->b(Ljava/lang/String;)Lknh;

    move-result-object v0

    aput-object v0, p3, p2

    const-string v0, "/gca/moments/hdr_processing_time_ms"

    invoke-virtual {p1, v0, p3}, Lknq;->c(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p3

    iput-object p3, p0, Lfry;->c:Ljava/lang/Object;

    new-array p2, p2, [Lknh;

    const-string p3, "/gca/moments/hdr_result_open_ms"

    invoke-virtual {p1, p3, p2}, Lknq;->c(Ljava/lang/String;[Lknh;)Lkte;

    move-result-object p1

    iput-object p1, p0, Lfry;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 3

    iget v0, p0, Lfry;->e:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfry;->g:Ljava/lang/Object;

    invoke-interface {v0}, Lfsm;->a()I

    return v1

    :pswitch_0
    iget-object v0, p0, Lfry;->g:Ljava/lang/Object;

    sget-object v2, Ldhw;->s:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lkeb;Lgue;)Z
    .locals 0

    iget p1, p0, Lfry;->e:I

    const/4 p2, 0x1

    return p2
.end method

.method public final c(Lkeb;Lfte;Lnom;Lfsl;)V
    .locals 8

    iget v0, p0, Lfry;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v6, p0, Lfry;->g:Ljava/lang/Object;

    new-instance v7, Lfpa;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lfpa;-><init>(Lfry;JLfsl;[B)V

    invoke-interface {v6, p1, p2, p3, v7}, Lfsm;->c(Lkeb;Lfte;Lnom;Lfsl;)V

    iget-object p1, p0, Lfry;->f:Ljava/lang/Object;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    check-cast p1, Lkte;

    invoke-virtual {p1, p2}, Lkte;->d([Ljava/lang/Object;)V

    return-void

    :pswitch_0
    iget-boolean v0, p2, Lfte;->i:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfry;->g:Ljava/lang/Object;

    sget-object v1, Ldhw;->Z:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfry;->g:Ljava/lang/Object;

    sget-object v1, Ldhv;->m:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfry;->c:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfry;->g:Ljava/lang/Object;

    sget-object v1, Ldhw;->s:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lfry;->b:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfry;->a:Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lfry;->d:Ljava/lang/Object;

    check-cast v1, Lgue;

    invoke-interface {v0, p1, v1}, Lfsm;->b(Lkeb;Lgue;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lfry;->a:Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lfry;->g:Ljava/lang/Object;

    sget-object v2, Ldhw;->s:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfry;->g:Ljava/lang/Object;

    sget-object v2, Ldhw;->W:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lfry;->a:Ljava/lang/Object;

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p4}, Lfsl;->a()V

    return-void

    :cond_4
    :goto_1
    iget-object v1, p0, Lfry;->d:Ljava/lang/Object;

    check-cast v1, Lgue;

    invoke-interface {v0, p1, v1}, Lfsm;->b(Lkeb;Lgue;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lfry;->f:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Processing frames with "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->b(Ljava/lang/String;)V

    invoke-interface {v0, p1, p2, p3, p4}, Lfsm;->c(Lkeb;Lfte;Lnom;Lfsl;)V

    return-void

    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Cannot find an HdrPlusLauncher to process frame "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "!"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

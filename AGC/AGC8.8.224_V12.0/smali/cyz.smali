.class public final Lcyz;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcyz;->a:Loiw;

    iput-object p2, p0, Lcyz;->b:Loiw;

    iput-object p3, p0, Lcyz;->c:Loiw;

    iput-object p4, p0, Lcyz;->d:Loiw;

    iput-object p5, p0, Lcyz;->e:Loiw;

    iput-object p6, p0, Lcyz;->f:Loiw;

    iput-object p7, p0, Lcyz;->g:Loiw;

    iput-object p8, p0, Lcyz;->h:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lmqp;
    .locals 2

    iget-object v0, p0, Lcyz;->a:Loiw;

    check-cast v0, Ljzo;

    invoke-virtual {v0}, Ljzo;->a()Lklj;

    iget-object v0, p0, Lcyz;->b:Loiw;

    check-cast v0, Lfmj;

    invoke-virtual {v0}, Lfmj;->a()Lkli;

    iget-object v0, p0, Lcyz;->c:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lcyz;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljvs;

    iget-object v1, p0, Lcyz;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwb;

    iget-object v1, p0, Lcyz;->f:Loiw;

    check-cast v1, Lgca;

    invoke-virtual {v1}, Lgca;->a()Ljvs;

    iget-object v1, p0, Lcyz;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljwb;

    iget-object v1, p0, Lcyz;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldbf;

    sget-object v1, Ldho;->cc:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ldhi;->e()V

    :cond_0
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcyz;->a()Lmqp;

    move-result-object v0

    return-object v0
.end method

.class public final Lcvh;
.super Ljava/lang/Object;

# interfaces
.implements Lcqv;


# instance fields
.field public a:Lika;

.field private final b:Lcvl;

.field private final c:Lcvk;

.field private final d:Lcvi;

.field private final e:Lcvl;

.field private final f:Lcvl;


# direct methods
.method public constructor <init>(Lcvl;Lcvl;Lcvk;Lcvi;Lcvl;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcvh;->b:Lcvl;

    iput-object p2, p0, Lcvh;->e:Lcvl;

    iput-object p3, p0, Lcvh;->c:Lcvk;

    iput-object p4, p0, Lcvh;->d:Lcvi;

    iput-object p5, p0, Lcvh;->f:Lcvl;

    return-void
.end method

.method private final q()Lcqv;
    .locals 1

    sget-object v0, Lika;->a:Lika;

    iget-object v0, p0, Lcvh;->a:Lika;

    invoke-virtual {v0}, Lika;->ordinal()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lcvh;->b:Lcvl;

    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcvh;->f:Lcvl;

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lcvh;->d:Lcvi;

    return-object v0

    :sswitch_2
    iget-object v0, p0, Lcvh;->c:Lcvk;

    return-object v0

    :sswitch_3
    iget-object v0, p0, Lcvh;->e:Lcvl;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_3
        0x8 -> :sswitch_2
        0xd -> :sswitch_1
        0x13 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public final a()Lika;
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->a()Lika;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lmqp;
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->b()Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final c()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->c()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->d()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->e()Z

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->f()Z

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->g()Z

    move-result v0

    return v0
.end method

.method public final h()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->h()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->i()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->j()Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->k()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->l()Z

    move-result v0

    return v0
.end method

.method public final m()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->m()Z

    move-result v0

    return v0
.end method

.method public final n()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->n()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->o()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    invoke-direct {p0}, Lcvh;->q()Lcqv;

    move-result-object v0

    invoke-interface {v0}, Lcqv;->p()Z

    move-result v0

    return v0
.end method

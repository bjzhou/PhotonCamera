.class public final Ldxn;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldxn;->a:Loiw;

    iput-object p2, p0, Ldxn;->b:Loiw;

    iput-object p3, p0, Ldxn;->c:Loiw;

    iput-object p4, p0, Ldxn;->d:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;)Ldxn;
    .locals 1

    new-instance v0, Ldxn;

    invoke-direct {v0, p0, p1, p2, p3}, Ldxn;-><init>(Loiw;Loiw;Loiw;Loiw;)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Boolean;
    .locals 6

    iget-object v0, p0, Ldxn;->a:Loiw;

    check-cast v0, Ldmf;

    invoke-virtual {v0}, Ldmf;->a()Ldne;

    move-result-object v0

    iget-object v1, p0, Ldxn;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    iget-object v2, p0, Ldxn;->c:Loiw;

    check-cast v2, Lfwg;

    invoke-virtual {v2}, Lfwg;->a()Llpg;

    move-result-object v2

    iget-object v3, p0, Ldxn;->d:Loiw;

    check-cast v3, Lfwo;

    invoke-virtual {v3}, Lfwo;->a()Lfuz;

    move-result-object v3

    sget-object v4, Ldho;->a:Ldhk;

    invoke-interface {v1}, Ldhi;->c()V

    invoke-virtual {v0}, Ldne;->g()Z

    move-result v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, v2, Llpg;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Ldih;->b:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->k(Ldhj;)Z

    move-result v1

    invoke-static {}, Lcom/agc/AdvancedSettings;->getTrackFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v3}, Lklw;->k()Lklv;

    move-result-object v1

    sget-object v2, Lklv;->b:Lklv;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v0, :cond_3

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ldxn;->b()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

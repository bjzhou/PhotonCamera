.class public final Lhnm;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Lhnm;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhnm;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lhnc;
    .locals 6

    iget v0, p0, Lhnm;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lhnc;->a()Ljdc;

    move-result-object v0

    sget-object v1, Lhna;->e:Lhna;

    invoke-virtual {v0, v1}, Ljdc;->c(Lhna;)V

    sget-object v1, Lhna;->f:Lhna;

    invoke-virtual {v0, v1}, Ljdc;->d(Lhna;)V

    invoke-virtual {v0}, Ljdc;->b()Lhnc;

    move-result-object v0

    iget-object v1, p0, Lhnm;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    invoke-static {}, Lhnc;->a()Ljdc;

    move-result-object v2

    sget-object v3, Lhnb;->b:Ljava/util/Map;

    sget-object v4, Ldik;->p:Ldhk;

    invoke-interface {v1, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lhnc;->a:Lhna;

    invoke-static {v3, v4, v5}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhna;

    invoke-virtual {v2, v3}, Ljdc;->c(Lhna;)V

    sget-object v3, Lhnb;->b:Ljava/util/Map;

    sget-object v4, Ldik;->q:Ldhk;

    invoke-interface {v1, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lhnc;->b:Lhna;

    invoke-static {v3, v1, v0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhna;

    invoke-virtual {v2, v0}, Ljdc;->d(Lhna;)V

    invoke-virtual {v2}, Ljdc;->b()Lhnc;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-static {}, Lhnc;->a()Ljdc;

    move-result-object v0

    sget-object v1, Lhna;->f:Lhna;

    invoke-virtual {v0, v1}, Ljdc;->c(Lhna;)V

    sget-object v1, Lhna;->g:Lhna;

    invoke-virtual {v0, v1}, Ljdc;->d(Lhna;)V

    invoke-virtual {v0}, Ljdc;->b()Lhnc;

    move-result-object v0

    iget-object v1, p0, Lhnm;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldhi;

    invoke-static {}, Lhnc;->a()Ljdc;

    move-result-object v2

    sget-object v3, Lhnb;->b:Ljava/util/Map;

    sget-object v4, Ldik;->r:Ldhk;

    invoke-interface {v1, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    iget-object v5, v0, Lhnc;->a:Lhna;

    invoke-static {v3, v4, v5}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhna;

    invoke-virtual {v2, v3}, Ljdc;->c(Lhna;)V

    sget-object v3, Lhnb;->b:Ljava/util/Map;

    sget-object v4, Ldik;->s:Ldhk;

    invoke-interface {v1, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v0, v0, Lhnc;->b:Lhna;

    invoke-static {v3, v1, v0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhna;

    invoke-virtual {v2, v0}, Ljdc;->d(Lhna;)V

    invoke-virtual {v2}, Ljdc;->b()Lhnc;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lhnm;->b:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lhnm;->a()Lhnc;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lhnm;->a()Lhnc;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

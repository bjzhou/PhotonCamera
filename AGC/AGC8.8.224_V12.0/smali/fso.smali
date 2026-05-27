.class public final Lfso;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Loiw;Loiw;I)V
    .locals 0

    iput p3, p0, Lfso;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfso;->a:Loiw;

    iput-object p2, p0, Lfso;->b:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;)Lfso;
    .locals 2

    new-instance v0, Lfso;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfso;-><init>(Loiw;Loiw;I)V

    return-object v0
.end method


# virtual methods
.method public final b()Ljava/lang/Integer;
    .locals 4

    iget v0, p0, Lfso;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfso;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lfso;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgzi;

    const-string v2, "pref_mode_vesper_enabled"

    invoke-virtual {v1, v2}, Lgzi;->n(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1, v2}, Lgzi;->m(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lgyq;->b:Lgyq;

    iget v0, v0, Lgyq;->f:I

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lfso;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldhi;

    iget-object v1, p0, Lfso;->b:Loiw;

    check-cast v1, Lfsp;

    invoke-virtual {v1}, Lfsp;->a()Lfsi;

    move-result-object v1

    sget-object v2, Ldhw;->Y:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, v1, Lfsi;->a:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lgyq;->a:Lgyq;

    iget v0, v0, Lgyq;->f:I

    goto :goto_1

    :cond_2
    sget-object v1, Ldhc;->a:Ldhk;

    invoke-interface {v0, v1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

    iget v0, p0, Lfso;->c:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0}, Lfso;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lfso;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

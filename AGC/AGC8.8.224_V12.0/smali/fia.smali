.class public final synthetic Lfia;
.super Ljava/lang/Object;

# interfaces
.implements Lfhk;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lfhv;I)V
    .locals 0

    iput p2, p0, Lfia;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfia;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lfid;I)V
    .locals 0

    iput p2, p0, Lfia;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfia;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Llcd;Lldc;)V
    .locals 4

    iget v0, p0, Lfia;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lfia;->a:Ljava/lang/Object;

    check-cast v0, Lfhv;

    iget-object v0, v0, Lfhv;->b:Lldf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lfhv;->a:[F

    invoke-virtual {v0, p1, p2, v1}, Lldf;->f(Llcd;Lldc;[F)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lfia;->a:Ljava/lang/Object;

    check-cast v0, Lfid;

    iget-object v1, v0, Lfid;->t:Lguf;

    iget-object v2, v0, Lfid;->p:Llck;

    iget-object v3, v0, Lfid;->q:Lldh;

    iget-object v0, v0, Lfid;->g:Lfhl;

    invoke-interface {v0}, Lfhl;->e()[F

    move-result-object v0

    invoke-static {v3, v2}, Llby;->j(Lldh;Llck;)Llpu;

    move-result-object v2

    iget-object v1, v1, Lguf;->a:Ljava/lang/Object;

    check-cast v1, Lldc;

    invoke-virtual {v2, v1}, Llpu;->c(Lldc;)Llby;

    move-result-object v1

    const-string v2, "aPosition"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Llby;->a(Ljava/lang/String;I)V

    const-string v2, "aTexCoord"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Llby;->a(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Llby;->g([F)V

    invoke-virtual {v1, p1}, Llby;->b(Llcd;)V

    iput-boolean v3, v1, Llby;->j:Z

    invoke-virtual {v1, p2}, Llby;->k(Lldc;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

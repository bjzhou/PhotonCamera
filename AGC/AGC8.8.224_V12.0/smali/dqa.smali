.class public final synthetic Ldqa;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ldqj;

.field public final synthetic b:Z

.field public final synthetic c:Loiw;

.field public final synthetic d:Z

.field public final synthetic e:Loiw;

.field public final synthetic f:Ljava/lang/Object;

.field private final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ldqj;Ljwb;ZLoiw;ZLoiw;I)V
    .locals 0

    iput p7, p0, Ldqa;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqa;->a:Ldqj;

    iput-object p2, p0, Ldqa;->f:Ljava/lang/Object;

    iput-boolean p3, p0, Ldqa;->b:Z

    iput-object p4, p0, Ldqa;->c:Loiw;

    iput-boolean p5, p0, Ldqa;->d:Z

    iput-object p6, p0, Ldqa;->e:Loiw;

    return-void
.end method

.method public synthetic constructor <init>(Lfuz;Ldqj;ZLoiw;ZLoiw;I)V
    .locals 0

    iput p7, p0, Ldqa;->g:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldqa;->f:Ljava/lang/Object;

    iput-object p2, p0, Ldqa;->a:Ldqj;

    iput-boolean p3, p0, Ldqa;->b:Z

    iput-object p4, p0, Ldqa;->c:Loiw;

    iput-boolean p5, p0, Ldqa;->d:Z

    iput-object p6, p0, Ldqa;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Ldqa;->g:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldqa;->a:Ldqj;

    iget-object v1, p0, Ldqa;->f:Ljava/lang/Object;

    iget-boolean v2, p0, Ldqa;->b:Z

    iget-object v3, p0, Ldqa;->c:Loiw;

    iget-boolean v4, p0, Ldqa;->d:Z

    iget-object v5, p0, Ldqa;->e:Loiw;

    invoke-virtual {v0, v1}, Ldqj;->e(Ljwb;)V

    if-eqz v2, :cond_2

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqj;

    invoke-virtual {v0, v1}, Ldqj;->e(Ljwb;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Ldqa;->f:Ljava/lang/Object;

    iget-object v1, p0, Ldqa;->a:Ldqj;

    iget-boolean v2, p0, Ldqa;->b:Z

    iget-object v3, p0, Ldqa;->c:Loiw;

    iget-boolean v4, p0, Ldqa;->d:Z

    iget-object v5, p0, Ldqa;->e:Loiw;

    check-cast v0, Lklw;

    invoke-virtual {v0}, Lklw;->k()Lklv;

    move-result-object v0

    invoke-virtual {v1, v0}, Ldqj;->f(Lklv;)V

    if-eqz v2, :cond_0

    invoke-interface {v3}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqj;

    invoke-virtual {v1, v0}, Ldqj;->f(Lklv;)V

    :cond_0
    if-eqz v4, :cond_1

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldqj;

    invoke-virtual {v1, v0}, Ldqj;->f(Lklv;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    if-eqz v4, :cond_3

    invoke-interface {v5}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldqj;

    invoke-virtual {v0, v1}, Ldqj;->e(Ljwb;)V

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
